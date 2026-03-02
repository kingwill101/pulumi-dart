// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_access_monitor.dart';
import 'bucket_cors_rule.dart';
import 'bucket_lifecycle_rule.dart';
import 'bucket_logging.dart';
import 'bucket_referer_config.dart';
import 'bucket_server_side_encryption_rule.dart';
import 'bucket_transfer_acceleration.dart';
import 'bucket_versioning.dart';
import 'bucket_website.dart';

/// {@template pulumi_oss_bucket_bucket_args_doc}
/// The set of arguments for Bucket.
/// {@endtemplate}
/// {@macro pulumi_oss_bucket_bucket_args_doc}
class BucketArgs {
  /// A access monitor status of a bucket. See `access_monitor` below.
  final pulumi.Input<BucketAccessMonitor>? accessMonitor;
  /// The [canned ACL](https://www.alibabacloud.com/help/doc-detail/31898.htm) to apply. Can be "private", "public-read" and "public-read-write". This property has been deprecated since 1.220.0, please use the resource `alicloud.oss.BucketAcl` instead.
  final pulumi.Input<String>? acl;
  final pulumi.Input<String>? bucket;
  /// A rule of  [Cross-Origin Resource Sharing](https://www.alibabacloud.com/help/doc-detail/31903.htm). The items of core rule are no more than 10 for every OSS bucket. See `cors_rule` below.
  final pulumi.Input<List<BucketCorsRule>>? corsRules;
  /// A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error. These objects are not recoverable. Defaults to "false".
  final pulumi.Input<bool>? forceDestroy;
  /// A boolean that indicates lifecycle rules allow prefix overlap.
  final pulumi.Input<bool>? lifecycleRuleAllowSameActionOverlap;
  /// A configuration of [object lifecycle management](https://www.alibabacloud.com/help/doc-detail/31904.htm). See `lifecycle_rule` below.
  final pulumi.Input<List<BucketLifecycleRule>>? lifecycleRules;
  /// A Settings of [bucket logging](https://www.alibabacloud.com/help/doc-detail/31900.htm). See `logging` below.
  final pulumi.Input<BucketLogging>? logging;
  /// The flag of using logging enable container. Defaults true.
  final pulumi.Input<bool>? loggingIsenable;
  /// Json format text of bucket policy [bucket policy management](https://www.alibabacloud.com/help/doc-detail/100680.htm). This property has been deprecated since 1.220.0, please use the resource `alicloud.oss.BucketPolicy` instead.
  final pulumi.Input<String>? policy;
  /// The [redundancy type](https://www.alibabacloud.com/help/doc-detail/90589.htm) to enable. Can be "LRS", and "ZRS". Defaults to "LRS".
  final pulumi.Input<String>? redundancyType;
  /// The configuration of [referer](https://www.alibabacloud.com/help/doc-detail/31901.htm). This property has been deprecated since 1.220.0, please use the resource `alicloud.oss.BucketReferer` instead. See `referer_config` below.
  final pulumi.Input<BucketRefererConfig>? refererConfig;
  /// The ID of the resource group to which the bucket belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// A configuration of server-side encryption. See `server_side_encryption_rule` below.
  final pulumi.Input<BucketServerSideEncryptionRule>? serverSideEncryptionRule;
  /// The [storage class](https://www.alibabacloud.com/help/doc-detail/51374.htm) to apply. Can be "Standard", "IA", "Archive", "ColdArchive" and "DeepColdArchive". Defaults to "Standard". "ColdArchive" is available since 1.203.0. "DeepColdArchive" is available since 1.209.0.
  final pulumi.Input<String>? storageClass;
  /// A mapping of tags to assign to the bucket. The items are no more than 10 for a bucket.
  final pulumi.Input<Map<String, String>>? tags;
  /// A transfer acceleration status of a bucket. See `transfer_acceleration` below.
  final pulumi.Input<BucketTransferAcceleration>? transferAcceleration;
  /// A state of versioning. See `versioning` below.
  final pulumi.Input<BucketVersioning>? versioning;
  /// A website configuration. See `website` below.
  final pulumi.Input<BucketWebsite>? website;

  /// Creates a new [BucketArgs].
  /// [accessMonitor] A access monitor status of a bucket. See `access_monitor` below.
  /// [acl] The [canned ACL](https://www.alibabacloud.com/help/doc-detail/31898.htm) to apply. Can be "private", "public-read" and "public-read-write". This property has been deprecated since 1.220.0, please use the resource `alicloud.oss.BucketAcl` instead.
  /// [bucket] Optional.
  /// [corsRules] A rule of  [Cross-Origin Resource Sharing](https://www.alibabacloud.com/help/doc-detail/31903.htm). The items of core rule are no more than 10 for every OSS bucket. See `cors_rule` below.
  /// [forceDestroy] A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error. These objects are not recoverable. Defaults to "false".
  /// [lifecycleRuleAllowSameActionOverlap] A boolean that indicates lifecycle rules allow prefix overlap.
  /// [lifecycleRules] A configuration of [object lifecycle management](https://www.alibabacloud.com/help/doc-detail/31904.htm). See `lifecycle_rule` below.
  /// [logging] A Settings of [bucket logging](https://www.alibabacloud.com/help/doc-detail/31900.htm). See `logging` below.
  /// [loggingIsenable] The flag of using logging enable container. Defaults true.
  /// [policy] Json format text of bucket policy [bucket policy management](https://www.alibabacloud.com/help/doc-detail/100680.htm). This property has been deprecated since 1.220.0, please use the resource `alicloud.oss.BucketPolicy` instead.
  /// [redundancyType] The [redundancy type](https://www.alibabacloud.com/help/doc-detail/90589.htm) to enable. Can be "LRS", and "ZRS". Defaults to "LRS".
  /// [refererConfig] The configuration of [referer](https://www.alibabacloud.com/help/doc-detail/31901.htm). This property has been deprecated since 1.220.0, please use the resource `alicloud.oss.BucketReferer` instead. See `referer_config` below.
  /// [resourceGroupId] The ID of the resource group to which the bucket belongs.
  /// [serverSideEncryptionRule] A configuration of server-side encryption. See `server_side_encryption_rule` below.
  /// [storageClass] The [storage class](https://www.alibabacloud.com/help/doc-detail/51374.htm) to apply. Can be "Standard", "IA", "Archive", "ColdArchive" and "DeepColdArchive". Defaults to "Standard". "ColdArchive" is available since 1.203.0. "DeepColdArchive" is available since 1.209.0.
  /// [tags] A mapping of tags to assign to the bucket. The items are no more than 10 for a bucket.
  /// [transferAcceleration] A transfer acceleration status of a bucket. See `transfer_acceleration` below.
  /// [versioning] A state of versioning. See `versioning` below.
  /// [website] A website configuration. See `website` below.
  BucketArgs({
    this.accessMonitor,
    this.acl,
    this.bucket,
    this.corsRules,
    this.forceDestroy,
    this.lifecycleRuleAllowSameActionOverlap,
    this.lifecycleRules,
    this.logging,
    this.loggingIsenable,
    this.policy,
    this.redundancyType,
    this.refererConfig,
    this.resourceGroupId,
    this.serverSideEncryptionRule,
    this.storageClass,
    this.tags,
    this.transferAcceleration,
    this.versioning,
    this.website,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMonitor': ?pulumi.Input.mapOptionalInputValue<BucketAccessMonitor, Map<String, dynamic>>(accessMonitor, (value) => value.toMap()),
      'acl': ?acl,
      'bucket': ?bucket,
      'corsRules': ?pulumi.Input.mapOptionalInputValue<List<BucketCorsRule>, List<Map<String, dynamic>>>(corsRules, (value) => pulumi.Input.encodeList<BucketCorsRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forceDestroy': ?forceDestroy,
      'lifecycleRuleAllowSameActionOverlap': ?lifecycleRuleAllowSameActionOverlap,
      'lifecycleRules': ?pulumi.Input.mapOptionalInputValue<List<BucketLifecycleRule>, List<Map<String, dynamic>>>(lifecycleRules, (value) => pulumi.Input.encodeList<BucketLifecycleRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logging': ?pulumi.Input.mapOptionalInputValue<BucketLogging, Map<String, dynamic>>(logging, (value) => value.toMap()),
      'loggingIsenable': ?loggingIsenable,
      'policy': ?policy,
      'redundancyType': ?redundancyType,
      'refererConfig': ?pulumi.Input.mapOptionalInputValue<BucketRefererConfig, Map<String, dynamic>>(refererConfig, (value) => value.toMap()),
      'resourceGroupId': ?resourceGroupId,
      'serverSideEncryptionRule': ?pulumi.Input.mapOptionalInputValue<BucketServerSideEncryptionRule, Map<String, dynamic>>(serverSideEncryptionRule, (value) => value.toMap()),
      'storageClass': ?storageClass,
      'tags': ?tags,
      'transferAcceleration': ?pulumi.Input.mapOptionalInputValue<BucketTransferAcceleration, Map<String, dynamic>>(transferAcceleration, (value) => value.toMap()),
      'versioning': ?pulumi.Input.mapOptionalInputValue<BucketVersioning, Map<String, dynamic>>(versioning, (value) => value.toMap()),
      'website': ?pulumi.Input.mapOptionalInputValue<BucketWebsite, Map<String, dynamic>>(website, (value) => value.toMap()),
    };
  }

  factory BucketArgs.fromMap(Map<String, dynamic> map) {
    return BucketArgs(
      accessMonitor: map['accessMonitor'] == null ? null : (BucketAccessMonitor.fromMap((map['accessMonitor']! as Map).cast<String, dynamic>())).input(),
      acl: map['acl'] == null ? null : (map['acl']! as String).input(),
      bucket: map['bucket'] == null ? null : (map['bucket']! as String).input(),
      corsRules: map['corsRules'] == null ? null : (pulumi.Input.decodeList<BucketCorsRule>(map['corsRules']!, (value) => BucketCorsRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      forceDestroy: map['forceDestroy'] == null ? null : (map['forceDestroy']! as bool).input(),
      lifecycleRuleAllowSameActionOverlap: map['lifecycleRuleAllowSameActionOverlap'] == null ? null : (map['lifecycleRuleAllowSameActionOverlap']! as bool).input(),
      lifecycleRules: map['lifecycleRules'] == null ? null : (pulumi.Input.decodeList<BucketLifecycleRule>(map['lifecycleRules']!, (value) => BucketLifecycleRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      logging: map['logging'] == null ? null : (BucketLogging.fromMap((map['logging']! as Map).cast<String, dynamic>())).input(),
      loggingIsenable: map['loggingIsenable'] == null ? null : (map['loggingIsenable']! as bool).input(),
      policy: map['policy'] == null ? null : (map['policy']! as String).input(),
      redundancyType: map['redundancyType'] == null ? null : (map['redundancyType']! as String).input(),
      refererConfig: map['refererConfig'] == null ? null : (BucketRefererConfig.fromMap((map['refererConfig']! as Map).cast<String, dynamic>())).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      serverSideEncryptionRule: map['serverSideEncryptionRule'] == null ? null : (BucketServerSideEncryptionRule.fromMap((map['serverSideEncryptionRule']! as Map).cast<String, dynamic>())).input(),
      storageClass: map['storageClass'] == null ? null : (map['storageClass']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      transferAcceleration: map['transferAcceleration'] == null ? null : (BucketTransferAcceleration.fromMap((map['transferAcceleration']! as Map).cast<String, dynamic>())).input(),
      versioning: map['versioning'] == null ? null : (BucketVersioning.fromMap((map['versioning']! as Map).cast<String, dynamic>())).input(),
      website: map['website'] == null ? null : (BucketWebsite.fromMap((map['website']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

