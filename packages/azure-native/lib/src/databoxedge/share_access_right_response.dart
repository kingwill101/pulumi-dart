// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the mapping between this particular user and the type of access he has on shares on this device.
class ShareAccessRightResponse {
  /// Type of access to be allowed on the share for this user.
  final String accessType;
  /// The share ID.
  final String shareId;

  /// Creates a new [ShareAccessRightResponse].
  /// [accessType] Type of access to be allowed on the share for this user.
  /// [shareId] The share ID.
  ShareAccessRightResponse({
    required this.accessType,
    required this.shareId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessType': accessType,
      'shareId': shareId,
    };
  }

  factory ShareAccessRightResponse.fromMap(Map<String, dynamic> map) {
    return ShareAccessRightResponse(
      accessType: map['accessType'] as String,
      shareId: map['shareId'] as String,
    );
  }
}

