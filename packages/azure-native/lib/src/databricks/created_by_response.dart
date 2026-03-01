// ignore_for_file: unused_element, unnecessary_cast


/// Provides details of the entity that created/updated the workspace.
class CreatedByResponse {
  /// The application ID of the application that initiated the creation of the workspace. For example, Azure Portal.
  final String applicationId;
  /// The Object ID that created the workspace.
  final String oid;
  /// The Personal Object ID corresponding to the object ID above
  final String puid;

  /// Creates a new [CreatedByResponse].
  /// [applicationId] The application ID of the application that initiated the creation of the workspace. For example, Azure Portal.
  /// [oid] The Object ID that created the workspace.
  /// [puid] The Personal Object ID corresponding to the object ID above
  CreatedByResponse({
    required this.applicationId,
    required this.oid,
    required this.puid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'oid': oid,
      'puid': puid,
    };
  }

  factory CreatedByResponse.fromMap(Map<String, dynamic> map) {
    return CreatedByResponse(
      applicationId: map['applicationId'] as String,
      oid: map['oid'] as String,
      puid: map['puid'] as String,
    );
  }
}

