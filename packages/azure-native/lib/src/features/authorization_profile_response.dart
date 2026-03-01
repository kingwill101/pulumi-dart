// ignore_for_file: unused_element, unnecessary_cast


/// Authorization Profile
class AuthorizationProfileResponse {
  /// The approved time
  final String approvedTime;
  /// The approver
  final String approver;
  /// The requested time
  final String requestedTime;
  /// The requester
  final String requester;
  /// The requester object id
  final String requesterObjectId;

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
      approvedTime: map['approvedTime'] as String,
      approver: map['approver'] as String,
      requestedTime: map['requestedTime'] as String,
      requester: map['requester'] as String,
      requesterObjectId: map['requesterObjectId'] as String,
    );
  }
}

