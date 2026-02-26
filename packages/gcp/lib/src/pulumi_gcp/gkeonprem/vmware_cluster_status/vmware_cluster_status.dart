// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vmware_cluster_status_condition/vmware_cluster_status_condition.dart';

class VMwareClusterStatus {
  /// (Output)
  /// ResourceConditions provide a standard mechanism for higher-level status reporting from user cluster controller.
  /// Structure is documented below.
  final List<VMwareClusterStatusCondition>? conditions;

  /// (Output)
  /// Human-friendly representation of the error message from the user cluster
  /// controller. The error message can be temporary as the user cluster
  /// controller creates a cluster or node pool. If the error message persists
  /// for a longer period of time, it can be used to surface error message to
  /// indicate real problems requiring user intervention.
  final String? errorMessage;

  VMwareClusterStatus({
    this.conditions,
    this.errorMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionsValue = conditions;
    if (conditionsValue != null) {
      map['conditions'] =
          Input.encodeList<VMwareClusterStatusCondition, Map<String, dynamic>>(
              conditionsValue, (value) => value.toMap());
    }
    final errorMessageValue = errorMessage;
    if (errorMessageValue != null) {
      map['errorMessage'] = errorMessageValue;
    }
    return map;
  }

  factory VMwareClusterStatus.fromMap(Map<String, dynamic> map) {
    return VMwareClusterStatus(
      conditions: map['conditions'] == null
          ? null
          : Input.decodeList<VMwareClusterStatusCondition>(
              map['conditions'],
              (value) => VMwareClusterStatusCondition.fromMap(
                  (value as Map).cast<String, dynamic>())),
      errorMessage:
          map['errorMessage'] == null ? null : map['errorMessage'] as String,
    );
  }
}
