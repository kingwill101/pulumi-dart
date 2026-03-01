// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_rules_response.dart';
import 'tag_response.dart';

/// Definition of awsLightsailBucket
class AwsLightsailBucketPropertiesResponse {
  /// Indicates whether the bundle that is currently applied to a bucket can be changed to another bundle. You can update a bucket's bundle only one time within a monthly AWS billing cycle.
  final bool? ableToUpdateBundle;
  /// An object that sets the public accessibility of objects in the specified bucket.
  final AccessRulesResponse? accessRules;
  /// Property bucketArn
  final String? bucketArn;
  /// The name for the bucket.
  final String? bucketName;
  /// The ID of the bundle to use for the bucket.
  final String? bundleId;
  /// Specifies whether to enable or disable versioning of objects in the bucket.
  final bool? objectVersioning;
  /// An array of strings to specify the AWS account IDs that can access the bucket.
  final List<String>? readOnlyAccessAccounts;
  /// The names of the Lightsail resources for which to set bucket access.
  final List<String>? resourcesReceivingAccess;
  /// An array of key-value pairs to apply to this resource.
  final List<TagResponse>? tags;
  /// The URL of the bucket.
  final String? url;

  /// Creates a new [AwsLightsailBucketPropertiesResponse].
  /// [ableToUpdateBundle] Indicates whether the bundle that is currently applied to a bucket can be changed to another bundle. You can update a bucket's bundle only one time within a monthly AWS billing cycle.
  /// [accessRules] An object that sets the public accessibility of objects in the specified bucket.
  /// [bucketArn] Property bucketArn
  /// [bucketName] The name for the bucket.
  /// [bundleId] The ID of the bundle to use for the bucket.
  /// [objectVersioning] Specifies whether to enable or disable versioning of objects in the bucket.
  /// [readOnlyAccessAccounts] An array of strings to specify the AWS account IDs that can access the bucket.
  /// [resourcesReceivingAccess] The names of the Lightsail resources for which to set bucket access.
  /// [tags] An array of key-value pairs to apply to this resource.
  /// [url] The URL of the bucket.
  AwsLightsailBucketPropertiesResponse({
    this.ableToUpdateBundle,
    this.accessRules,
    this.bucketArn,
    this.bucketName,
    this.bundleId,
    this.objectVersioning,
    this.readOnlyAccessAccounts,
    this.resourcesReceivingAccess,
    this.tags,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ableToUpdateBundle': ?ableToUpdateBundle,
      'accessRules': ?accessRules == null ? null : accessRules!.toMap(),
      'bucketArn': ?bucketArn,
      'bucketName': ?bucketName,
      'bundleId': ?bundleId,
      'objectVersioning': ?objectVersioning,
      'readOnlyAccessAccounts': ?readOnlyAccessAccounts,
      'resourcesReceivingAccess': ?resourcesReceivingAccess,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'url': ?url,
    };
  }

  factory AwsLightsailBucketPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsLightsailBucketPropertiesResponse(
      ableToUpdateBundle: map['ableToUpdateBundle'] == null ? null : map['ableToUpdateBundle'] as bool,
      accessRules: map['accessRules'] == null ? null : AccessRulesResponse.fromMap((map['accessRules'] as Map).cast<String, dynamic>()),
      bucketArn: map['bucketArn'] == null ? null : map['bucketArn'] as String,
      bucketName: map['bucketName'] == null ? null : map['bucketName'] as String,
      bundleId: map['bundleId'] == null ? null : map['bundleId'] as String,
      objectVersioning: map['objectVersioning'] == null ? null : map['objectVersioning'] as bool,
      readOnlyAccessAccounts: map['readOnlyAccessAccounts'] == null ? null : (map['readOnlyAccessAccounts'] as List).cast<String>(),
      resourcesReceivingAccess: map['resourcesReceivingAccess'] == null ? null : (map['resourcesReceivingAccess'] as List).cast<String>(),
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<TagResponse>(map['tags'], (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>())),
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

