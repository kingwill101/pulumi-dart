// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Account resources.
class AccountState {
  /// The date and time, in UTC and extended RFC 3339 format, when the Amazon Macie account was created.
  final pulumi.Input<String>? createdAt;
  /// Specifies how often to publish updates to policy findings for the account. This includes publishing updates to AWS Security Hub and Amazon EventBridge (formerly called Amazon CloudWatch Events). Valid values are `FIFTEEN_MINUTES`, `ONE_HOUR` or `SIX_HOURS`.
  final pulumi.Input<String>? findingPublishingFrequency;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of the service-linked role that allows Macie to monitor and analyze data in AWS resources for the account.
  final pulumi.Input<String>? serviceRole;
  /// Specifies the status for the account. To enable Amazon Macie and start all Macie activities for the account, set this value to `ENABLED`. Valid values are `ENABLED` or `PAUSED`.
  final pulumi.Input<String>? status;
  /// The date and time, in UTC and extended RFC 3339 format, of the most recent change to the status of the Macie account.
  final pulumi.Input<String>? updatedAt;

  /// Creates a new [AccountState].
  /// [createdAt] The date and time, in UTC and extended RFC 3339 format, when the Amazon Macie account was created.
  /// [findingPublishingFrequency] Specifies how often to publish updates to policy findings for the account. This includes publishing updates to AWS Security Hub and Amazon EventBridge (formerly called Amazon CloudWatch Events). Valid values are `FIFTEEN_MINUTES`, `ONE_HOUR` or `SIX_HOURS`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceRole] The Amazon Resource Name (ARN) of the service-linked role that allows Macie to monitor and analyze data in AWS resources for the account.
  /// [status] Specifies the status for the account. To enable Amazon Macie and start all Macie activities for the account, set this value to `ENABLED`. Valid values are `ENABLED` or `PAUSED`.
  /// [updatedAt] The date and time, in UTC and extended RFC 3339 format, of the most recent change to the status of the Macie account.
  AccountState({
    this.createdAt,
    this.findingPublishingFrequency,
    this.region,
    this.serviceRole,
    this.status,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'findingPublishingFrequency': ?findingPublishingFrequency,
      'region': ?region,
      'serviceRole': ?serviceRole,
      'status': ?status,
      'updatedAt': ?updatedAt,
    };
  }

  factory AccountState.fromMap(Map<String, dynamic> map) {
    return AccountState(
      createdAt: map['createdAt'] == null ? null : ((map['createdAt'] as String).input()).input(),
      findingPublishingFrequency: map['findingPublishingFrequency'] == null ? null : ((map['findingPublishingFrequency'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      serviceRole: map['serviceRole'] == null ? null : ((map['serviceRole'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      updatedAt: map['updatedAt'] == null ? null : ((map['updatedAt'] as String).input()).input(),
    );
  }
}

