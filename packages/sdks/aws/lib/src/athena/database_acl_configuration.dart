// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseAclConfiguration {
  /// Amazon S3 canned ACL that Athena should specify when storing query results. Valid value is `BUCKET_OWNER_FULL_CONTROL`.
  ///
  /// &gt; **NOTE:** When Athena queries are executed, result files may be created in the specified bucket. Consider using `force_destroy` on the bucket too in order to avoid any problems when destroying the bucket.
  final pulumi.Input<String> s3AclOption;

  /// Creates a new [DatabaseAclConfiguration].
  /// [s3AclOption] Amazon S3 canned ACL that Athena should specify when storing query results. Valid value is `BUCKET_OWNER_FULL_CONTROL`.
  DatabaseAclConfiguration({
    required this.s3AclOption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3AclOption': s3AclOption,
    };
  }

  factory DatabaseAclConfiguration.fromMap(Map<String, dynamic> map) {
    return DatabaseAclConfiguration(
      s3AclOption: pulumi.Input.fromValue(map['s3AclOption'] as String),
    );
  }
}

