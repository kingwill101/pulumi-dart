// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreBrowserEnterprisePolicyLocationS3 {
  /// Name of the S3 bucket.
  final pulumi.Input<String> bucket;
  /// Prefix for objects in the S3 bucket.
  final pulumi.Input<String> prefix;
  /// Version ID of the S3 object. If not specified, the latest version is used.
  final pulumi.Input<String?>? versionId;

  /// Creates a new [AgentcoreBrowserEnterprisePolicyLocationS3].
  /// [bucket] Name of the S3 bucket.
  /// [prefix] Prefix for objects in the S3 bucket.
  /// [versionId] Version ID of the S3 object. If not specified, the latest version is used.
  const AgentcoreBrowserEnterprisePolicyLocationS3({
    required this.bucket,
    required this.prefix,
    this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'prefix': prefix,
      'versionId': ?versionId,
    };
  }

  factory AgentcoreBrowserEnterprisePolicyLocationS3.fromMap(Map<String, dynamic> map) {
    return AgentcoreBrowserEnterprisePolicyLocationS3(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
      versionId: (() { final guardedValue = map['versionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
