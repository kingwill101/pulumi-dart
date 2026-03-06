// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Compute properties for data flow activity.
class ExecuteDataFlowActivityTypePropertiesResponseCompute {
  /// Compute type of the cluster which will execute data flow job. Possible values include: 'General', 'MemoryOptimized', 'ComputeOptimized'. Type: string (or Expression with resultType string)
  final pulumi.Input<dynamic>? computeType;
  /// Core count of the cluster which will execute data flow job. Supported values are: 8, 16, 32, 48, 80, 144 and 272. Type: integer (or Expression with resultType integer)
  final pulumi.Input<dynamic>? coreCount;

  /// Creates a new [ExecuteDataFlowActivityTypePropertiesResponseCompute].
  /// [computeType] Compute type of the cluster which will execute data flow job. Possible values include: 'General', 'MemoryOptimized', 'ComputeOptimized'. Type: string (or Expression with resultType string)
  /// [coreCount] Core count of the cluster which will execute data flow job. Supported values are: 8, 16, 32, 48, 80, 144 and 272. Type: integer (or Expression with resultType integer)
  const ExecuteDataFlowActivityTypePropertiesResponseCompute({
    this.computeType,
    this.coreCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeType': ?computeType,
      'coreCount': ?coreCount,
    };
  }

  factory ExecuteDataFlowActivityTypePropertiesResponseCompute.fromMap(Map<String, dynamic> map) {
    return ExecuteDataFlowActivityTypePropertiesResponseCompute(
      computeType: (() { final guardedValue = map['computeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      coreCount: (() { final guardedValue = map['coreCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}

