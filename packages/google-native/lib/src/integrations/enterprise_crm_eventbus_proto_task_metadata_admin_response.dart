// ignore_for_file: unused_element, unnecessary_cast


/// Admins are owners of a Task, and have all permissions on a particular task identified by the task name. By default, Eventbus periodically scans all task metadata and syncs (adds) any new admins defined here to Zanzibar.
class EnterpriseCrmEventbusProtoTaskMetadataAdminResponse {
  final String googleGroupEmail;
  final String userEmail;

  /// Creates a new [EnterpriseCrmEventbusProtoTaskMetadataAdminResponse].
  /// [googleGroupEmail] Required.
  /// [userEmail] Required.
  EnterpriseCrmEventbusProtoTaskMetadataAdminResponse({
    required this.googleGroupEmail,
    required this.userEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'googleGroupEmail': googleGroupEmail,
      'userEmail': userEmail,
    };
  }

  factory EnterpriseCrmEventbusProtoTaskMetadataAdminResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoTaskMetadataAdminResponse(
      googleGroupEmail: map['googleGroupEmail'] as String,
      userEmail: map['userEmail'] as String,
    );
  }
}

