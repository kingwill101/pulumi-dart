// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccountSuppressionAttributes resources.
class AccountSuppressionAttributesState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A list that contains the reasons that email addresses will be automatically added to the suppression list for your account. Valid values: `COMPLAINT`, `BOUNCE`.
  final pulumi.Input<List<String>>? suppressedReasons;

  /// Creates a new [AccountSuppressionAttributesState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [suppressedReasons] A list that contains the reasons that email addresses will be automatically added to the suppression list for your account. Valid values: `COMPLAINT`, `BOUNCE`.
  AccountSuppressionAttributesState({this.region, this.suppressedReasons});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'suppressedReasons': ?suppressedReasons,
    };
  }

  factory AccountSuppressionAttributesState.fromMap(Map<String, dynamic> map) {
    return AccountSuppressionAttributesState(
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      suppressedReasons: (() {
        final guardedValue = map['suppressedReasons'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
