// ignore_for_file: unused_element, unnecessary_cast

class DatabaseAclConfiguration {
  /// Amazon S3 canned ACL that Athena should specify when storing query results. Valid value is `BUCKET_OWNER_FULL_CONTROL`.
  ///
  /// > **NOTE:** When Athena queries are executed, result files may be created in the specified bucket. Consider using <span pulumi-lang-nodejs="`forceDestroy`" pulumi-lang-dotnet="`ForceDestroy`" pulumi-lang-go="`forceDestroy`" pulumi-lang-python="`force_destroy`" pulumi-lang-yaml="`forceDestroy`" pulumi-lang-java="`forceDestroy`">`force_destroy`</span> on the bucket too in order to avoid any problems when destroying the bucket.
  final String s3AclOption;

  DatabaseAclConfiguration({
    required this.s3AclOption,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3AclOption'] = s3AclOption;
    return map;
  }

  factory DatabaseAclConfiguration.fromMap(Map<String, dynamic> map) {
    return DatabaseAclConfiguration(
      s3AclOption: map['s3AclOption'] as String,
    );
  }
}
