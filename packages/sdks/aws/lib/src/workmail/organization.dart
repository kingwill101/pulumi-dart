import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_args.dart';
import 'organization_state.dart';
import 'organization_timeouts.dart';

/// Manages an AWS WorkMail Organization.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.workmail.Organization("example", {organizationAlias: "example-org"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workmail.Organization("example", organization_alias="example-org")
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
///         OrganizationAlias = "example-org",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workmail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workmail.NewOrganization(ctx, "example", &workmail.OrganizationArgs{
/// 			OrganizationAlias: pulumi.String("example-org"),
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
///   organization_alias = "example-org"
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
///             .organizationAlias("example-org")
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
///       organizationAlias: example-org
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `organizationId` - (String) ID of the WorkMail Organization.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import WorkMail Organization using the `organizationId`. For example:
///
/// ```sh
/// $ pulumi import aws:workmail/organization:Organization example m-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
/// ```
///
/// &gt; **NOTE:** The `kmsKeyArn`, `deleteDirectory`, and `deleteIdentityCenterApplication` attributes are not returned by the AWS API and will not be set after import. Add them back to your configuration manually if needed.
class Organization extends pulumi.CustomResource {
  /// ARN of the Organization.
  late final pulumi.Output<String> arn;
  /// Date and time (RFC3339) at which the organization became active.
  late final pulumi.Output<String> completedDate;
  /// Default mail domain for the organization.
  late final pulumi.Output<String> defaultMailDomain;
  /// Whether to delete the AWS Directory Service directory associated with the organization on destroy. To update this value after creation, run `pulumi up` before running `terraform destroy`. Defaults to `false`.
  late final pulumi.Output<bool?> deleteDirectory;
  /// Whether to delete the IAM Identity Center application associated with the organization on destroy. To update this value after creation, run `pulumi up` before running `terraform destroy`. Defaults to `false`.
  late final pulumi.Output<bool?> deleteIdentityCenterApplication;
  /// ID of an existing directory to associate with the organization. Changing this creates a new resource.
  late final pulumi.Output<String> directoryId;
  /// Type of the associated directory.
  late final pulumi.Output<String> directoryType;
  /// Whether to enable interoperability between WorkMail and Microsoft Exchange. Changing this creates a new resource.
  late final pulumi.Output<bool> interoperabilityEnabled;
  /// ARN of a customer-managed KMS key to encrypt the organization's data. If omitted, AWS managed keys are used. Changing this creates a new resource.
  late final pulumi.Output<String?> kmsKeyArn;
  /// User ID of the migration admin if migration is enabled.
  late final pulumi.Output<String> migrationAdmin;
  /// Alias for the organization. Must be unique globally. Changing this creates a new resource.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> organizationAlias;
  /// ID of the WorkMail Organization.
  late final pulumi.Output<String> organizationId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// State of the organization.
  late final pulumi.Output<String> state;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<OrganizationTimeouts?> timeouts;

  /// Creates a new [Organization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Organization]. {@macro pulumi_workmail_organization_organization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Organization(
    String name, {
    OrganizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workmail/organization:Organization',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    completedDate = registerOutput<String>('completedDate');
    defaultMailDomain = registerOutput<String>('defaultMailDomain');
    deleteDirectory = registerOutput<bool?>('deleteDirectory');
    deleteIdentityCenterApplication = registerOutput<bool?>('deleteIdentityCenterApplication');
    directoryId = registerOutput<String>('directoryId');
    directoryType = registerOutput<String>('directoryType');
    interoperabilityEnabled = registerOutput<bool>('interoperabilityEnabled');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    migrationAdmin = registerOutput<String>('migrationAdmin');
    organizationAlias = registerOutput<String>('organizationAlias');
    organizationId = registerOutput<String>('organizationId');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<OrganizationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Organization] resource's state with the given [name] and [id].
  static Organization get(
    String name,
    pulumi.Input<String> id, {
    OrganizationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Organization._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Organization._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workmail/organization:Organization',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    completedDate = registerOutput<String>('completedDate');
    defaultMailDomain = registerOutput<String>('defaultMailDomain');
    deleteDirectory = registerOutput<bool?>('deleteDirectory');
    deleteIdentityCenterApplication = registerOutput<bool?>('deleteIdentityCenterApplication');
    directoryId = registerOutput<String>('directoryId');
    directoryType = registerOutput<String>('directoryType');
    interoperabilityEnabled = registerOutput<bool>('interoperabilityEnabled');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    migrationAdmin = registerOutput<String>('migrationAdmin');
    organizationAlias = registerOutput<String>('organizationAlias');
    organizationId = registerOutput<String>('organizationId');
    region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<OrganizationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Organization] resource.
  Organization.reference(String urn)
    : super(
        'aws:workmail/organization:Organization',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    completedDate = registerOutput<String>('completedDate');
    defaultMailDomain = registerOutput<String>('defaultMailDomain');
    deleteDirectory = registerOutput<bool?>('deleteDirectory');
    deleteIdentityCenterApplication = registerOutput<bool?>('deleteIdentityCenterApplication');
    directoryId = registerOutput<String>('directoryId');
    directoryType = registerOutput<String>('directoryType');
    interoperabilityEnabled = registerOutput<bool>('interoperabilityEnabled');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    migrationAdmin = registerOutput<String>('migrationAdmin');
    organizationAlias = registerOutput<String>('organizationAlias');
    organizationId = registerOutput<String>('organizationId');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<OrganizationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
