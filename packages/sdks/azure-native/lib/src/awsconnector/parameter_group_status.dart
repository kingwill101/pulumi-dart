// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ParameterGroupStatus
class ParameterGroupStatus {
  /// &lt;p&gt;The node IDs of one or more nodes to be rebooted.&lt;/p&gt;
  final pulumi.Input<List<String>?>? nodeIdsToReboot;
  /// &lt;p&gt;The status of parameter updates. &lt;/p&gt;
  final pulumi.Input<String?>? parameterApplyStatus;
  /// &lt;p&gt;The name of the parameter group.&lt;/p&gt;
  final pulumi.Input<String?>? parameterGroupName;

  /// Creates a new [ParameterGroupStatus].
  /// [nodeIdsToReboot] &lt;p&gt;The node IDs of one or more nodes to be rebooted.&lt;/p&gt;
  /// [parameterApplyStatus] &lt;p&gt;The status of parameter updates. &lt;/p&gt;
  /// [parameterGroupName] &lt;p&gt;The name of the parameter group.&lt;/p&gt;
  const ParameterGroupStatus({
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
      nodeIdsToReboot: (() { final guardedValue = map['nodeIdsToReboot']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      parameterApplyStatus: (() { final guardedValue = map['parameterApplyStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterGroupName: (() { final guardedValue = map['parameterGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
