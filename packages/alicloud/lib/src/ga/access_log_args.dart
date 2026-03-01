// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_access_log_access_log_args_doc}
/// The set of arguments for AccessLog.
/// {@endtemplate}
/// {@macro pulumi_ga_access_log_access_log_args_doc}
class AccessLogArgs {
  /// The ID of the global acceleration instance.
  final pulumi.Input<String> acceleratorId;
  /// The ID of the endpoint group instance.
  final pulumi.Input<String> endpointGroupId;
  /// The ID of the listener.
  final pulumi.Input<String> listenerId;
  /// The name of the Log Store.
  final pulumi.Input<String> slsLogStoreName;
  /// The name of the Log Service project.
  final pulumi.Input<String> slsProjectName;
  /// The region ID of the Log Service project.
  final pulumi.Input<String> slsRegionId;

  /// Creates a new [AccessLogArgs].
  /// [acceleratorId] The ID of the global acceleration instance.
  /// [endpointGroupId] The ID of the endpoint group instance.
  /// [listenerId] The ID of the listener.
  /// [slsLogStoreName] The name of the Log Store.
  /// [slsProjectName] The name of the Log Service project.
  /// [slsRegionId] The region ID of the Log Service project.
  AccessLogArgs({
    required String acceleratorId,
    required String endpointGroupId,
    required String listenerId,
    required String slsLogStoreName,
    required String slsProjectName,
    required String slsRegionId,
  }) :
      acceleratorId = pulumi.Input.asInput<String>(acceleratorId),
      endpointGroupId = pulumi.Input.asInput<String>(endpointGroupId),
      listenerId = pulumi.Input.asInput<String>(listenerId),
      slsLogStoreName = pulumi.Input.asInput<String>(slsLogStoreName),
      slsProjectName = pulumi.Input.asInput<String>(slsProjectName),
      slsRegionId = pulumi.Input.asInput<String>(slsRegionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'endpointGroupId': endpointGroupId,
      'listenerId': listenerId,
      'slsLogStoreName': slsLogStoreName,
      'slsProjectName': slsProjectName,
      'slsRegionId': slsRegionId,
    };
  }

  factory AccessLogArgs.fromMap(Map<String, dynamic> map) {
    return AccessLogArgs(
      acceleratorId: map['acceleratorId'] as String,
      endpointGroupId: map['endpointGroupId'] as String,
      listenerId: map['listenerId'] as String,
      slsLogStoreName: map['slsLogStoreName'] as String,
      slsProjectName: map['slsProjectName'] as String,
      slsRegionId: map['slsRegionId'] as String,
    );
  }
}

