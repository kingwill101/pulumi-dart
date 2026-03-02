// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Authorization Profile
class AuthorizationProfileResponse {
  /// The approved time
  final pulumi.Input<String> approvedTime;
  /// The approver
  final pulumi.Input<String> approver;
  /// The requested time
  final pulumi.Input<String> requestedTime;
  /// The requester
  final pulumi.Input<String> requester;
  /// The requester object id
  final pulumi.Input<String> requesterObjectId;

  /// Creates a new [AuthorizationProfileResponse].
  /// [approvedTime] The approved time
  /// [approver] The approver
  /// [requestedTime] The requested time
  /// [requester] The requester
  /// [requesterObjectId] The requester object id
  AuthorizationProfileResponse({
    required this.approvedTime,
    required this.approver,
    required this.requestedTime,
    required this.requester,
    required this.requesterObjectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvedTime': approvedTime,
      'approver': approver,
      'requestedTime': requestedTime,
      'requester': requester,
      'requesterObjectId': requesterObjectId,
    };
  }

  factory AuthorizationProfileResponse.fromMap(Map<String, dynamic> map) {
    return AuthorizationProfileResponse(
      approvedTime: (map['approvedTime'] as String).input(),
      approver: (map['approver'] as String).input(),
      requestedTime: (map['requestedTime'] as String).input(),
      requester: (map['requester'] as String).input(),
      requesterObjectId: (map['requesterObjectId'] as String).input(),
    );
  }
}

