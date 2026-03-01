// ignore_for_file: unused_element, unnecessary_cast


class GetGatewaysGatewayGatewayInstance {
  /// The connection type of Gateway instance.
  final String connectEndpointType;
  /// The process of version number of Gateway instance.
  final String currentDaemonVersion;
  /// The version of Gateway instance.
  final String currentVersion;
  /// The endpoint address of Gateway instance.
  final String endPoint;
  /// The id of Gateway instance.
  final String gatewayInstanceId;
  /// The status of Gateway instance. Valid values: `EXCEPTION`, `NEW`, `RUNNING`, `STOPPED`.
  final String gatewayInstanceStatus;
  /// The last Updated time stamp of Gateway instance.
  final String lastUpdateTime;
  /// The Local IP ADDRESS of Gateway instance.
  final String localIp;
  /// The prompt information of Gateway instance.
  final String message;
  /// The host of Gateway instance.
  final String outputIp;

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
      connectEndpointType: map['connectEndpointType'] as String,
      currentDaemonVersion: map['currentDaemonVersion'] as String,
      currentVersion: map['currentVersion'] as String,
      endPoint: map['endPoint'] as String,
      gatewayInstanceId: map['gatewayInstanceId'] as String,
      gatewayInstanceStatus: map['gatewayInstanceStatus'] as String,
      lastUpdateTime: map['lastUpdateTime'] as String,
      localIp: map['localIp'] as String,
      message: map['message'] as String,
      outputIp: map['outputIp'] as String,
    );
  }
}

