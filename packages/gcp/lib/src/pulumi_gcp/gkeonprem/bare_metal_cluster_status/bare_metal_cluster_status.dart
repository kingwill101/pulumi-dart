// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bare_metal_cluster_status_condition/bare_metal_cluster_status_condition.dart';

class BareMetalClusterStatus {
  /// (Output)
  /// ResourceConditions provide a standard mechanism for higher-level status reporting from user cluster controller.
  /// Structure is documented below.
  final List<BareMetalClusterStatusCondition>? conditions;

  /// (Output)
  /// Human-friendly representation of the error message from the user cluster
  /// controller. The error message can be temporary as the user cluster
  /// controller creates a cluster or node pool. If the error message persists
  /// for a longer period of time, it can be used to surface error message to
  /// indicate real problems requiring user intervention.
  final String? errorMessage;

  BareMetalClusterStatus({
    this.conditions,
    this.errorMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionsValue = conditions;
    if (conditionsValue != null) {
      map['conditions'] = Input.encodeList<BareMetalClusterStatusCondition,
          Map<String, dynamic>>(conditionsValue, (value) => value.toMap());
    }
    final errorMessageValue = errorMessage;
    if (errorMessageValue != null) {
      map['errorMessage'] = errorMessageValue;
    }
    return map;
  }

  factory BareMetalClusterStatus.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterStatus(
      conditions: map['conditions'] == null
          ? null
          : Input.decodeList<BareMetalClusterStatusCondition>(
              map['conditions'],
              (value) => BareMetalClusterStatusCondition.fromMap(
                  (value as Map).cast<String, dynamic>())),
      errorMessage:
          map['errorMessage'] == null ? null : map['errorMessage'] as String,
    );
  }
}
