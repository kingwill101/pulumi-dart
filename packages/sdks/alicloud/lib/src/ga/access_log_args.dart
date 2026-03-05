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
    required this.acceleratorId,
    required this.endpointGroupId,
    required this.listenerId,
    required this.slsLogStoreName,
    required this.slsProjectName,
    required this.slsRegionId,
  });

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
      acceleratorId: pulumi.Input.fromValue(map['acceleratorId'] as String),
      endpointGroupId: pulumi.Input.fromValue(map['endpointGroupId'] as String),
      listenerId: pulumi.Input.fromValue(map['listenerId'] as String),
      slsLogStoreName: pulumi.Input.fromValue(map['slsLogStoreName'] as String),
      slsProjectName: pulumi.Input.fromValue(map['slsProjectName'] as String),
      slsRegionId: pulumi.Input.fromValue(map['slsRegionId'] as String),
    );
  }
}

