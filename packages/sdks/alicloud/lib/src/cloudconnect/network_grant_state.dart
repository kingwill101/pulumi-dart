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
    pulumi.Output<String>? ccnId,
    pulumi.Output<String>? cenId,
    pulumi.Output<String>? cenUid,
  }) :
      ccnId = pulumi.Input.asOptionalInput<String>(ccnId),
      cenId = pulumi.Input.asOptionalInput<String>(cenId),
      cenUid = pulumi.Input.asOptionalInput<String>(cenUid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ccnId': ?ccnId,
      'cenId': ?cenId,
      'cenUid': ?cenUid,
    };
  }

  factory NetworkGrantState.fromMap(Map<String, dynamic> map) {
    return NetworkGrantState(
      ccnId: map['ccnId'] == null ? null : pulumi.Output.create<String>(map['ccnId'] as String),
      cenId: map['cenId'] == null ? null : pulumi.Output.create<String>(map['cenId'] as String),
      cenUid: map['cenUid'] == null ? null : pulumi.Output.create<String>(map['cenUid'] as String),
    );
  }
}

