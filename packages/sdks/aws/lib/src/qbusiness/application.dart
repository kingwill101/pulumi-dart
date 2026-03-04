import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_args.dart';
import 'application_attachments_configuration.dart';
import 'application_encryption_configuration.dart';
import 'application_state.dart';
import 'application_timeouts.dart';

/// Provides a Q Business Application resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.qbusiness.Application("example", {
///     displayName: "example-app",
///     iamServiceRoleArn: exampleAwsIamRole.arn,
///     identityCenterInstanceArn: exampleAwsSsoadminInstances.arns[0],
///     attachmentsConfiguration: {
///         attachmentsControlMode: "ENABLED",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.qbusiness.Application("example",
///     display_name="example-app",
///     iam_service_role_arn=example_aws_iam_role["arn"],
///     identity_center_instance_arn=example_aws_ssoadmin_instances["arns"][0],
///     attachments_configuration={
///         "attachments_control_mode": "ENABLED",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Qbusiness.Application("example", new()
///     {
///         DisplayName = "example-app",
///         IamServiceRoleArn = exampleAwsIamRole.Arn,
///         IdentityCenterInstanceArn = exampleAwsSsoadminInstances.Arns[0],
///         AttachmentsConfiguration = new Aws.Qbusiness.Inputs.ApplicationAttachmentsConfigurationArgs
///         {
///             AttachmentsControlMode = "ENABLED",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/qbusiness"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := qbusiness.NewApplication(ctx, "example", &qbusiness.ApplicationArgs{
/// 			DisplayName:               pulumi.String("example-app"),
/// 			IamServiceRoleArn:         pulumi.Any(exampleAwsIamRole.Arn),
/// 			IdentityCenterInstanceArn: pulumi.Any(exampleAwsSsoadminInstances.Arns[0]),
/// 			AttachmentsConfiguration: &qbusiness.ApplicationAttachmentsConfigurationArgs{
/// 				AttachmentsControlMode: pulumi.String("ENABLED"),
/// 			},
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
/// import com.pulumi.aws.qbusiness.Application;
/// import com.pulumi.aws.qbusiness.ApplicationArgs;
/// import com.pulumi.aws.qbusiness.inputs.ApplicationAttachmentsConfigurationArgs;
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
///         var example = new Application("example", ApplicationArgs.builder()
///             .displayName("example-app")
///             .iamServiceRoleArn(exampleAwsIamRole.arn())
///             .identityCenterInstanceArn(exampleAwsSsoadminInstances.arns()[0])
///             .attachmentsConfiguration(ApplicationAttachmentsConfigurationArgs.builder()
///                 .attachmentsControlMode("ENABLED")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:qbusiness:Application
///     properties:
///       displayName: example-app
///       iamServiceRoleArn: ${exampleAwsIamRole.arn}
///       identityCenterInstanceArn: ${exampleAwsSsoadminInstances.arns[0]}
///       attachmentsConfiguration:
///         attachmentsControlMode: ENABLED
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import a Q Business Application using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:qbusiness/application:Application example id-12345678
/// ```
class Application extends pulumi.CustomResource {
  /// ARN of the Q Business application.
  late final pulumi.Output<String> arn;

  /// Information about whether file upload functionality is activated or deactivated for your end user. See `attachments_configuration` below.
  late final pulumi.Output<ApplicationAttachmentsConfiguration>
  attachmentsConfiguration;

  /// Description of the Amazon Q application.
  late final pulumi.Output<String?> description;

  /// Name of the Amazon Q application.
  late final pulumi.Output<String> displayName;

  /// Information about encryption configuration. See `encryption_configuration` below.
  late final pulumi.Output<ApplicationEncryptionConfiguration?>
  encryptionConfiguration;

  /// ARN of an IAM role with permissions to access your Amazon CloudWatch logs and metrics.
  late final pulumi.Output<String> iamServiceRoleArn;

  /// ARN of the AWS IAM Identity Center application attached to your Amazon Q Business application.
  late final pulumi.Output<String> identityCenterApplicationArn;

  /// ARN of the IAM Identity Center instance you are either creating for — or connecting to — your Amazon Q Business application.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> identityCenterInstanceArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ApplicationTimeouts?> timeouts;

  /// Creates a new [Application].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Application]. {@macro pulumi_qbusiness_application_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Application(
    String name, {
    ApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:qbusiness/application:Application',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    attachmentsConfiguration =
        registerOutput<ApplicationAttachmentsConfiguration>(
          'attachmentsConfiguration',
        );
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    encryptionConfiguration =
        registerOutput<ApplicationEncryptionConfiguration?>(
          'encryptionConfiguration',
        );
    iamServiceRoleArn = registerOutput<String>('iamServiceRoleArn');
    identityCenterApplicationArn = registerOutput<String>(
      'identityCenterApplicationArn',
    );
    identityCenterInstanceArn = registerOutput<String>(
      'identityCenterInstanceArn',
    );
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<ApplicationTimeouts?>('timeouts');
  }

  /// Gets an existing [Application] resource's state with the given [name] and [id].
  static Application get(
    String name,
    pulumi.Input<String> id, {
    ApplicationState? state,
  }) {
    return Application._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Application._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:qbusiness/application:Application',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    attachmentsConfiguration =
        registerOutput<ApplicationAttachmentsConfiguration>(
          'attachmentsConfiguration',
        );
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    encryptionConfiguration =
        registerOutput<ApplicationEncryptionConfiguration?>(
          'encryptionConfiguration',
        );
    iamServiceRoleArn = registerOutput<String>('iamServiceRoleArn');
    identityCenterApplicationArn = registerOutput<String>(
      'identityCenterApplicationArn',
    );
    identityCenterInstanceArn = registerOutput<String>(
      'identityCenterInstanceArn',
    );
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<ApplicationTimeouts?>('timeouts');
  }
}
