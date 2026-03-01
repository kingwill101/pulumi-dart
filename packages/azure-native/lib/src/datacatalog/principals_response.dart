// ignore_for_file: unused_element, unnecessary_cast


/// User principals.
class PrincipalsResponse {
  /// Object Id for the user
  final String? objectId;
  /// UPN of the user.
  final String? upn;

  /// Creates a new [PrincipalsResponse].
  /// [objectId] Object Id for the user
  /// [upn] UPN of the user.
  PrincipalsResponse({
    this.objectId,
    this.upn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectId': ?objectId,
      'upn': ?upn,
    };
  }

  factory PrincipalsResponse.fromMap(Map<String, dynamic> map) {
    return PrincipalsResponse(
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
      upn: map['upn'] == null ? null : map['upn'] as String,
    );
  }
}

