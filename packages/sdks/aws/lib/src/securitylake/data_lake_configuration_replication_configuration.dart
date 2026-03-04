// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataLakeConfigurationReplicationConfiguration {
  /// Replication enables automatic, asynchronous copying of objects across Amazon S3 buckets. Amazon S3 buckets that are configured for object replication can be owned by the same AWS account or by different accounts. You can replicate objects to a single destination bucket or to multiple destination buckets. The destination buckets can be in different AWS Regions or within the same Region as the source bucket.
  final pulumi.Input<List<String>>? regions;

  /// Replication settings for the Amazon S3 buckets. This parameter uses the AWS Identity and Access Management (IAM) role you created that is managed by Security Lake, to ensure the replication setting is correct.
  final pulumi.Input<String>? roleArn;

  /// Creates a new [DataLakeConfigurationReplicationConfiguration].
  /// [regions] Replication enables automatic, asynchronous copying of objects across Amazon S3 buckets. Amazon S3 buckets that are configured for object replication can be owned by the same AWS account or by different accounts. You can replicate objects to a single destination bucket or to multiple destination buckets. The destination buckets can be in different AWS Regions or within the same Region as the source bucket.
  /// [roleArn] Replication settings for the Amazon S3 buckets. This parameter uses the AWS Identity and Access Management (IAM) role you created that is managed by Security Lake, to ensure the replication setting is correct.
  DataLakeConfigurationReplicationConfiguration({this.regions, this.roleArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'regions': ?regions, 'roleArn': ?roleArn};
  }

  factory DataLakeConfigurationReplicationConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataLakeConfigurationReplicationConfiguration(
      regions: (() {
        final guardedValue = map['regions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      roleArn: (() {
        final guardedValue = map['roleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
