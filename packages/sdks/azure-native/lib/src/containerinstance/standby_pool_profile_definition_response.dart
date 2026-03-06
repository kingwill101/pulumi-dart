// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The standby pool profile reference.
class StandbyPoolProfileDefinitionResponse {
  /// The flag to determine whether ACI should fail the create request if the container group can not be obtained from standby pool.
  final pulumi.Input<bool>? failContainerGroupCreateOnReuseFailure;
  /// The standby pool profile reference id.This will be an ARM resource id in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StandbyPool/standbyContainerGroupPools/{standbyPoolName}'.
  final pulumi.Input<String>? id;

  /// Creates a new [StandbyPoolProfileDefinitionResponse].
  /// [failContainerGroupCreateOnReuseFailure] The flag to determine whether ACI should fail the create request if the container group can not be obtained from standby pool.
  /// [id] The standby pool profile reference id.This will be an ARM resource id in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StandbyPool/standbyContainerGroupPools/{standbyPoolName}'.
  const StandbyPoolProfileDefinitionResponse({
    this.failContainerGroupCreateOnReuseFailure,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failContainerGroupCreateOnReuseFailure': ?failContainerGroupCreateOnReuseFailure,
      'id': ?id,
    };
  }

  factory StandbyPoolProfileDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return StandbyPoolProfileDefinitionResponse(
      failContainerGroupCreateOnReuseFailure: (() { final guardedValue = map['failContainerGroupCreateOnReuseFailure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

