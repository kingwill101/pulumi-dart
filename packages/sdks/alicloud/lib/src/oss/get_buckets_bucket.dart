// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_buckets_bucket_cors_rule.dart';
import 'get_buckets_bucket_lifecycle_rule.dart';
import 'get_buckets_bucket_logging.dart';
import 'get_buckets_bucket_referer_config.dart';
import 'get_buckets_bucket_server_side_encryption_rule.dart';
import 'get_buckets_bucket_versioning.dart';
import 'get_buckets_bucket_website.dart';

class GetBucketsBucket {
  /// Bucket access control list. Possible values: `private`, `public-read` and `public-read-write`.
  final pulumi.Input<String> acl;
  /// A list of CORS rule configurations. Each element contains the following attributes:
  final pulumi.Input<List<GetBucketsBucketCorsRule>> corsRules;
  /// Bucket creation date.
  final pulumi.Input<String> creationDate;
  /// Internet domain name for accessing the bucket from outside.
  final pulumi.Input<String> extranetEndpoint;
  /// Intranet domain name for accessing the bucket from an ECS instance in the same region.
  final pulumi.Input<String> intranetEndpoint;
  /// A list CORS of lifecycle configurations. When Lifecycle is enabled, OSS automatically deletes the objects or transitions the objects (to another storage class) corresponding the lifecycle rules on a regular basis. Each element contains the following attributes:
  final pulumi.Input<List<GetBucketsBucketLifecycleRule>> lifecycleRules;
  /// Region of the data center where the bucket is located.
  final pulumi.Input<String> location;
  /// A list of one element containing configuration parameters used for storing access log information. It contains the following attributes:
  final pulumi.Input<GetBucketsBucketLogging> logging;
  /// Bucket name.
  final pulumi.Input<String> name;
  /// Bucket owner.
  final pulumi.Input<String> owner;
  /// The policies configured for a specified bucket.
  final pulumi.Input<String> policy;
  /// Redundancy type. Possible values: `LRS`, and `ZRS`.
  final pulumi.Input<String> redundancyType;
  /// A list of one element containing referer configuration. It contains the following attributes:
  final pulumi.Input<GetBucketsBucketRefererConfig> refererConfig;
  /// A configuration of default encryption for a bucket. It contains the following attributes:
  final pulumi.Input<GetBucketsBucketServerSideEncryptionRule> serverSideEncryptionRule;
  /// Object storage type. Possible values: `Standard`, `IA`, `Archive` and `ColdArchive`.
  final pulumi.Input<String> storageClass;
  /// A mapping of tags.
  final pulumi.Input<Map<String, String>> tags;
  /// If present , the versioning state has been set on the bucket. It contains the following attribute.
  final pulumi.Input<GetBucketsBucketVersioning> versioning;
  /// A list of one element containing configuration parameters used when the bucket is used as a website. It contains the following attributes:
  final pulumi.Input<GetBucketsBucketWebsite> website;

  /// Creates a new [GetBucketsBucket].
  /// [acl] Bucket access control list. Possible values: `private`, `public-read` and `public-read-write`.
  /// [corsRules] A list of CORS rule configurations. Each element contains the following attributes:
  /// [creationDate] Bucket creation date.
  /// [extranetEndpoint] Internet domain name for accessing the bucket from outside.
  /// [intranetEndpoint] Intranet domain name for accessing the bucket from an ECS instance in the same region.
  /// [lifecycleRules] A list CORS of lifecycle configurations. When Lifecycle is enabled, OSS automatically deletes the objects or transitions the objects (to another storage class) corresponding the lifecycle rules on a regular basis. Each element contains the following attributes:
  /// [location] Region of the data center where the bucket is located.
  /// [logging] A list of one element containing configuration parameters used for storing access log information. It contains the following attributes:
  /// [name] Bucket name.
  /// [owner] Bucket owner.
  /// [policy] The policies configured for a specified bucket.
  /// [redundancyType] Redundancy type. Possible values: `LRS`, and `ZRS`.
  /// [refererConfig] A list of one element containing referer configuration. It contains the following attributes:
  /// [serverSideEncryptionRule] A configuration of default encryption for a bucket. It contains the following attributes:
  /// [storageClass] Object storage type. Possible values: `Standard`, `IA`, `Archive` and `ColdArchive`.
  /// [tags] A mapping of tags.
  /// [versioning] If present , the versioning state has been set on the bucket. It contains the following attribute.
  /// [website] A list of one element containing configuration parameters used when the bucket is used as a website. It contains the following attributes:
  GetBucketsBucket({
    required this.acl,
    required this.corsRules,
    required this.creationDate,
    required this.extranetEndpoint,
    required this.intranetEndpoint,
    required this.lifecycleRules,
    required this.location,
    required this.logging,
    required this.name,
    required this.owner,
    required this.policy,
    required this.redundancyType,
    required this.refererConfig,
    required this.serverSideEncryptionRule,
    required this.storageClass,
    required this.tags,
    required this.versioning,
    required this.website,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': acl,
      'corsRules': pulumi.Input.mapInputValue<List<GetBucketsBucketCorsRule>, List<Map<String, dynamic>>>(corsRules, (value) => pulumi.Input.encodeList<GetBucketsBucketCorsRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'creationDate': creationDate,
      'extranetEndpoint': extranetEndpoint,
      'intranetEndpoint': intranetEndpoint,
      'lifecycleRules': pulumi.Input.mapInputValue<List<GetBucketsBucketLifecycleRule>, List<Map<String, dynamic>>>(lifecycleRules, (value) => pulumi.Input.encodeList<GetBucketsBucketLifecycleRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': location,
      'logging': pulumi.Input.mapInputValue<GetBucketsBucketLogging, Map<String, dynamic>>(logging, (value) => value.toMap()),
      'name': name,
      'owner': owner,
      'policy': policy,
      'redundancyType': redundancyType,
      'refererConfig': pulumi.Input.mapInputValue<GetBucketsBucketRefererConfig, Map<String, dynamic>>(refererConfig, (value) => value.toMap()),
      'serverSideEncryptionRule': pulumi.Input.mapInputValue<GetBucketsBucketServerSideEncryptionRule, Map<String, dynamic>>(serverSideEncryptionRule, (value) => value.toMap()),
      'storageClass': storageClass,
      'tags': tags,
      'versioning': pulumi.Input.mapInputValue<GetBucketsBucketVersioning, Map<String, dynamic>>(versioning, (value) => value.toMap()),
      'website': pulumi.Input.mapInputValue<GetBucketsBucketWebsite, Map<String, dynamic>>(website, (value) => value.toMap()),
    };
  }

  factory GetBucketsBucket.fromMap(Map<String, dynamic> map) {
    return GetBucketsBucket(
      acl: (map['acl'] as String).input(),
      corsRules: (pulumi.Input.decodeList<GetBucketsBucketCorsRule>(map['corsRules'], (value) => GetBucketsBucketCorsRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      creationDate: (map['creationDate'] as String).input(),
      extranetEndpoint: (map['extranetEndpoint'] as String).input(),
      intranetEndpoint: (map['intranetEndpoint'] as String).input(),
      lifecycleRules: (pulumi.Input.decodeList<GetBucketsBucketLifecycleRule>(map['lifecycleRules'], (value) => GetBucketsBucketLifecycleRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: (map['location'] as String).input(),
      logging: (GetBucketsBucketLogging.fromMap((map['logging'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      owner: (map['owner'] as String).input(),
      policy: (map['policy'] as String).input(),
      redundancyType: (map['redundancyType'] as String).input(),
      refererConfig: (GetBucketsBucketRefererConfig.fromMap((map['refererConfig'] as Map).cast<String, dynamic>())).input(),
      serverSideEncryptionRule: (GetBucketsBucketServerSideEncryptionRule.fromMap((map['serverSideEncryptionRule'] as Map).cast<String, dynamic>())).input(),
      storageClass: (map['storageClass'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      versioning: (GetBucketsBucketVersioning.fromMap((map['versioning'] as Map).cast<String, dynamic>())).input(),
      website: (GetBucketsBucketWebsite.fromMap((map['website'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

