// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The session detail for a target.
class BastionActiveSessionResponse {
  /// The protocol used to connect to the target.
  final pulumi.Input<String> protocol;
  /// The type of the resource.
  final pulumi.Input<String> resourceType;
  /// Duration in mins the session has been active.
  final pulumi.Input<double> sessionDurationInMins;
  /// A unique id for the session.
  final pulumi.Input<String> sessionId;
  /// The time when the session started.
  final pulumi.Input<dynamic> startTime;
  /// The host name of the target.
  final pulumi.Input<String> targetHostName;
  /// The IP Address of the target.
  final pulumi.Input<String> targetIpAddress;
  /// The resource group of the target.
  final pulumi.Input<String> targetResourceGroup;
  /// The resource id of the target.
  final pulumi.Input<String> targetResourceId;
  /// The subscription id for the target virtual machine.
  final pulumi.Input<String> targetSubscriptionId;
  /// The user name who is active on this session.
  final pulumi.Input<String> userName;

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
  const BastionActiveSessionResponse({
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
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      sessionDurationInMins: pulumi.Input.fromValue(map['sessionDurationInMins'] as double),
      sessionId: pulumi.Input.fromValue(map['sessionId'] as String),
      startTime: pulumi.Input.fromValue(map['startTime']),
      targetHostName: pulumi.Input.fromValue(map['targetHostName'] as String),
      targetIpAddress: pulumi.Input.fromValue(map['targetIpAddress'] as String),
      targetResourceGroup: pulumi.Input.fromValue(map['targetResourceGroup'] as String),
      targetResourceId: pulumi.Input.fromValue(map['targetResourceId'] as String),
      targetSubscriptionId: pulumi.Input.fromValue(map['targetSubscriptionId'] as String),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}

