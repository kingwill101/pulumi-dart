// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'access_key_credentials2.dart';
import 'tag2.dart';

/// AwsSourceDetails message describes a specific source details for the AWS source type.
class AwsSourceDetails2 {
  /// AWS Credentials using access key id and secret.
  final AccessKeyCredentials2? accessKeyCreds;

  /// Immutable. The AWS region that the source VMs will be migrated from.
  final String? awsRegion;

  /// AWS security group names to limit the scope of the source inventory.
  final List<String>? inventorySecurityGroupNames;

  /// AWS resource tags to limit the scope of the source inventory.
  final List<Tag2>? inventoryTagList;

  /// User specified tags to add to every M2VM generated resource in AWS. These tags will be set in addition to the default tags that are set as part of the migration process. The tags must not begin with the reserved prefix `m2vm`.
  final Map<String, String>? migrationResourcesUserTags;

  AwsSourceDetails2({
    this.accessKeyCreds,
    this.awsRegion,
    this.inventorySecurityGroupNames,
    this.inventoryTagList,
    this.migrationResourcesUserTags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessKeyCredsValue = accessKeyCreds;
    if (accessKeyCredsValue != null) {
      map['accessKeyCreds'] = accessKeyCredsValue.toMap();
    }
    final awsRegionValue = awsRegion;
    if (awsRegionValue != null) {
      map['awsRegion'] = awsRegionValue;
    }
    final inventorySecurityGroupNamesValue = inventorySecurityGroupNames;
    if (inventorySecurityGroupNamesValue != null) {
      map['inventorySecurityGroupNames'] = inventorySecurityGroupNamesValue;
    }
    final inventoryTagListValue = inventoryTagList;
    if (inventoryTagListValue != null) {
      map['inventoryTagList'] = Input.encodeList<Tag2, Map<String, dynamic>>(
          inventoryTagListValue, (value) => value.toMap());
    }
    final migrationResourcesUserTagsValue = migrationResourcesUserTags;
    if (migrationResourcesUserTagsValue != null) {
      map['migrationResourcesUserTags'] = migrationResourcesUserTagsValue;
    }
    return map;
  }

  factory AwsSourceDetails2.fromMap(Map<String, dynamic> map) {
    return AwsSourceDetails2(
      accessKeyCreds: map['accessKeyCreds'] == null
          ? null
          : AccessKeyCredentials2.fromMap(
              (map['accessKeyCreds'] as Map).cast<String, dynamic>()),
      awsRegion: map['awsRegion'] == null ? null : map['awsRegion'] as String,
      inventorySecurityGroupNames: map['inventorySecurityGroupNames'] == null
          ? null
          : (map['inventorySecurityGroupNames'] as List).cast<String>(),
      inventoryTagList: map['inventoryTagList'] == null
          ? null
          : Input.decodeList<Tag2>(map['inventoryTagList'],
              (value) => Tag2.fromMap((value as Map).cast<String, dynamic>())),
      migrationResourcesUserTags: map['migrationResourcesUserTags'] == null
          ? null
          : (map['migrationResourcesUserTags'] as Map).cast<String, String>(),
    );
  }
}
