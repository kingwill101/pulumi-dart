// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InstanceGrant resources.
class InstanceGrantState {
  /// The ID of the CEN.
  final pulumi.Input<String>? cenId;
  /// The owner UID of the  CEN which the child instance granted to.
  final pulumi.Input<String>? cenOwnerId;
  /// The ID of the child instance to grant.
  final pulumi.Input<String>? childInstanceId;

  /// Creates a new [InstanceGrantState].
  /// [cenId] The ID of the CEN.
  /// [cenOwnerId] The owner UID of the  CEN which the child instance granted to.
  /// [childInstanceId] The ID of the child instance to grant.
  InstanceGrantState({
    this.cenId,
    this.cenOwnerId,
    this.childInstanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': ?cenId,
      'cenOwnerId': ?cenOwnerId,
      'childInstanceId': ?childInstanceId,
    };
  }

  factory InstanceGrantState.fromMap(Map<String, dynamic> map) {
    return InstanceGrantState(
      cenId: map['cenId'] == null ? null : (map['cenId']! as String).input(),
      cenOwnerId: map['cenOwnerId'] == null ? null : (map['cenOwnerId']! as String).input(),
      childInstanceId: map['childInstanceId'] == null ? null : (map['childInstanceId']! as String).input(),
    );
  }
}

