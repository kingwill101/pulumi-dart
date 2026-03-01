// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_macie2_account_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_macie2_account_account_args_doc}
class AccountArgs {
  /// Specifies how often to publish updates to policy findings for the account. This includes publishing updates to AWS Security Hub and Amazon EventBridge (formerly called Amazon CloudWatch Events). Valid values are `FIFTEEN_MINUTES`, `ONE_HOUR` or `SIX_HOURS`.
  final pulumi.Input<String>? findingPublishingFrequency;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Specifies the status for the account. To enable Amazon Macie and start all Macie activities for the account, set this value to `ENABLED`. Valid values are `ENABLED` or `PAUSED`.
  final pulumi.Input<String>? status;

  /// Creates a new [AccountArgs].
  /// [findingPublishingFrequency] Specifies how often to publish updates to policy findings for the account. This includes publishing updates to AWS Security Hub and Amazon EventBridge (formerly called Amazon CloudWatch Events). Valid values are `FIFTEEN_MINUTES`, `ONE_HOUR` or `SIX_HOURS`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Specifies the status for the account. To enable Amazon Macie and start all Macie activities for the account, set this value to `ENABLED`. Valid values are `ENABLED` or `PAUSED`.
  AccountArgs({
    String? findingPublishingFrequency,
    String? region,
    String? status,
  }) : findingPublishingFrequency = pulumi.Input.asOptionalInput<String>(
         findingPublishingFrequency,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'findingPublishingFrequency': ?findingPublishingFrequency,
      'region': ?region,
      'status': ?status,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      findingPublishingFrequency: map['findingPublishingFrequency'] == null
          ? null
          : map['findingPublishingFrequency'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
