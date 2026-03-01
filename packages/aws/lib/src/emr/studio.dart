import 'package:pulumi/pulumi.dart' as pulumi;
import 'studio_args.dart';

/// Provides an Elastic MapReduce Studio.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.emr.Studio("example", {
///     authMode: "SSO",
///     defaultS3Location: `s3://${test.bucket}/test`,
///     engineSecurityGroupId: testAwsSecurityGroup.id,
///     name: "example",
///     serviceRole: testAwsIamRole.arn,
///     subnetIds: [testAwsSubnet.id],
///     userRole: testAwsIamRole.arn,
///     vpcId: testAwsVpc.id,
///     workspaceSecurityGroupId: testAwsSecurityGroup.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.emr.Studio("example",
///     auth_mode="SSO",
///     default_s3_location=f"s3://{test['bucket']}/test",
///     engine_security_group_id=test_aws_security_group["id"],
///     name="example",
///     service_role=test_aws_iam_role["arn"],
///     subnet_ids=[test_aws_subnet["id"]],
///     user_role=test_aws_iam_role["arn"],
///     vpc_id=test_aws_vpc["id"],
///     workspace_security_group_id=test_aws_security_group["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Emr.Studio("example", new()
///     {
///         AuthMode = "SSO",
///         DefaultS3Location = $"s3://{test.Bucket}/test",
///         EngineSecurityGroupId = testAwsSecurityGroup.Id,
///         Name = "example",
///         ServiceRole = testAwsIamRole.Arn,
///         SubnetIds = new[]
///         {
///             testAwsSubnet.Id,
///         },
///         UserRole = testAwsIamRole.Arn,
///         VpcId = testAwsVpc.Id,
///         WorkspaceSecurityGroupId = testAwsSecurityGroup.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := emr.NewStudio(ctx, "example", &emr.StudioArgs{
/// 			AuthMode:              pulumi.String("SSO"),
/// 			DefaultS3Location:     pulumi.Sprintf("s3://%v/test", test.Bucket),
/// 			EngineSecurityGroupId: pulumi.Any(testAwsSecurityGroup.Id),
/// 			Name:                  pulumi.String("example"),
/// 			ServiceRole:           pulumi.Any(testAwsIamRole.Arn),
/// 			SubnetIds: pulumi.StringArray{
/// 				testAwsSubnet.Id,
/// 			},
/// 			UserRole:                 pulumi.Any(testAwsIamRole.Arn),
/// 			VpcId:                    pulumi.Any(testAwsVpc.Id),
/// 			WorkspaceSecurityGroupId: pulumi.Any(testAwsSecurityGroup.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.emr.Studio;
/// import com.pulumi.aws.emr.StudioArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new Studio("example", StudioArgs.builder()
///             .authMode("SSO")
///             .defaultS3Location(String.format("s3://%s/test", test.bucket()))
///             .engineSecurityGroupId(testAwsSecurityGroup.id())
///             .name("example")
///             .serviceRole(testAwsIamRole.arn())
///             .subnetIds(testAwsSubnet.id())
///             .userRole(testAwsIamRole.arn())
///             .vpcId(testAwsVpc.id())
///             .workspaceSecurityGroupId(testAwsSecurityGroup.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:emr:Studio
///     properties:
///       authMode: SSO
///       defaultS3Location: s3://${test.bucket}/test
///       engineSecurityGroupId: ${testAwsSecurityGroup.id}
///       name: example
///       serviceRole: ${testAwsIamRole.arn}
///       subnetIds:
///         - ${testAwsSubnet.id}
///       userRole: ${testAwsIamRole.arn}
///       vpcId: ${testAwsVpc.id}
///       workspaceSecurityGroupId: ${testAwsSecurityGroup.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EMR studios using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:emr/studio:Studio studio es-123456ABCDEF
/// ```
class Studio extends pulumi.CustomResource {
  /// ARN of the studio.
  late final pulumi.Output<String> arn;

  /// Specifies whether the Studio authenticates users using IAM or Amazon Web Services SSO. Valid values are `SSO` or `IAM`.
  late final pulumi.Output<String> authMode;

  /// The Amazon S3 location to back up Amazon EMR Studio Workspaces and notebook files.
  late final pulumi.Output<String> defaultS3Location;

  /// A detailed description of the Amazon EMR Studio.
  late final pulumi.Output<String?> description;

  /// The AWS KMS key identifier (ARN) used to encrypt Amazon EMR Studio workspace and notebook files when backed up to Amazon S3.
  late final pulumi.Output<String?> encryptionKeyArn;

  /// The ID of the Amazon EMR Studio Engine security group. The Engine security group allows inbound network traffic from the Workspace security group, and it must be in the same VPC specified by `vpc_id`.
  late final pulumi.Output<String> engineSecurityGroupId;

  /// The authentication endpoint of your identity provider (IdP). Specify this value when you use IAM authentication and want to let federated users log in to a Studio with the Studio URL and credentials from your IdP. Amazon EMR Studio redirects users to this endpoint to enter credentials.
  late final pulumi.Output<String?> idpAuthUrl;

  /// The name that your identity provider (IdP) uses for its RelayState parameter. For example, RelayState or TargetSource. Specify this value when you use IAM authentication and want to let federated users log in to a Studio using the Studio URL. The RelayState parameter differs by IdP.
  late final pulumi.Output<String?> idpRelayStateParameterName;

  /// A descriptive name for the Amazon EMR Studio.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The IAM role that the Amazon EMR Studio assumes. The service role provides a way for Amazon EMR Studio to interoperate with other Amazon Web Services services.
  late final pulumi.Output<String> serviceRole;

  /// A list of subnet IDs to associate with the Amazon EMR Studio. A Studio can have a maximum of 5 subnets. The subnets must belong to the VPC specified by `vpc_id`. Studio users can create a Workspace in any of the specified subnets.
  late final pulumi.Output<List<String>> subnetIds;

  /// list of tags to apply to the EMR Cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The unique access URL of the Amazon EMR Studio.
  late final pulumi.Output<String> url;

  /// The IAM user role that users and groups assume when logged in to an Amazon EMR Studio. Only specify a User Role when you use Amazon Web Services SSO authentication. The permissions attached to the User Role can be scoped down for each user or group using session policies.
  late final pulumi.Output<String?> userRole;

  /// The ID of the Amazon Virtual Private Cloud (Amazon VPC) to associate with the Studio.
  late final pulumi.Output<String> vpcId;

  /// The ID of the Amazon EMR Studio Workspace security group. The Workspace security group allows outbound network traffic to resources in the Engine security group, and it must be in the same VPC specified by `vpc_id`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> workspaceSecurityGroupId;

  /// Creates a new [Studio].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Studio]. {@macro pulumi_emr_studio_studio_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Studio(String name, {StudioArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:emr/studio:Studio',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.arn = registerOutput<String>('arn');
    this.authMode = registerOutput<String>('authMode');
    this.defaultS3Location = registerOutput<String>('defaultS3Location');
    this.description = registerOutput<String?>('description');
    this.encryptionKeyArn = registerOutput<String?>('encryptionKeyArn');
    this.engineSecurityGroupId = registerOutput<String>(
      'engineSecurityGroupId',
    );
    this.idpAuthUrl = registerOutput<String?>('idpAuthUrl');
    this.idpRelayStateParameterName = registerOutput<String?>(
      'idpRelayStateParameterName',
    );
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.serviceRole = registerOutput<String>('serviceRole');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.url = registerOutput<String>('url');
    this.userRole = registerOutput<String?>('userRole');
    this.vpcId = registerOutput<String>('vpcId');
    this.workspaceSecurityGroupId = registerOutput<String>(
      'workspaceSecurityGroupId',
    );
  }
}
