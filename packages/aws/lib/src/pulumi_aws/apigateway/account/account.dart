import 'package:pulumi/pulumi.dart';
import '../account_throttle_setting/account_throttle_setting.dart';
import 'account_args.dart';

/// Provides a settings of an API Gateway Account. Settings is applied region-wide per `provider` block.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import API Gateway Accounts using the account ID. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/account:Account demo 123456789012
/// ```
class Account extends CustomResource {
  /// The version of the API keys used for the account.
  late final Output<String> apiKeyVersion;

  /// ARN of an IAM role for CloudWatch (to allow logging & monitoring). See more [in AWS Docs](https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-stage-settings.html#how-to-stage-settings-console). Logging & monitoring can be enabled/disabled and otherwise tuned on the API Gateway Stage level.
  late final Output<String> cloudwatchRoleArn;

  /// A list of features supported for the account.
  late final Output<List<String>> features;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Account-Level throttle settings. See exported fields below.
  late final Output<List<AccountThrottleSetting>> throttleSettings;

  Account(
    String name, {
    AccountArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/account:Account',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiKeyVersion = registerOutput<String>('apiKeyVersion');
    this.cloudwatchRoleArn = registerOutput<String>('cloudwatchRoleArn');
    this.features = registerOutput<List<String>>('features');
    this.region = registerOutput<String>('region');
    this.throttleSettings =
        registerOutput<List<AccountThrottleSetting>>('throttleSettings');
  }
}
