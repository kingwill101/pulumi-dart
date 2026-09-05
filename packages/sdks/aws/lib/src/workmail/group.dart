import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_args.dart';
import 'group_state.dart';

/// Manages an AWS WorkMail Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.workmail.Organization("example", {
///     organizationAlias: "example-workmail-org",
///     deleteDirectory: true,
/// });
/// const exampleGroup = new aws.workmail.Group("example", {
///     organizationId: example.organizationId,
///     email: pulumi.interpolate`engineering@${example.defaultMailDomain}`,
///     name: "engineering",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workmail.Organization("example",
///     organization_alias="example-workmail-org",
///     delete_directory=True)
/// example_group = aws.workmail.Group("example",
///     organization_id=example.organization_id,
///     email=example.default_mail_domain.apply(lambda default_mail_domain: f"engineering@{default_mail_domain}"),
///     name="engineering")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.WorkMail.Organization("example", new()
///     {
///         OrganizationAlias = "example-workmail-org",
///         DeleteDirectory = true,
///     });
///
///     var exampleGroup = new Aws.WorkMail.Group("example", new()
///     {
///         OrganizationId = example.OrganizationId,
///         Email = example.DefaultMailDomain.Apply(defaultMailDomain => $"engineering@{defaultMailDomain}"),
///         Name = "engineering",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workmail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := workmail.NewOrganization(ctx, "example", &workmail.OrganizationArgs{
/// 			OrganizationAlias: pulumi.String("example-workmail-org"),
/// 			DeleteDirectory:   pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workmail.NewGroup(ctx, "example", &workmail.GroupArgs{
/// 			OrganizationId: example.OrganizationId,
/// 			Email: example.DefaultMailDomain.ApplyT(func(defaultMailDomain string) (string, error) {
/// 				return fmt.Sprintf("engineering@%v", defaultMailDomain), nil
/// 			}).(pulumi.StringOutput),
/// 			Name: pulumi.String("engineering"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_workmail_organization" "example" {
///   organization_alias = "example-workmail-org"
///   delete_directory   = true
/// }
/// resource "aws_workmail_group" "example" {
///   organization_id = aws_workmail_organization.example.organization_id
///   email           ="engineering@${aws_workmail_organization.example.default_mail_domain}"
///   name            = "engineering"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.workmail.Organization;
/// import com.pulumi.aws.workmail.OrganizationArgs;
/// import com.pulumi.aws.workmail.Group;
/// import com.pulumi.aws.workmail.GroupArgs;
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
///         var example = new Organization("example", OrganizationArgs.builder()
///             .organizationAlias("example-workmail-org")
///             .deleteDirectory(true)
///             .build());
///
///         var exampleGroup = new Group("exampleGroup", GroupArgs.builder()
///             .organizationId(example.organizationId())
///             .email(example.defaultMailDomain().applyValue(_defaultMailDomain -> String.format("engineering@%s", _defaultMailDomain)))
///             .name("engineering")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:workmail:Organization
///     properties:
///       organizationAlias: example-workmail-org
///       deleteDirectory: true
///   exampleGroup:
///     type: aws:workmail:Group
///     name: example
///     properties:
///       organizationId: ${example.organizationId}
///       email: engineering@${example.defaultMailDomain}
///       name: engineering
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `groupId` - Identifier of the group.
/// * `organizationId` - Identifier of the WorkMail organization where the group is managed.
///
/// #### Optional
///
/// * `accountId` (String) AWS account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import WorkMail Group using `organization_id,group_id`. For example:
///
/// ```sh
/// $ pulumi import aws:workmail/group:Group example m-1234567890abcdef,S-1-1-12-1234567890-123456789-123456789-1234
/// ```
class Group extends pulumi.CustomResource {
  /// Timestamp when the group was disabled from WorkMail use.
  late final pulumi.Output<String> disabledDate;
  /// Primary email address used to register the group with WorkMail.
  late final pulumi.Output<String> email;
  /// Timestamp when the group was enabled for WorkMail use.
  late final pulumi.Output<String> enabledDate;
  /// Identifier of the group.
  late final pulumi.Output<String> groupId;
  /// Whether to hide the group from the global address list.
  late final pulumi.Output<bool> hiddenFromGlobalAddressList;
  /// Name of the group.
  late final pulumi.Output<String> name;
  /// Identifier of the WorkMail organization where the group is managed.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> organizationId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Current WorkMail state of the group.
  late final pulumi.Output<String> state;

  /// Creates a new [Group].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Group]. {@macro pulumi_workmail_group_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Group(
    String name, {
    GroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workmail/group:Group',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    disabledDate = registerOutput<String>('disabledDate');
    email = registerOutput<String>('email');
    enabledDate = registerOutput<String>('enabledDate');
    groupId = registerOutput<String>('groupId');
    hiddenFromGlobalAddressList = registerOutput<bool>('hiddenFromGlobalAddressList');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
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
          'aws:workmail/group:Group',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    disabledDate = registerOutput<String>('disabledDate');
    email = registerOutput<String>('email');
    enabledDate = registerOutput<String>('enabledDate');
    groupId = registerOutput<String>('groupId');
    hiddenFromGlobalAddressList = registerOutput<bool>('hiddenFromGlobalAddressList');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
  }

  /// Creates a typed reference to an existing [Group] resource.
  Group.reference(String urn)
    : super(
        'aws:workmail/group:Group',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    disabledDate = registerOutput<String>('disabledDate');
    email = registerOutput<String>('email');
    enabledDate = registerOutput<String>('enabledDate');
    groupId = registerOutput<String>('groupId');
    hiddenFromGlobalAddressList = registerOutput<bool>('hiddenFromGlobalAddressList');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
  }
}
