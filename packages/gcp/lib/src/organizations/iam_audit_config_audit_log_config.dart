// ignore_for_file: unused_element, unnecessary_cast

class IamAuditConfigAuditLogConfig {
  /// Identities that do not cause logging for this type of permission.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final List<String>? exemptedMembers;

  /// Permission type for which logging is to be configured.  Must be one of `DATA_READ`, `DATA_WRITE`, or `ADMIN_READ`.
  final String logType;

  /// Creates a new [IamAuditConfigAuditLogConfig].
  /// [exemptedMembers] Identities that do not cause logging for this type of permission.
  /// [logType] Permission type for which logging is to be configured.  Must be one of `DATA_READ`, `DATA_WRITE`, or `ADMIN_READ`.
  IamAuditConfigAuditLogConfig({
    this.exemptedMembers,
    required this.logType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exemptedMembersValue = exemptedMembers;
    if (exemptedMembersValue != null) {
      map['exemptedMembers'] = exemptedMembersValue;
    }
    map['logType'] = logType;
    return map;
  }

  factory IamAuditConfigAuditLogConfig.fromMap(Map<String, dynamic> map) {
    return IamAuditConfigAuditLogConfig(
      exemptedMembers: map['exemptedMembers'] == null
          ? null
          : (map['exemptedMembers'] as List).cast<String>(),
      logType: map['logType'] as String,
    );
  }
}
