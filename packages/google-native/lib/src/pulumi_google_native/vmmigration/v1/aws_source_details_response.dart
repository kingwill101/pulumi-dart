// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'access_key_credentials_response.dart';
import 'status_response30.dart';
import 'tag_response.dart';

/// AwsSourceDetails message describes a specific source details for the AWS source type.
class AwsSourceDetailsResponse {
  /// AWS Credentials using access key id and secret.
  final AccessKeyCredentialsResponse accessKeyCreds;

  /// Immutable. The AWS region that the source VMs will be migrated from.
  final String awsRegion;

  /// Provides details on the state of the Source in case of an error.
  final StatusResponse30 error;

  /// AWS security group names to limit the scope of the source inventory.
  final List<String> inventorySecurityGroupNames;

  /// AWS resource tags to limit the scope of the source inventory.
  final List<TagResponse> inventoryTagList;

  /// User specified tags to add to every M2VM generated resource in AWS. These tags will be set in addition to the default tags that are set as part of the migration process. The tags must not begin with the reserved prefix `m2vm`.
  final Map<String, String> migrationResourcesUserTags;

  /// The source's public IP. All communication initiated by this source will originate from this IP.
  final String publicIp;

  /// State of the source as determined by the health check.
  final String state;

  AwsSourceDetailsResponse({
    required this.accessKeyCreds,
    required this.awsRegion,
    required this.error,
    required this.inventorySecurityGroupNames,
    required this.inventoryTagList,
    required this.migrationResourcesUserTags,
    required this.publicIp,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessKeyCreds'] = accessKeyCreds.toMap();
    map['awsRegion'] = awsRegion;
    map['error'] = error.toMap();
    map['inventorySecurityGroupNames'] = inventorySecurityGroupNames;
    map['inventoryTagList'] =
        Input.encodeList<TagResponse, Map<String, dynamic>>(
            inventoryTagList, (value) => value.toMap());
    map['migrationResourcesUserTags'] = migrationResourcesUserTags;
    map['publicIp'] = publicIp;
    map['state'] = state;
    return map;
  }

  factory AwsSourceDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AwsSourceDetailsResponse(
      accessKeyCreds: AccessKeyCredentialsResponse.fromMap(
          (map['accessKeyCreds'] as Map).cast<String, dynamic>()),
      awsRegion: map['awsRegion'] as String,
      error: StatusResponse30.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      inventorySecurityGroupNames:
          (map['inventorySecurityGroupNames'] as List).cast<String>(),
      inventoryTagList: Input.decodeList<TagResponse>(
          map['inventoryTagList'],
          (value) =>
              TagResponse.fromMap((value as Map).cast<String, dynamic>())),
      migrationResourcesUserTags:
          (map['migrationResourcesUserTags'] as Map).cast<String, String>(),
      publicIp: map['publicIp'] as String,
      state: map['state'] as String,
    );
  }
}
