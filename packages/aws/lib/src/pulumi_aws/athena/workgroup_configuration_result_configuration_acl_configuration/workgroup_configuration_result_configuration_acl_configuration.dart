// ignore_for_file: unused_element, unnecessary_cast

class WorkgroupConfigurationResultConfigurationAclConfiguration {
  /// Amazon S3 canned ACL that Athena should specify when storing query results. Valid value is `BUCKET_OWNER_FULL_CONTROL`.
  final String s3AclOption;

  WorkgroupConfigurationResultConfigurationAclConfiguration({
    required this.s3AclOption,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3AclOption'] = s3AclOption;
    return map;
  }

  factory WorkgroupConfigurationResultConfigurationAclConfiguration.fromMap(
      Map<String, dynamic> map) {
    return WorkgroupConfigurationResultConfigurationAclConfiguration(
      s3AclOption: map['s3AclOption'] as String,
    );
  }
}
