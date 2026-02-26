// ignore_for_file: unused_element, unnecessary_cast

/// Admins are owners of a Task, and have all permissions on a particular task identified by the task name. By default, Eventbus periodically scans all task metadata and syncs (adds) any new admins defined here to Zanzibar.
class EnterpriseCrmEventbusProtoTaskMetadataAdmin {
  final String? googleGroupEmail;
  final String? userEmail;

  EnterpriseCrmEventbusProtoTaskMetadataAdmin({
    this.googleGroupEmail,
    this.userEmail,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final googleGroupEmailValue = googleGroupEmail;
    if (googleGroupEmailValue != null) {
      map['googleGroupEmail'] = googleGroupEmailValue;
    }
    final userEmailValue = userEmail;
    if (userEmailValue != null) {
      map['userEmail'] = userEmailValue;
    }
    return map;
  }

  factory EnterpriseCrmEventbusProtoTaskMetadataAdmin.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoTaskMetadataAdmin(
      googleGroupEmail: map['googleGroupEmail'] == null
          ? null
          : map['googleGroupEmail'] as String,
      userEmail: map['userEmail'] == null ? null : map['userEmail'] as String,
    );
  }
}
