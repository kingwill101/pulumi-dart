// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_node_pool_status_condition.dart';

class BareMetalNodePoolStatus {
  /// (Output)
  /// ResourceConditions provide a standard mechanism for higher-level status reporting from user cluster controller.
  /// Structure is documented below.
  final List<BareMetalNodePoolStatusCondition>? conditions;

  /// (Output)
  /// Human-friendly representation of the error message from the user cluster
  /// controller. The error message can be temporary as the user cluster
  /// controller creates a cluster or node pool. If the error message persists
  /// for a longer period of time, it can be used to surface error message to
  /// indicate real problems requiring user intervention.
  final String? errorMessage;

  /// Creates a new [BareMetalNodePoolStatus].
  /// [conditions] (Output)
  /// [errorMessage] (Output)
  BareMetalNodePoolStatus({this.conditions, this.errorMessage});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?conditions == null
          ? null
          : pulumi.Input.encodeList<
              BareMetalNodePoolStatusCondition,
              Map<String, dynamic>
            >(conditions!, (value) => value.toMap()),
      'errorMessage': ?errorMessage,
    };
  }

  factory BareMetalNodePoolStatus.fromMap(Map<String, dynamic> map) {
    return BareMetalNodePoolStatus(
      conditions: map['conditions'] == null
          ? null
          : pulumi.Input.decodeList<BareMetalNodePoolStatusCondition>(
              map['conditions'],
              (value) => BareMetalNodePoolStatusCondition.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      errorMessage: map['errorMessage'] == null
          ? null
          : map['errorMessage'] as String,
    );
  }
}
