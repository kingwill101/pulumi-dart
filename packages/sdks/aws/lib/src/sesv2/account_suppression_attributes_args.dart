// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sesv2_account_suppression_attributes_account_suppression_attributes_args_doc}
/// The set of arguments for AccountSuppressionAttributes.
/// {@endtemplate}
/// {@macro pulumi_sesv2_account_suppression_attributes_account_suppression_attributes_args_doc}
class AccountSuppressionAttributesArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A list that contains the reasons that email addresses will be automatically added to the suppression list for your account. Valid values: `COMPLAINT`, `BOUNCE`.
  final pulumi.Input<List<String>> suppressedReasons;

  /// Creates a new [AccountSuppressionAttributesArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [suppressedReasons] A list that contains the reasons that email addresses will be automatically added to the suppression list for your account. Valid values: `COMPLAINT`, `BOUNCE`.
  AccountSuppressionAttributesArgs({
    this.region,
    required this.suppressedReasons,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'suppressedReasons': suppressedReasons,
    };
  }

  factory AccountSuppressionAttributesArgs.fromMap(Map<String, dynamic> map) {
    return AccountSuppressionAttributesArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suppressedReasons: pulumi.Input.fromValue((map['suppressedReasons'] as List).cast<String>()),
    );
  }
}

