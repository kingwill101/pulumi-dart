// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_key_credentials.dart';
import 'tag.dart';

/// AwsSourceDetails message describes a specific source details for the AWS source type.
class AwsSourceDetails {
  /// AWS Credentials using access key id and secret.
  final AccessKeyCredentials? accessKeyCreds;

  /// Immutable. The AWS region that the source VMs will be migrated from.
  final String? awsRegion;

  /// AWS security group names to limit the scope of the source inventory.
  final List<String>? inventorySecurityGroupNames;

  /// AWS resource tags to limit the scope of the source inventory.
  final List<Tag>? inventoryTagList;

  /// User specified tags to add to every M2VM generated resource in AWS. These tags will be set in addition to the default tags that are set as part of the migration process. The tags must not begin with the reserved prefix `m2vm`.
  final Map<String, String>? migrationResourcesUserTags;

  /// Creates a new [AwsSourceDetails].
  /// [accessKeyCreds] AWS Credentials using access key id and secret.
  /// [awsRegion] Immutable. The AWS region that the source VMs will be migrated from.
  /// [inventorySecurityGroupNames] AWS security group names to limit the scope of the source inventory.
  /// [inventoryTagList] AWS resource tags to limit the scope of the source inventory.
  /// [migrationResourcesUserTags] User specified tags to add to every M2VM generated resource in AWS. These tags will be set in addition to the default tags that are set as part of the migration process. The tags must not begin with the reserved prefix `m2vm`.
  AwsSourceDetails({
    this.accessKeyCreds,
    this.awsRegion,
    this.inventorySecurityGroupNames,
    this.inventoryTagList,
    this.migrationResourcesUserTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyCreds': ?accessKeyCreds == null
          ? null
          : accessKeyCreds!.toMap(),
      'awsRegion': ?awsRegion,
      'inventorySecurityGroupNames': ?inventorySecurityGroupNames,
      'inventoryTagList': ?inventoryTagList == null
          ? null
          : pulumi.Input.encodeList<Tag, Map<String, dynamic>>(
              inventoryTagList!,
              (value) => value.toMap(),
            ),
      'migrationResourcesUserTags': ?migrationResourcesUserTags,
    };
  }

  factory AwsSourceDetails.fromMap(Map<String, dynamic> map) {
    return AwsSourceDetails(
      accessKeyCreds: map['accessKeyCreds'] == null
          ? null
          : AccessKeyCredentials.fromMap(
              (map['accessKeyCreds'] as Map).cast<String, dynamic>(),
            ),
      awsRegion: map['awsRegion'] == null ? null : map['awsRegion'] as String,
      inventorySecurityGroupNames: map['inventorySecurityGroupNames'] == null
          ? null
          : (map['inventorySecurityGroupNames'] as List).cast<String>(),
      inventoryTagList: map['inventoryTagList'] == null
          ? null
          : pulumi.Input.decodeList<Tag>(
              map['inventoryTagList'],
              (value) => Tag.fromMap((value as Map).cast<String, dynamic>()),
            ),
      migrationResourcesUserTags: map['migrationResourcesUserTags'] == null
          ? null
          : (map['migrationResourcesUserTags'] as Map).cast<String, String>(),
    );
  }
}
