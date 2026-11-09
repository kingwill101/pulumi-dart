import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_args.dart';
import 'group_state.dart';

/// Manages a group in an AWS Directory Service directory.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// The following example assumes an existing Directory Service directory with Directory Service Data access enabled.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.directoryservicedata.Group("example", {
///     directoryId: "d-1234567890",
///     samAccountName: "examplegroup",
///     groupScope: "Global",
///     groupType: "Security",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directoryservicedata.Group("example",
///     directory_id="d-1234567890",
///     sam_account_name="examplegroup",
///     group_scope="Global",
///     group_type="Security")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DirectoryServiceData.Group("example", new()
///     {
///         DirectoryId = "d-1234567890",
///         SamAccountName = "examplegroup",
///         GroupScope = "Global",
///         GroupType = "Security",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directoryservicedata"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := directoryservicedata.NewGroup(ctx, "example", &directoryservicedata.GroupArgs{
/// 			DirectoryId:    pulumi.String("d-1234567890"),
/// 			SamAccountName: pulumi.String("examplegroup"),
/// 			GroupScope:     pulumi.String("Global"),
/// 			GroupType:      pulumi.String("Security"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_directoryservicedata_group" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   directory_id     = "d-1234567890"
///   sam_account_name = "examplegroup"
///   group_scope      = "Global"
///   group_type       = "Security"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.directoryservicedata.Group;
/// import com.pulumi.aws.directoryservicedata.GroupArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Group("example", GroupArgs.builder()
///             .directoryId("d-1234567890")
///             .samAccountName("examplegroup")
///             .groupScope("Global")
///             .groupType("Security")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:directoryservicedata:Group
///     properties:
///       directoryId: d-1234567890
///       samAccountName: examplegroup
///       groupScope: Global
///       groupType: Security
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `directoryId` (String) ID of the Directory Service directory where the group is managed.
/// * `samAccountName` (String) SAM account name of the group.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Directory Service Data Group using the directory ID and SAM account name separated by a comma. For example:
///
/// ```sh
/// $ pulumi import aws:directoryservicedata/group:Group example d-1234567890,example-group
/// ```
class Group extends pulumi.CustomResource {
  /// ID of the Directory that's associated with the group.
  late final pulumi.Output<String> directoryId;
  /// Distinguished name of the group.
  late final pulumi.Output<String> distinguishedName;
  /// Scope of the AD group. Valid values are `DomainLocal`, `Global`, `Universal`, and `BuiltinLocal`. If omitted, the value is read from AWS. See [AD group scopes](https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#group-scope) for scope restrictions.
  late final pulumi.Output<String> groupScope;
  /// Type of the AD group. Valid values are `Distribution` and `Security`. If omitted, the value is read from AWS. See [AD group types](https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#how-active-directory-security-groups-work).
  late final pulumi.Output<String> groupType;
  /// Region where the group is managed. Defaults to the provider region.
  ///
  /// Changes to `groupScope` and `groupType` in the same apply are sent to AWS as separate requests, with the scope updated first.
  late final pulumi.Output<String> region;
  /// SAM account name of the group. Must be between 1 and 64 characters and must not contain any of the following characters: `: ; | = + " * ? &lt; &gt; / \ , [ ] @`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> samAccountName;
  /// Unique Security identifier (SID) of the group.
  late final pulumi.Output<String> sid;

  /// Creates a new [Group].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Group]. {@macro pulumi_directoryservicedata_group_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Group(
    String name, {
    GroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directoryservicedata/group:Group',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.54.0').merge(options),
        ) {
    directoryId = registerOutput<String>('directoryId');
    distinguishedName = registerOutput<String>('distinguishedName');
    groupScope = registerOutput<String>('groupScope');
    groupType = registerOutput<String>('groupType');
    region = registerOutput<String>('region');
    samAccountName = registerOutput<String>('samAccountName');
    sid = registerOutput<String>('sid');
  }

  /// Gets an existing [Group] resource's state with the given [name] and [id].
  static Group get(
    String name,
    pulumi.Input<String> id, {
    GroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Group._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Group._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directoryservicedata/group:Group',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    directoryId = registerOutput<String>('directoryId');
    distinguishedName = registerOutput<String>('distinguishedName');
    groupScope = registerOutput<String>('groupScope');
    groupType = registerOutput<String>('groupType');
    region = registerOutput<String>('region');
    samAccountName = registerOutput<String>('samAccountName');
    sid = registerOutput<String>('sid');
  }

  /// Creates a typed reference to an existing [Group] resource.
  Group.reference(String urn)
    : super(
        'aws:directoryservicedata/group:Group',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    directoryId = registerOutput<String>('directoryId');
    distinguishedName = registerOutput<String>('distinguishedName');
    groupScope = registerOutput<String>('groupScope');
    groupType = registerOutput<String>('groupType');
    region = registerOutput<String>('region');
    samAccountName = registerOutput<String>('samAccountName');
    sid = registerOutput<String>('sid');
  }
}
