// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_key_credentials_vmmigration_v1alpha1.dart';
import 'tag_vmmigration_v1alpha1.dart';

/// AwsSourceDetails message describes a specific source details for the AWS source type.
class AwsSourceDetailsVmmigrationV1alpha1 {
  /// AWS Credentials using access key id and secret.
  final AccessKeyCredentialsVmmigrationV1alpha1? accessKeyCreds;
  /// Immutable. The AWS region that the source VMs will be migrated from.
  final String? awsRegion;
  /// AWS security group names to limit the scope of the source inventory.
  final List<String>? inventorySecurityGroupNames;
  /// AWS resource tags to limit the scope of the source inventory.
  final List<TagVmmigrationV1alpha1>? inventoryTagList;
  /// User specified tags to add to every M2VM generated resource in AWS. These tags will be set in addition to the default tags that are set as part of the migration process. The tags must not begin with the reserved prefix `m2vm`.
  final Map<String, String>? migrationResourcesUserTags;

  /// Creates a new [AwsSourceDetailsVmmigrationV1alpha1].
  /// [accessKeyCreds] AWS Credentials using access key id and secret.
  /// [awsRegion] Immutable. The AWS region that the source VMs will be migrated from.
  /// [inventorySecurityGroupNames] AWS security group names to limit the scope of the source inventory.
  /// [inventoryTagList] AWS resource tags to limit the scope of the source inventory.
  /// [migrationResourcesUserTags] User specified tags to add to every M2VM generated resource in AWS. These tags will be set in addition to the default tags that are set as part of the migration process. The tags must not begin with the reserved prefix `m2vm`.
  AwsSourceDetailsVmmigrationV1alpha1({
    this.accessKeyCreds,
    this.awsRegion,
    this.inventorySecurityGroupNames,
    this.inventoryTagList,
    this.migrationResourcesUserTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyCreds': ?accessKeyCreds == null ? null : accessKeyCreds!.toMap(),
      'awsRegion': ?awsRegion,
      'inventorySecurityGroupNames': ?inventorySecurityGroupNames,
      'inventoryTagList': ?inventoryTagList == null ? null : pulumi.Input.encodeList<TagVmmigrationV1alpha1, Map<String, dynamic>>(inventoryTagList!, (value) => value.toMap()),
      'migrationResourcesUserTags': ?migrationResourcesUserTags,
    };
  }

  factory AwsSourceDetailsVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return AwsSourceDetailsVmmigrationV1alpha1(
      accessKeyCreds: map['accessKeyCreds'] == null ? null : AccessKeyCredentialsVmmigrationV1alpha1.fromMap((map['accessKeyCreds'] as Map).cast<String, dynamic>()),
      awsRegion: map['awsRegion'] == null ? null : map['awsRegion'] as String,
      inventorySecurityGroupNames: map['inventorySecurityGroupNames'] == null ? null : (map['inventorySecurityGroupNames'] as List).cast<String>(),
      inventoryTagList: map['inventoryTagList'] == null ? null : pulumi.Input.decodeList<TagVmmigrationV1alpha1>(map['inventoryTagList'], (value) => TagVmmigrationV1alpha1.fromMap((value as Map).cast<String, dynamic>())),
      migrationResourcesUserTags: map['migrationResourcesUserTags'] == null ? null : (map['migrationResourcesUserTags'] as Map).cast<String, String>(),
    );
  }
}

