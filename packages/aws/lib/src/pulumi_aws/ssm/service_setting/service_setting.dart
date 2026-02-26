import 'package:pulumi/pulumi.dart';
import 'service_setting_args.dart';

/// This setting defines how a user interacts with or uses a service or a feature of a service.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testSetting = new aws.ssm.ServiceSetting("test_setting", {
/// settingId: "arn:aws:ssm:us-east-1:123456789012:servicesetting/ssm/parameter-store/high-throughput-enabled",
/// settingValue: "true",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_setting = aws.ssm.ServiceSetting("test_setting",
/// setting_id="arn:aws:ssm:us-east-1:123456789012:servicesetting/ssm/parameter-store/high-throughput-enabled",
/// setting_value="true")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var testSetting = new Aws.Ssm.ServiceSetting("test_setting", new()
/// {
/// SettingId = "arn:aws:ssm:us-east-1:123456789012:servicesetting/ssm/parameter-store/high-throughput-enabled",
/// SettingValue = "true",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ssm.NewServiceSetting(ctx, "test_setting", &ssm.ServiceSettingArgs{
/// SettingId:    pulumi.String("arn:aws:ssm:us-east-1:123456789012:servicesetting/ssm/parameter-store/high-throughput-enabled"),
/// SettingValue: pulumi.String("true"),
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
/// import com.pulumi.aws.ssm.ServiceSetting;
/// import com.pulumi.aws.ssm.ServiceSettingArgs;
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
/// var testSetting = new ServiceSetting("testSetting", ServiceSettingArgs.builder()
/// .settingId("arn:aws:ssm:us-east-1:123456789012:servicesetting/ssm/parameter-store/high-throughput-enabled")
/// .settingValue("true")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testSetting:
/// type: aws:ssm:ServiceSetting
/// name: test_setting
/// properties:
/// settingId: arn:aws:ssm:us-east-1:123456789012:servicesetting/ssm/parameter-store/high-throughput-enabled
/// settingValue: 'true'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import AWS SSM Service Setting using the <span pulumi-lang-nodejs="`settingId`" pulumi-lang-dotnet="`SettingId`" pulumi-lang-go="`settingId`" pulumi-lang-python="`setting_id`" pulumi-lang-yaml="`settingId`" pulumi-lang-java="`settingId`">`setting_id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ssm/serviceSetting:ServiceSetting example arn:aws:ssm:us-east-1:123456789012:servicesetting/ssm/parameter-store/high-throughput-enabled
/// ```
class ServiceSetting extends CustomResource {
  /// ARN of the service setting.
  late final Output<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID of the service setting. Valid values are shown in the [AWS documentation](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_GetServiceSetting.html#API_GetServiceSetting_RequestSyntax).
  late final Output<String> settingId;

  /// Value of the service setting.
  late final Output<String> settingValue;

  /// Status of the service setting. Value can be `Default`, `Customized` or `PendingUpdate`.
  late final Output<String> status;

  ServiceSetting(
    String name, {
    ServiceSettingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssm/serviceSetting:ServiceSetting',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.settingId = Output.createUnknown<String>();
    this.settingValue = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
  }
}
