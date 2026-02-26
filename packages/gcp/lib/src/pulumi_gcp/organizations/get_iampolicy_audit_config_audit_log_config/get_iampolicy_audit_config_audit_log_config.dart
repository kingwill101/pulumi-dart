// ignore_for_file: unused_element, unnecessary_cast

class GetIAMPolicyAuditConfigAuditLogConfig {
  /// Specifies the identities that are exempt from these types of logging operations. Follows the same format of the <span pulumi-lang-nodejs="`members`" pulumi-lang-dotnet="`Members`" pulumi-lang-go="`members`" pulumi-lang-python="`members`" pulumi-lang-yaml="`members`" pulumi-lang-java="`members`">`members`</span> array for <span pulumi-lang-nodejs="`binding`" pulumi-lang-dotnet="`Binding`" pulumi-lang-go="`binding`" pulumi-lang-python="`binding`" pulumi-lang-yaml="`binding`" pulumi-lang-java="`binding`">`binding`</span>.
  final List<String>? exemptedMembers;

  /// Defines the logging level. `DATA_READ`, `DATA_WRITE` and `ADMIN_READ` capture different types of events. See [the audit configuration documentation](https://docs.cloud.google.com/resource-manager/reference/rest/Shared.Types/AuditConfig) for more details.
  final String logType;

  GetIAMPolicyAuditConfigAuditLogConfig({
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

  factory GetIAMPolicyAuditConfigAuditLogConfig.fromMap(
      Map<String, dynamic> map) {
    return GetIAMPolicyAuditConfigAuditLogConfig(
      exemptedMembers: map['exemptedMembers'] == null
          ? null
          : (map['exemptedMembers'] as List).cast<String>(),
      logType: map['logType'] as String,
    );
  }
}
