// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkGrant resources.
class NetworkGrantState {
  /// The ID of the CCN instance.
  final pulumi.Input<String>? ccnId;
  /// The ID of the CEN instance.
  final pulumi.Input<String>? cenId;
  /// The ID of the account to which the CEN instance belongs.
  final pulumi.Input<String>? cenUid;

  /// Creates a new [NetworkGrantState].
  /// [ccnId] The ID of the CCN instance.
  /// [cenId] The ID of the CEN instance.
  /// [cenUid] The ID of the account to which the CEN instance belongs.
  NetworkGrantState({
    this.ccnId,
    this.cenId,
    this.cenUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ccnId': ?ccnId,
      'cenId': ?cenId,
      'cenUid': ?cenUid,
    };
  }

  factory NetworkGrantState.fromMap(Map<String, dynamic> map) {
    return NetworkGrantState(
      ccnId: (() { final guardedValue = map['ccnId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cenId: (() { final guardedValue = map['cenId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cenUid: (() { final guardedValue = map['cenUid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

