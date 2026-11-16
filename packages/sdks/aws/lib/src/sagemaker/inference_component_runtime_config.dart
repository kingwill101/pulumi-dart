// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inference_component_runtime_config_placement_status.dart';

class InferenceComponentRuntimeConfig {
  /// Number of runtime copies of the model container to deploy.
  final pulumi.Input<int> copyCount;
  /// Number of copies placed on this instance type.
  final pulumi.Input<int?>? currentCopyCount;
  /// Number of runtime copies requested.
  final pulumi.Input<int?>? desiredCopyCount;
  /// Placement status of the inference component copies across instance types. See below.
  final pulumi.Input<List<InferenceComponentRuntimeConfigPlacementStatus>?>? placementStatuses;

  /// Creates a new [InferenceComponentRuntimeConfig].
  /// [copyCount] Number of runtime copies of the model container to deploy.
  /// [currentCopyCount] Number of copies placed on this instance type.
  /// [desiredCopyCount] Number of runtime copies requested.
  /// [placementStatuses] Placement status of the inference component copies across instance types. See below.
  const InferenceComponentRuntimeConfig({
    required this.copyCount,
    this.currentCopyCount,
    this.desiredCopyCount,
    this.placementStatuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyCount': copyCount,
      'currentCopyCount': ?currentCopyCount,
      'desiredCopyCount': ?desiredCopyCount,
      'placementStatuses': ?pulumi.Input.mapOptionalInputValue<List<InferenceComponentRuntimeConfigPlacementStatus>, List<Map<String, dynamic>>>(placementStatuses, (value) => pulumi.Input.encodeList<InferenceComponentRuntimeConfigPlacementStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InferenceComponentRuntimeConfig.fromMap(Map<String, dynamic> map) {
    return InferenceComponentRuntimeConfig(
      copyCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['copyCount'])),
      currentCopyCount: (() { final guardedValue = map['currentCopyCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      desiredCopyCount: (() { final guardedValue = map['desiredCopyCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      placementStatuses: (() { final guardedValue = map['placementStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InferenceComponentRuntimeConfigPlacementStatus>(guardedValue, (value) => InferenceComponentRuntimeConfigPlacementStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
