import 'package:pulumi/pulumi.dart';
import '../application_attachments_configuration/application_attachments_configuration.dart';
import '../application_encryption_configuration/application_encryption_configuration.dart';
import '../application_timeouts/application_timeouts3.dart';
import 'application_args9.dart';

/// Provides a Q Business Application resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.qbusiness.Application("example", {
/// displayName: "example-app",
/// iamServiceRoleArn: exampleAwsIamRole.arn,
/// identityCenterInstanceArn: exampleAwsSsoadminInstances.arns[0],
/// attachmentsConfiguration: {
/// attachmentsControlMode: "ENABLED",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.qbusiness.Application("example",
/// display_name="example-app",
/// iam_service_role_arn=example_aws_iam_role["arn"],
/// identity_center_instance_arn=example_aws_ssoadmin_instances["arns"][0],
/// attachments_configuration={
/// "attachments_control_mode": "ENABLED",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Qbusiness.Application("example", new()
/// {
/// DisplayName = "example-app",
/// IamServiceRoleArn = exampleAwsIamRole.Arn,
/// IdentityCenterInstanceArn = exampleAwsSsoadminInstances.Arns[0],
/// AttachmentsConfiguration = new Aws.Qbusiness.Inputs.ApplicationAttachmentsConfigurationArgs
/// {
/// AttachmentsControlMode = "ENABLED",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/qbusiness"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := qbusiness.NewApplication(ctx, "example", &qbusiness.ApplicationArgs{
/// DisplayName:               pulumi.String("example-app"),
/// IamServiceRoleArn:         pulumi.Any(exampleAwsIamRole.Arn),
/// IdentityCenterInstanceArn: pulumi.Any(exampleAwsSsoadminInstances.Arns[0]),
/// AttachmentsConfiguration: &qbusiness.ApplicationAttachmentsConfigurationArgs{
/// AttachmentsControlMode: pulumi.String("ENABLED"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Application("example", ApplicationArgs.builder()
/// .displayName("example-app")
/// .iamServiceRoleArn(exampleAwsIamRole.arn())
/// .identityCenterInstanceArn(exampleAwsSsoadminInstances.arns()[0])
/// .attachmentsConfiguration(ApplicationAttachmentsConfigurationArgs.builder()
/// .attachmentsControlMode("ENABLED")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:qbusiness:Application
/// properties:
/// displayName: example-app
/// iamServiceRoleArn: ${exampleAwsIamRole.arn}
/// identityCenterInstanceArn: ${exampleAwsSsoadminInstances.arns[0]}
/// attachmentsConfiguration:
/// attachmentsControlMode: ENABLED
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import a Q Business Application using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:qbusiness/application:Application example id-12345678
/// ```
class Application9 extends CustomResource {
  /// ARN of the Q Business application.
  late final Output<String> arn;

  /// Information about whether file upload functionality is activated or deactivated for your end user. See <span pulumi-lang-nodejs="`attachmentsConfiguration`" pulumi-lang-dotnet="`AttachmentsConfiguration`" pulumi-lang-go="`attachmentsConfiguration`" pulumi-lang-python="`attachments_configuration`" pulumi-lang-yaml="`attachmentsConfiguration`" pulumi-lang-java="`attachmentsConfiguration`">`attachments_configuration`</span> below.
  late final Output<ApplicationAttachmentsConfiguration>
      attachmentsConfiguration;

  /// Description of the Amazon Q application.
  late final Output<String?> description;

  /// Name of the Amazon Q application.
  late final Output<String> displayName;

  /// Information about encryption configuration. See <span pulumi-lang-nodejs="`encryptionConfiguration`" pulumi-lang-dotnet="`EncryptionConfiguration`" pulumi-lang-go="`encryptionConfiguration`" pulumi-lang-python="`encryption_configuration`" pulumi-lang-yaml="`encryptionConfiguration`" pulumi-lang-java="`encryptionConfiguration`">`encryption_configuration`</span> below.
  late final Output<ApplicationEncryptionConfiguration?>
      encryptionConfiguration;

  /// ARN of an IAM role with permissions to access your Amazon CloudWatch logs and metrics.
  late final Output<String> iamServiceRoleArn;

  /// ARN of the AWS IAM Identity Center application attached to your Amazon Q Business application.
  late final Output<String> identityCenterApplicationArn;

  /// ARN of the IAM Identity Center instance you are either creating for — or connecting to — your Amazon Q Business application.
  ///
  /// The following arguments are optional:
  late final Output<String> identityCenterInstanceArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<ApplicationTimeouts3?> timeouts;

  Application9(
    String name, {
    ApplicationArgs9? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:qbusiness/application:Application',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.attachmentsConfiguration =
        Output.createUnknown<ApplicationAttachmentsConfiguration>();
    this.description = Output.createUnknown<String?>();
    this.displayName = Output.createUnknown<String>();
    this.encryptionConfiguration =
        Output.createUnknown<ApplicationEncryptionConfiguration?>();
    this.iamServiceRoleArn = Output.createUnknown<String>();
    this.identityCenterApplicationArn = Output.createUnknown<String>();
    this.identityCenterInstanceArn = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<ApplicationTimeouts3?>();
  }
}
