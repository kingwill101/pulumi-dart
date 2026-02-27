// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Account.
class AccountMacie2Args {
  /// Specifies how often to publish updates to policy findings for the account. This includes publishing updates to AWS Security Hub and Amazon EventBridge (formerly called Amazon CloudWatch Events). Valid values are `FIFTEEN_MINUTES`, `ONE_HOUR` or `SIX_HOURS`.
  final pulumi.Input<String>? findingPublishingFrequency;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Specifies the status for the account. To enable Amazon Macie and start all Macie activities for the account, set this value to `ENABLED`. Valid values are `ENABLED` or `PAUSED`.
  final pulumi.Input<String>? status;

  AccountMacie2Args({
    this.findingPublishingFrequency,
    this.region,
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final findingPublishingFrequencyValue = findingPublishingFrequency;
    if (findingPublishingFrequencyValue != null) {
      map['findingPublishingFrequency'] = findingPublishingFrequencyValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory AccountMacie2Args.fromMap(Map<String, dynamic> map) {
    return AccountMacie2Args(
      findingPublishingFrequency: pulumi.Input.asOptionalInput<String>(
          map['findingPublishingFrequency']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      status: pulumi.Input.asOptionalInput<String>(map['status']),
    );
  }
}
