// ignore_for_file: unused_element, unnecessary_cast


/// The session detail for a target.
class BastionActiveSessionResponse {
  /// The protocol used to connect to the target.
  final String protocol;
  /// The type of the resource.
  final String resourceType;
  /// Duration in mins the session has been active.
  final double sessionDurationInMins;
  /// A unique id for the session.
  final String sessionId;
  /// The time when the session started.
  final dynamic startTime;
  /// The host name of the target.
  final String targetHostName;
  /// The IP Address of the target.
  final String targetIpAddress;
  /// The resource group of the target.
  final String targetResourceGroup;
  /// The resource id of the target.
  final String targetResourceId;
  /// The subscription id for the target virtual machine.
  final String targetSubscriptionId;
  /// The user name who is active on this session.
  final String userName;

  /// Creates a new [BastionActiveSessionResponse].
  /// [protocol] The protocol used to connect to the target.
  /// [resourceType] The type of the resource.
  /// [sessionDurationInMins] Duration in mins the session has been active.
  /// [sessionId] A unique id for the session.
  /// [startTime] The time when the session started.
  /// [targetHostName] The host name of the target.
  /// [targetIpAddress] The IP Address of the target.
  /// [targetResourceGroup] The resource group of the target.
  /// [targetResourceId] The resource id of the target.
  /// [targetSubscriptionId] The subscription id for the target virtual machine.
  /// [userName] The user name who is active on this session.
  BastionActiveSessionResponse({
    required this.protocol,
    required this.resourceType,
    required this.sessionDurationInMins,
    required this.sessionId,
    required this.startTime,
    required this.targetHostName,
    required this.targetIpAddress,
    required this.targetResourceGroup,
    required this.targetResourceId,
    required this.targetSubscriptionId,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protocol': protocol,
      'resourceType': resourceType,
      'sessionDurationInMins': sessionDurationInMins,
      'sessionId': sessionId,
      'startTime': startTime,
      'targetHostName': targetHostName,
      'targetIpAddress': targetIpAddress,
      'targetResourceGroup': targetResourceGroup,
      'targetResourceId': targetResourceId,
      'targetSubscriptionId': targetSubscriptionId,
      'userName': userName,
    };
  }

  factory BastionActiveSessionResponse.fromMap(Map<String, dynamic> map) {
    return BastionActiveSessionResponse(
      protocol: map['protocol'] as String,
      resourceType: map['resourceType'] as String,
      sessionDurationInMins: map['sessionDurationInMins'] as double,
      sessionId: map['sessionId'] as String,
      startTime: map['startTime'],
      targetHostName: map['targetHostName'] as String,
      targetIpAddress: map['targetIpAddress'] as String,
      targetResourceGroup: map['targetResourceGroup'] as String,
      targetResourceId: map['targetResourceId'] as String,
      targetSubscriptionId: map['targetSubscriptionId'] as String,
      userName: map['userName'] as String,
    );
  }
}

