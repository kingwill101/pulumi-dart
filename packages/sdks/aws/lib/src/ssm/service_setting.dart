import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_setting_args.dart';
import 'service_setting_state.dart';

/// This setting defines how a user interacts with or uses a service or a feature of a service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testSetting = new aws.ssm.ServiceSetting("test_setting", {
///     settingId: "arn:aws:ssm:us-east-1:123456789012:servicesetting/ssm/parameter-store/high-throughput-enabled",
///     settingValue: "true",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_setting = aws.ssm.ServiceSetting("test_setting",
///     setting_id="arn:aws:ssm:us-east-1:123456789012:servicesetting/ssm/parameter-store/high-throughput-enabled",
///     setting_value="true")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testSetting = new Aws.Ssm.ServiceSetting("test_setting", new()
///     {
///         SettingId = "arn:aws:ssm:us-east-1:123456789012:servicesetting/ssm/parameter-store/high-throughput-enabled",
///         SettingValue = "true",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssm.NewServiceSetting(ctx, "test_setting", &ssm.ServiceSettingArgs{
/// 			SettingId:    pulumi.String("arn:aws:ssm:us-east-1:123456789012:servicesetting/ssm/parameter-store/high-throughput-enabled"),
/// 			SettingValue: pulumi.String("true"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var testSetting = new ServiceSetting("testSetting", ServiceSettingArgs.builder()
///             .settingId("arn:aws:ssm:us-east-1:123456789012:servicesetting/ssm/parameter-store/high-throughput-enabled")
///             .settingValue("true")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testSetting:
///     type: aws:ssm:ServiceSetting
///     name: test_setting
///     properties:
///       settingId: arn:aws:ssm:us-east-1:123456789012:servicesetting/ssm/parameter-store/high-throughput-enabled
///       settingValue: 'true'
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS SSM Service Setting using the `setting_id`. For example:
///
/// ```sh
/// $ pulumi import aws:ssm/serviceSetting:ServiceSetting example arn:aws:ssm:us-east-1:123456789012:servicesetting/ssm/parameter-store/high-throughput-enabled
/// ```
class ServiceSetting extends pulumi.CustomResource {
  /// ARN of the service setting.
  late final pulumi.Output<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ID of the service setting. Valid values are shown in the [AWS documentation](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_GetServiceSetting.html#API_GetServiceSetting_RequestSyntax).
  late final pulumi.Output<String> settingId;

  /// Value of the service setting.
  late final pulumi.Output<String> settingValue;

  /// Status of the service setting. Value can be `Default`, `Customized` or `PendingUpdate`.
  late final pulumi.Output<String> status;

  /// Creates a new [ServiceSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceSetting]. {@macro pulumi_ssm_service_setting_service_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceSetting(
    String name, {
    ServiceSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ssm/serviceSetting:ServiceSetting',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    region = registerOutput<String>('region');
    settingId = registerOutput<String>('settingId');
    settingValue = registerOutput<String>('settingValue');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [ServiceSetting] resource's state with the given [name] and [id].
  static ServiceSetting get(
    String name,
    pulumi.Input<String> id, {
    ServiceSettingState? state,
  }) {
    return ServiceSetting._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServiceSetting._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ssm/serviceSetting:ServiceSetting',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    region = registerOutput<String>('region');
    settingId = registerOutput<String>('settingId');
    settingValue = registerOutput<String>('settingValue');
    status = registerOutput<String>('status');
  }
}
