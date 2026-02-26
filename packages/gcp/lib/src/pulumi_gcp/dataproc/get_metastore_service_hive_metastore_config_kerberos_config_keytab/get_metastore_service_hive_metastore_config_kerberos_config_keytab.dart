// ignore_for_file: unused_element, unnecessary_cast

class GetMetastoreServiceHiveMetastoreConfigKerberosConfigKeytab {
  /// The relative resource name of a Secret Manager secret version, in the following form:
  ///
  /// "projects/{projectNumber}/secrets/{secret_id}/versions/{version_id}".
  final String cloudSecret;

  GetMetastoreServiceHiveMetastoreConfigKerberosConfigKeytab({
    required this.cloudSecret,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudSecret'] = cloudSecret;
    return map;
  }

  factory GetMetastoreServiceHiveMetastoreConfigKerberosConfigKeytab.fromMap(
      Map<String, dynamic> map) {
    return GetMetastoreServiceHiveMetastoreConfigKerberosConfigKeytab(
      cloudSecret: map['cloudSecret'] as String,
    );
  }
}
