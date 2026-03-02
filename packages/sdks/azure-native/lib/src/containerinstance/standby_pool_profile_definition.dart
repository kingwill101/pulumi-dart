// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The standby pool profile reference.
class StandbyPoolProfileDefinition {
  /// The flag to determine whether ACI should fail the create request if the container group can not be obtained from standby pool.
  final pulumi.Input<bool>? failContainerGroupCreateOnReuseFailure;
  /// The standby pool profile reference id.This will be an ARM resource id in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StandbyPool/standbyContainerGroupPools/{standbyPoolName}'.
  final pulumi.Input<String>? id;

  /// Creates a new [StandbyPoolProfileDefinition].
  /// [failContainerGroupCreateOnReuseFailure] The flag to determine whether ACI should fail the create request if the container group can not be obtained from standby pool.
  /// [id] The standby pool profile reference id.This will be an ARM resource id in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StandbyPool/standbyContainerGroupPools/{standbyPoolName}'.
  StandbyPoolProfileDefinition({
    this.failContainerGroupCreateOnReuseFailure,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failContainerGroupCreateOnReuseFailure': ?failContainerGroupCreateOnReuseFailure,
      'id': ?id,
    };
  }

  factory StandbyPoolProfileDefinition.fromMap(Map<String, dynamic> map) {
    return StandbyPoolProfileDefinition(
      failContainerGroupCreateOnReuseFailure: map['failContainerGroupCreateOnReuseFailure'] == null ? null : (map['failContainerGroupCreateOnReuseFailure']! as bool).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
    );
  }
}

