// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_rules.dart';
import 'tag.dart';

/// Definition of awsLightsailBucket
class AwsLightsailBucketProperties {
  /// Indicates whether the bundle that is currently applied to a bucket can be changed to another bundle. You can update a bucket's bundle only one time within a monthly AWS billing cycle.
  final pulumi.Input<bool>? ableToUpdateBundle;
  /// An object that sets the public accessibility of objects in the specified bucket.
  final pulumi.Input<AccessRules>? accessRules;
  /// Property bucketArn
  final pulumi.Input<String>? bucketArn;
  /// The name for the bucket.
  final pulumi.Input<String>? bucketName;
  /// The ID of the bundle to use for the bucket.
  final pulumi.Input<String>? bundleId;
  /// Specifies whether to enable or disable versioning of objects in the bucket.
  final pulumi.Input<bool>? objectVersioning;
  /// An array of strings to specify the AWS account IDs that can access the bucket.
  final pulumi.Input<List<String>>? readOnlyAccessAccounts;
  /// The names of the Lightsail resources for which to set bucket access.
  final pulumi.Input<List<String>>? resourcesReceivingAccess;
  /// An array of key-value pairs to apply to this resource.
  final pulumi.Input<List<Tag>>? tags;
  /// The URL of the bucket.
  final pulumi.Input<String>? url;

  /// Creates a new [AwsLightsailBucketProperties].
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
  AwsLightsailBucketProperties({
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
      'accessRules': ?pulumi.Input.mapOptionalInputValue<AccessRules, Map<String, dynamic>>(accessRules, (value) => value.toMap()),
      'bucketArn': ?bucketArn,
      'bucketName': ?bucketName,
      'bundleId': ?bundleId,
      'objectVersioning': ?objectVersioning,
      'readOnlyAccessAccounts': ?readOnlyAccessAccounts,
      'resourcesReceivingAccess': ?resourcesReceivingAccess,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<Tag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'url': ?url,
    };
  }

  factory AwsLightsailBucketProperties.fromMap(Map<String, dynamic> map) {
    return AwsLightsailBucketProperties(
      ableToUpdateBundle: map['ableToUpdateBundle'] == null ? null : (map['ableToUpdateBundle']! as bool).input(),
      accessRules: map['accessRules'] == null ? null : (AccessRules.fromMap((map['accessRules']! as Map).cast<String, dynamic>())).input(),
      bucketArn: map['bucketArn'] == null ? null : (map['bucketArn']! as String).input(),
      bucketName: map['bucketName'] == null ? null : (map['bucketName']! as String).input(),
      bundleId: map['bundleId'] == null ? null : (map['bundleId']! as String).input(),
      objectVersioning: map['objectVersioning'] == null ? null : (map['objectVersioning']! as bool).input(),
      readOnlyAccessAccounts: map['readOnlyAccessAccounts'] == null ? null : ((map['readOnlyAccessAccounts']! as List).cast<String>()).input(),
      resourcesReceivingAccess: map['resourcesReceivingAccess'] == null ? null : ((map['resourcesReceivingAccess']! as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<Tag>(map['tags']!, (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      url: map['url'] == null ? null : (map['url']! as String).input(),
    );
  }
}

