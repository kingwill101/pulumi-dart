// ignore_for_file: unused_element, unnecessary_cast


/// The standby pool profile reference.
class StandbyPoolProfileDefinitionResponse {
  /// The flag to determine whether ACI should fail the create request if the container group can not be obtained from standby pool.
  final bool? failContainerGroupCreateOnReuseFailure;
  /// The standby pool profile reference id.This will be an ARM resource id in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StandbyPool/standbyContainerGroupPools/{standbyPoolName}'.
  final String? id;

  /// Creates a new [StandbyPoolProfileDefinitionResponse].
  /// [failContainerGroupCreateOnReuseFailure] The flag to determine whether ACI should fail the create request if the container group can not be obtained from standby pool.
  /// [id] The standby pool profile reference id.This will be an ARM resource id in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StandbyPool/standbyContainerGroupPools/{standbyPoolName}'.
  StandbyPoolProfileDefinitionResponse({
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
      failContainerGroupCreateOnReuseFailure: map['failContainerGroupCreateOnReuseFailure'] == null ? null : map['failContainerGroupCreateOnReuseFailure'] as bool,
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

