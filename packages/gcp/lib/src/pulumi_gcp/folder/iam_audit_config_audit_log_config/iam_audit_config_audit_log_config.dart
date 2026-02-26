// ignore_for_file: unused_element, unnecessary_cast

class IamAuditConfigAuditLogConfig {
  /// Identities that do not cause logging for this type of permission.  The format is the same as that for <span pulumi-lang-nodejs="`members`" pulumi-lang-dotnet="`Members`" pulumi-lang-go="`members`" pulumi-lang-python="`members`" pulumi-lang-yaml="`members`" pulumi-lang-java="`members`">`members`</span>.
  final List<String>? exemptedMembers;

  /// Permission type for which logging is to be configured.  Must be one of `DATA_READ`, `DATA_WRITE`, or `ADMIN_READ`.
  final String logType;

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
