// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_node_pool_status_condition.dart';

class VMwareNodePoolStatus {
  /// (Output)
  /// ResourceConditions provide a standard mechanism for higher-level status reporting from user cluster controller.
  /// Structure is documented below.
  final List<VMwareNodePoolStatusCondition>? conditions;

  /// (Output)
  /// Human-friendly representation of the error message from the user cluster
  /// controller. The error message can be temporary as the user cluster
  /// controller creates a cluster or node pool. If the error message persists
  /// for a longer period of time, it can be used to surface error message to
  /// indicate real problems requiring user intervention.
  final String? errorMessage;

  /// Creates a new [VMwareNodePoolStatus].
  /// [conditions] (Output)
  /// [errorMessage] (Output)
  VMwareNodePoolStatus({this.conditions, this.errorMessage});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?conditions == null
          ? null
          : pulumi.Input.encodeList<
              VMwareNodePoolStatusCondition,
              Map<String, dynamic>
            >(conditions!, (value) => value.toMap()),
      'errorMessage': ?errorMessage,
    };
  }

  factory VMwareNodePoolStatus.fromMap(Map<String, dynamic> map) {
    return VMwareNodePoolStatus(
      conditions: map['conditions'] == null
          ? null
          : pulumi.Input.decodeList<VMwareNodePoolStatusCondition>(
              map['conditions'],
              (value) => VMwareNodePoolStatusCondition.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      errorMessage: map['errorMessage'] == null
          ? null
          : map['errorMessage'] as String,
    );
  }
}
