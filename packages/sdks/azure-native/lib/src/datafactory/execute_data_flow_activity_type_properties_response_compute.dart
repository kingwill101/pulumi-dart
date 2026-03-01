// ignore_for_file: unused_element, unnecessary_cast


/// Compute properties for data flow activity.
class ExecuteDataFlowActivityTypePropertiesResponseCompute {
  /// Compute type of the cluster which will execute data flow job. Possible values include: 'General', 'MemoryOptimized', 'ComputeOptimized'. Type: string (or Expression with resultType string)
  final dynamic computeType;
  /// Core count of the cluster which will execute data flow job. Supported values are: 8, 16, 32, 48, 80, 144 and 272. Type: integer (or Expression with resultType integer)
  final dynamic coreCount;

  /// Creates a new [ExecuteDataFlowActivityTypePropertiesResponseCompute].
  /// [computeType] Compute type of the cluster which will execute data flow job. Possible values include: 'General', 'MemoryOptimized', 'ComputeOptimized'. Type: string (or Expression with resultType string)
  /// [coreCount] Core count of the cluster which will execute data flow job. Supported values are: 8, 16, 32, 48, 80, 144 and 272. Type: integer (or Expression with resultType integer)
  ExecuteDataFlowActivityTypePropertiesResponseCompute({
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
      computeType: map['computeType'] == null ? null : map['computeType'],
      coreCount: map['coreCount'] == null ? null : map['coreCount'],
    );
  }
}

