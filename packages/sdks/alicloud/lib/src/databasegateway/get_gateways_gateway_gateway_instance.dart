// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewaysGatewayGatewayInstance {
  /// The connection type of Gateway instance.
  final pulumi.Input<String> connectEndpointType;
  /// The process of version number of Gateway instance.
  final pulumi.Input<String> currentDaemonVersion;
  /// The version of Gateway instance.
  final pulumi.Input<String> currentVersion;
  /// The endpoint address of Gateway instance.
  final pulumi.Input<String> endPoint;
  /// The id of Gateway instance.
  final pulumi.Input<String> gatewayInstanceId;
  /// The status of Gateway instance. Valid values: `EXCEPTION`, `NEW`, `RUNNING`, `STOPPED`.
  final pulumi.Input<String> gatewayInstanceStatus;
  /// The last Updated time stamp of Gateway instance.
  final pulumi.Input<String> lastUpdateTime;
  /// The Local IP ADDRESS of Gateway instance.
  final pulumi.Input<String> localIp;
  /// The prompt information of Gateway instance.
  final pulumi.Input<String> message;
  /// The host of Gateway instance.
  final pulumi.Input<String> outputIp;

  /// Creates a new [GetGatewaysGatewayGatewayInstance].
  /// [connectEndpointType] The connection type of Gateway instance.
  /// [currentDaemonVersion] The process of version number of Gateway instance.
  /// [currentVersion] The version of Gateway instance.
  /// [endPoint] The endpoint address of Gateway instance.
  /// [gatewayInstanceId] The id of Gateway instance.
  /// [gatewayInstanceStatus] The status of Gateway instance. Valid values: `EXCEPTION`, `NEW`, `RUNNING`, `STOPPED`.
  /// [lastUpdateTime] The last Updated time stamp of Gateway instance.
  /// [localIp] The Local IP ADDRESS of Gateway instance.
  /// [message] The prompt information of Gateway instance.
  /// [outputIp] The host of Gateway instance.
  GetGatewaysGatewayGatewayInstance({
    required this.connectEndpointType,
    required this.currentDaemonVersion,
    required this.currentVersion,
    required this.endPoint,
    required this.gatewayInstanceId,
    required this.gatewayInstanceStatus,
    required this.lastUpdateTime,
    required this.localIp,
    required this.message,
    required this.outputIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectEndpointType': connectEndpointType,
      'currentDaemonVersion': currentDaemonVersion,
      'currentVersion': currentVersion,
      'endPoint': endPoint,
      'gatewayInstanceId': gatewayInstanceId,
      'gatewayInstanceStatus': gatewayInstanceStatus,
      'lastUpdateTime': lastUpdateTime,
      'localIp': localIp,
      'message': message,
      'outputIp': outputIp,
    };
  }

  factory GetGatewaysGatewayGatewayInstance.fromMap(Map<String, dynamic> map) {
    return GetGatewaysGatewayGatewayInstance(
      connectEndpointType: (map['connectEndpointType'] as String).input(),
      currentDaemonVersion: (map['currentDaemonVersion'] as String).input(),
      currentVersion: (map['currentVersion'] as String).input(),
      endPoint: (map['endPoint'] as String).input(),
      gatewayInstanceId: (map['gatewayInstanceId'] as String).input(),
      gatewayInstanceStatus: (map['gatewayInstanceStatus'] as String).input(),
      lastUpdateTime: (map['lastUpdateTime'] as String).input(),
      localIp: (map['localIp'] as String).input(),
      message: (map['message'] as String).input(),
      outputIp: (map['outputIp'] as String).input(),
    );
  }
}

