// ignore_for_file: unused_element, unnecessary_cast

class MetastoreServiceHiveMetastoreConfigKerberosConfigKeytab {
  /// The relative resource name of a Secret Manager secret version, in the following form:
  /// "projects/{projectNumber}/secrets/{secret_id}/versions/{version_id}".
  final String cloudSecret;

  /// Creates a new [MetastoreServiceHiveMetastoreConfigKerberosConfigKeytab].
  /// [cloudSecret] The relative resource name of a Secret Manager secret version, in the following form:
  MetastoreServiceHiveMetastoreConfigKerberosConfigKeytab({
    required this.cloudSecret,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudSecret'] = cloudSecret;
    return map;
  }

  factory MetastoreServiceHiveMetastoreConfigKerberosConfigKeytab.fromMap(
      Map<String, dynamic> map) {
    return MetastoreServiceHiveMetastoreConfigKerberosConfigKeytab(
      cloudSecret: map['cloudSecret'] as String,
    );
  }
}
