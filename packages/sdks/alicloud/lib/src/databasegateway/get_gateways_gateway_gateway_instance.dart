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
      connectEndpointType: pulumi.Input.fromValue(map['connectEndpointType'] as String),
      currentDaemonVersion: pulumi.Input.fromValue(map['currentDaemonVersion'] as String),
      currentVersion: pulumi.Input.fromValue(map['currentVersion'] as String),
      endPoint: pulumi.Input.fromValue(map['endPoint'] as String),
      gatewayInstanceId: pulumi.Input.fromValue(map['gatewayInstanceId'] as String),
      gatewayInstanceStatus: pulumi.Input.fromValue(map['gatewayInstanceStatus'] as String),
      lastUpdateTime: pulumi.Input.fromValue(map['lastUpdateTime'] as String),
      localIp: pulumi.Input.fromValue(map['localIp'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      outputIp: pulumi.Input.fromValue(map['outputIp'] as String),
    );
  }
}

