// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InviteAccepter resources.
class InviteAccepterState {
  /// The detector ID of the member GuardDuty account.
  final pulumi.Input<String>? detectorId;

  /// AWS account ID for primary account.
  final pulumi.Input<String>? masterAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [InviteAccepterState].
  /// [detectorId] The detector ID of the member GuardDuty account.
  /// [masterAccountId] AWS account ID for primary account.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  InviteAccepterState({this.detectorId, this.masterAccountId, this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detectorId': ?detectorId,
      'masterAccountId': ?masterAccountId,
      'region': ?region,
    };
  }

  factory InviteAccepterState.fromMap(Map<String, dynamic> map) {
    return InviteAccepterState(
      detectorId: (() {
        final guardedValue = map['detectorId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      masterAccountId: (() {
        final guardedValue = map['masterAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
