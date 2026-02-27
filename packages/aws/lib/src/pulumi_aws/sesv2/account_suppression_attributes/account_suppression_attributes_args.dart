// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AccountSuppressionAttributes.
class AccountSuppressionAttributesArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A list that contains the reasons that email addresses will be automatically added to the suppression list for your account. Valid values: `COMPLAINT`, `BOUNCE`.
  final pulumi.Input<List<String>> suppressedReasons;

  AccountSuppressionAttributesArgs({
    this.region,
    required this.suppressedReasons,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['suppressedReasons'] = suppressedReasons;
    return map;
  }

  factory AccountSuppressionAttributesArgs.fromMap(Map<String, dynamic> map) {
    return AccountSuppressionAttributesArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      suppressedReasons:
          pulumi.Input.asInput<List<String>>(map['suppressedReasons']),
    );
  }
}
