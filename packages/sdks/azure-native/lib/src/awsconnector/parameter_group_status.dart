// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ParameterGroupStatus
class ParameterGroupStatus {
  /// <p>The node IDs of one or more nodes to be rebooted.</p>
  final List<String>? nodeIdsToReboot;
  /// <p>The status of parameter updates. </p>
  final String? parameterApplyStatus;
  /// <p>The name of the parameter group.</p>
  final String? parameterGroupName;

  /// Creates a new [ParameterGroupStatus].
  /// [nodeIdsToReboot] <p>The node IDs of one or more nodes to be rebooted.</p>
  /// [parameterApplyStatus] <p>The status of parameter updates. </p>
  /// [parameterGroupName] <p>The name of the parameter group.</p>
  ParameterGroupStatus({
    this.nodeIdsToReboot,
    this.parameterApplyStatus,
    this.parameterGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeIdsToReboot': ?nodeIdsToReboot,
      'parameterApplyStatus': ?parameterApplyStatus,
      'parameterGroupName': ?parameterGroupName,
    };
  }

  factory ParameterGroupStatus.fromMap(Map<String, dynamic> map) {
    return ParameterGroupStatus(
      nodeIdsToReboot: map['nodeIdsToReboot'] == null ? null : (map['nodeIdsToReboot'] as List).cast<String>(),
      parameterApplyStatus: map['parameterApplyStatus'] == null ? null : map['parameterApplyStatus'] as String,
      parameterGroupName: map['parameterGroupName'] == null ? null : map['parameterGroupName'] as String,
    );
  }
}

