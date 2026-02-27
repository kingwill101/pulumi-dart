import 'package:pulumi/pulumi.dart';
import 'service_setting_args.dart';

/// This setting defines how a user interacts with or uses a service or a feature of a service.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS SSM Service Setting using the `setting_id`. For example:
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
    this.arn = registerOutput<String>('arn');
    this.region = registerOutput<String>('region');
    this.settingId = registerOutput<String>('settingId');
    this.settingValue = registerOutput<String>('settingValue');
    this.status = registerOutput<String>('status');
  }
}
