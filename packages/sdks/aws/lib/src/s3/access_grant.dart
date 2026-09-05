import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_grant_access_grants_location_configuration.dart';
import 'access_grant_args.dart';
import 'access_grant_grantee.dart';
import 'access_grant_state.dart';

/// Provides a resource to manage an S3 Access Grant.
/// Each access grant has its own ID and gives an IAM user or role or a directory user, or group (the grantee) access to a registered location. You determine the level of access, such as `READ` or `READWRITE`.
/// Before you can create a grant, you must have an S3 Access Grants instance in the same Region as the S3 data.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3control.AccessGrantsInstance("example", {});
/// const exampleAccessGrantsLocation = new aws.s3control.AccessGrantsLocation("example", {
///     iamRoleArn: exampleAwsIamRole.arn,
///     locationScope: `s3://${exampleAwsS3Bucket.bucket}/prefixA*`,
/// }, {
///     dependsOn: [example],
/// });
/// const exampleAccessGrant = new aws.s3control.AccessGrant("example", {
///     accessGrantsLocationConfiguration: {
///         s3SubPrefix: "prefixB*",
///     },
///     grantee: {
///         granteeType: "IAM",
///         granteeIdentifier: exampleAwsIamUser.arn,
///     },
///     accessGrantsLocationId: exampleAccessGrantsLocation.accessGrantsLocationId,
///     permission: "READ",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3control.AccessGrantsInstance("example")
/// example_access_grants_location = aws.s3control.AccessGrantsLocation("example",
///     iam_role_arn=example_aws_iam_role["arn"],
///     location_scope=f"s3://{example_aws_s3_bucket['bucket']}/prefixA*",
///     opts = pulumi.ResourceOptions(depends_on=[example]))
/// example_access_grant = aws.s3control.AccessGrant("example",
///     access_grants_location_configuration={
///         "s3_sub_prefix": "prefixB*",
///     },
///     grantee={
///         "grantee_type": "IAM",
///         "grantee_identifier": example_aws_iam_user["arn"],
///     },
///     access_grants_location_id=example_access_grants_location.access_grants_location_id,
///     permission="READ")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3Control.AccessGrantsInstance("example");
///
///     var exampleAccessGrantsLocation = new Aws.S3Control.AccessGrantsLocation("example", new()
///     {
///         IamRoleArn = exampleAwsIamRole.Arn,
///         LocationScope = $"s3://{exampleAwsS3Bucket.Bucket}/prefixA*",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
///     });
///
///     var exampleAccessGrant = new Aws.S3Control.AccessGrant("example", new()
///     {
///         AccessGrantsLocationConfiguration = new Aws.S3Control.Inputs.AccessGrantAccessGrantsLocationConfigurationArgs
///         {
///             S3SubPrefix = "prefixB*",
///         },
///         Grantee = new Aws.S3Control.Inputs.AccessGrantGranteeArgs
///         {
///             GranteeType = "IAM",
///             GranteeIdentifier = exampleAwsIamUser.Arn,
///         },
///         AccessGrantsLocationId = exampleAccessGrantsLocation.AccessGrantsLocationId,
///         Permission = "READ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3control"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := s3control.NewAccessGrantsInstance(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccessGrantsLocation, err := s3control.NewAccessGrantsLocation(ctx, "example", &s3control.AccessGrantsLocationArgs{
/// 			IamRoleArn:    pulumi.Any(exampleAwsIamRole.Arn),
/// 			LocationScope: pulumi.Sprintf("s3://%v/prefixA*", exampleAwsS3Bucket.Bucket),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3control.NewAccessGrant(ctx, "example", &s3control.AccessGrantArgs{
/// 			AccessGrantsLocationConfiguration: &s3control.AccessGrantAccessGrantsLocationConfigurationArgs{
/// 				S3SubPrefix: pulumi.String("prefixB*"),
/// 			},
/// 			Grantee: &s3control.AccessGrantGranteeArgs{
/// 				GranteeType:       pulumi.String("IAM"),
/// 				GranteeIdentifier: pulumi.Any(exampleAwsIamUser.Arn),
/// 			},
/// 			AccessGrantsLocationId: exampleAccessGrantsLocation.AccessGrantsLocationId,
/// 			Permission:             pulumi.String("READ"),
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
/// resource "aws_s3control_accessgrantsinstance" "example" {
/// }
/// resource "aws_s3control_accessgrantslocation" "example" {
///   depends_on     = [aws_s3control_accessgrantsinstance.example]
///   iam_role_arn   = exampleAwsIamRole.arn
///   location_scope ="s3://${exampleAwsS3Bucket.bucket}/prefixA*"
/// }
/// resource "aws_s3control_accessgrant" "example" {
///   access_grants_location_configuration = {
///     s3_sub_prefix = "prefixB*"
///   }
///   grantee = {
///     grantee_type       = "IAM"
///     grantee_identifier = exampleAwsIamUser.arn
///   }
///   access_grants_location_id = aws_s3control_accessgrantslocation.example.access_grants_location_id
///   permission                = "READ"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3control.AccessGrantsInstance;
/// import com.pulumi.aws.s3control.AccessGrantsLocation;
/// import com.pulumi.aws.s3control.AccessGrantsLocationArgs;
/// import com.pulumi.aws.s3control.AccessGrant;
/// import com.pulumi.aws.s3control.AccessGrantArgs;
/// import com.pulumi.aws.s3control.inputs.AccessGrantAccessGrantsLocationConfigurationArgs;
/// import com.pulumi.aws.s3control.inputs.AccessGrantGranteeArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new AccessGrantsInstance("example");
///
///         var exampleAccessGrantsLocation = new AccessGrantsLocation("exampleAccessGrantsLocation", AccessGrantsLocationArgs.builder()
///             .iamRoleArn(exampleAwsIamRole.arn())
///             .locationScope(String.format("s3://%s/prefixA*", exampleAwsS3Bucket.bucket()))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///         var exampleAccessGrant = new AccessGrant("exampleAccessGrant", AccessGrantArgs.builder()
///             .accessGrantsLocationConfiguration(AccessGrantAccessGrantsLocationConfigurationArgs.builder()
///                 .s3SubPrefix("prefixB*")
///                 .build())
///             .grantee(AccessGrantGranteeArgs.builder()
///                 .granteeType("IAM")
///                 .granteeIdentifier(exampleAwsIamUser.arn())
///                 .build())
///             .accessGrantsLocationId(exampleAccessGrantsLocation.accessGrantsLocationId())
///             .permission("READ")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3control:AccessGrantsInstance
///   exampleAccessGrantsLocation:
///     type: aws:s3control:AccessGrantsLocation
///     name: example
///     properties:
///       iamRoleArn: ${exampleAwsIamRole.arn}
///       locationScope: s3://${exampleAwsS3Bucket.bucket}/prefixA*
///     options:
///       dependsOn:
///         - ${example}
///   exampleAccessGrant:
///     type: aws:s3control:AccessGrant
///     name: example
///     properties:
///       accessGrantsLocationConfiguration:
///         s3SubPrefix: prefixB*
///       grantee:
///         granteeType: IAM
///         granteeIdentifier: ${exampleAwsIamUser.arn}
///       accessGrantsLocationId: ${exampleAccessGrantsLocation.accessGrantsLocationId}
///       permission: READ
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Access Grants using the `accountId` and `accessGrantId`, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:s3control/accessGrant:AccessGrant example 123456789012,04549c5e-2f3c-4a07-824d-2cafe720aa22
/// ```
class AccessGrant extends pulumi.CustomResource {
  /// ARN of the S3 Access Grant.
  late final pulumi.Output<String> accessGrantArn;
  /// Unique ID of the S3 Access Grant.
  late final pulumi.Output<String> accessGrantId;
  /// See `accessGrantsLocationConfiguration` Block below for more details.
  late final pulumi.Output<AccessGrantAccessGrantsLocationConfiguration?> accessGrantsLocationConfiguration;
  /// ID of the S3 Access Grants location to with the access grant is giving access.
  late final pulumi.Output<String> accessGrantsLocationId;
  /// AWS account ID for the S3 Access Grants location. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> accountId;
  /// Access grant's scope.
  late final pulumi.Output<String> grantScope;
  /// See `grantee` Block below for more details.
  late final pulumi.Output<AccessGrantGrantee> grantee;
  /// Access grant's level of access. Valid values: `READ`, `WRITE`, `READWRITE`.
  late final pulumi.Output<String> permission;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// If you are creating an access grant that grants access to only one object, set this to `Object`. Valid values: `Object`.
  late final pulumi.Output<String?> s3PrefixType;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [AccessGrant].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessGrant]. {@macro pulumi_s3_control_access_grant_access_grant_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessGrant(
    String name, {
    AccessGrantArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3control/accessGrant:AccessGrant',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    accessGrantArn = registerOutput<String>('accessGrantArn');
    accessGrantId = registerOutput<String>('accessGrantId');
    accessGrantsLocationConfiguration = registerOutput<AccessGrantAccessGrantsLocationConfiguration?>('accessGrantsLocationConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessGrantAccessGrantsLocationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    accessGrantsLocationId = registerOutput<String>('accessGrantsLocationId');
    accountId = registerOutput<String>('accountId');
    grantScope = registerOutput<String>('grantScope');
    grantee = registerOutput<AccessGrantGrantee>('grantee', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessGrantGrantee.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    permission = registerOutput<String>('permission');
    region = registerOutput<String>('region');
    s3PrefixType = registerOutput<String?>('s3PrefixType');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [AccessGrant] resource's state with the given [name] and [id].
  static AccessGrant get(
    String name,
    pulumi.Input<String> id, {
    AccessGrantState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AccessGrant._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AccessGrant._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3control/accessGrant:AccessGrant',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessGrantArn = registerOutput<String>('accessGrantArn');
    accessGrantId = registerOutput<String>('accessGrantId');
    accessGrantsLocationConfiguration = registerOutput<AccessGrantAccessGrantsLocationConfiguration?>('accessGrantsLocationConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessGrantAccessGrantsLocationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    accessGrantsLocationId = registerOutput<String>('accessGrantsLocationId');
    accountId = registerOutput<String>('accountId');
    grantScope = registerOutput<String>('grantScope');
    grantee = registerOutput<AccessGrantGrantee>('grantee', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessGrantGrantee.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    permission = registerOutput<String>('permission');
    region = registerOutput<String>('region');
    s3PrefixType = registerOutput<String?>('s3PrefixType');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [AccessGrant] resource.
  AccessGrant.reference(String urn)
    : super(
        'aws:s3control/accessGrant:AccessGrant',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accessGrantArn = registerOutput<String>('accessGrantArn');
    accessGrantId = registerOutput<String>('accessGrantId');
    accessGrantsLocationConfiguration = registerOutput<AccessGrantAccessGrantsLocationConfiguration?>('accessGrantsLocationConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessGrantAccessGrantsLocationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    accessGrantsLocationId = registerOutput<String>('accessGrantsLocationId');
    accountId = registerOutput<String>('accountId');
    grantScope = registerOutput<String>('grantScope');
    grantee = registerOutput<AccessGrantGrantee>('grantee', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessGrantGrantee.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    permission = registerOutput<String>('permission');
    region = registerOutput<String>('region');
    s3PrefixType = registerOutput<String?>('s3PrefixType');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
