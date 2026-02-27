import 'package:pulumi/pulumi.dart';
import '../log_delivery_configuration_log_configuration/log_delivery_configuration_log_configuration.dart';
import 'log_delivery_configuration_args.dart';

/// Manages an AWS Cognito IDP (Identity Provider) Log Delivery Configuration.
///
/// ## Example Usage
///
/// ### Basic Usage with CloudWatch Logs
///
///
///
/// ### Multiple Log Configurations with Different Destinations
///
///
///
/// ### S3 Configuration
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `user_pool_id` (String) ID of the Cognito User Pool.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Cognito IDP (Identity Provider) Log Delivery Configuration using the `user_pool_id`. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/logDeliveryConfiguration:LogDeliveryConfiguration example us-west-2_example123
/// ```
class LogDeliveryConfiguration extends CustomResource {
  /// Configuration block for log delivery. At least one configuration block is required. See Log Configurations below.
  late final Output<List<LogDeliveryConfigurationLogConfiguration>>
      logConfigurations;

  /// The AWS region.
  late final Output<String> region;

  /// The ID of the user pool for which to configure log delivery.
  ///
  /// The following arguments are optional:
  late final Output<String> userPoolId;

  LogDeliveryConfiguration(
    String name, {
    LogDeliveryConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cognito/logDeliveryConfiguration:LogDeliveryConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.logConfigurations =
        registerOutput<List<LogDeliveryConfigurationLogConfiguration>>(
            'logConfigurations');
    this.region = registerOutput<String>('region');
    this.userPoolId = registerOutput<String>('userPoolId');
  }
}
