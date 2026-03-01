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
  final String acl;
  /// A list of CORS rule configurations. Each element contains the following attributes:
  final List<GetBucketsBucketCorsRule> corsRules;
  /// Bucket creation date.
  final String creationDate;
  /// Internet domain name for accessing the bucket from outside.
  final String extranetEndpoint;
  /// Intranet domain name for accessing the bucket from an ECS instance in the same region.
  final String intranetEndpoint;
  /// A list CORS of lifecycle configurations. When Lifecycle is enabled, OSS automatically deletes the objects or transitions the objects (to another storage class) corresponding the lifecycle rules on a regular basis. Each element contains the following attributes:
  final List<GetBucketsBucketLifecycleRule> lifecycleRules;
  /// Region of the data center where the bucket is located.
  final String location;
  /// A list of one element containing configuration parameters used for storing access log information. It contains the following attributes:
  final GetBucketsBucketLogging logging;
  /// Bucket name.
  final String name;
  /// Bucket owner.
  final String owner;
  /// The policies configured for a specified bucket.
  final String policy;
  /// Redundancy type. Possible values: `LRS`, and `ZRS`.
  final String redundancyType;
  /// A list of one element containing referer configuration. It contains the following attributes:
  final GetBucketsBucketRefererConfig refererConfig;
  /// A configuration of default encryption for a bucket. It contains the following attributes:
  final GetBucketsBucketServerSideEncryptionRule serverSideEncryptionRule;
  /// Object storage type. Possible values: `Standard`, `IA`, `Archive` and `ColdArchive`.
  final String storageClass;
  /// A mapping of tags.
  final Map<String, String> tags;
  /// If present , the versioning state has been set on the bucket. It contains the following attribute.
  final GetBucketsBucketVersioning versioning;
  /// A list of one element containing configuration parameters used when the bucket is used as a website. It contains the following attributes:
  final GetBucketsBucketWebsite website;

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
      'corsRules': pulumi.Input.encodeList<GetBucketsBucketCorsRule, Map<String, dynamic>>(corsRules, (value) => value.toMap()),
      'creationDate': creationDate,
      'extranetEndpoint': extranetEndpoint,
      'intranetEndpoint': intranetEndpoint,
      'lifecycleRules': pulumi.Input.encodeList<GetBucketsBucketLifecycleRule, Map<String, dynamic>>(lifecycleRules, (value) => value.toMap()),
      'location': location,
      'logging': logging.toMap(),
      'name': name,
      'owner': owner,
      'policy': policy,
      'redundancyType': redundancyType,
      'refererConfig': refererConfig.toMap(),
      'serverSideEncryptionRule': serverSideEncryptionRule.toMap(),
      'storageClass': storageClass,
      'tags': tags,
      'versioning': versioning.toMap(),
      'website': website.toMap(),
    };
  }

  factory GetBucketsBucket.fromMap(Map<String, dynamic> map) {
    return GetBucketsBucket(
      acl: map['acl'] as String,
      corsRules: pulumi.Input.decodeList<GetBucketsBucketCorsRule>(map['corsRules'], (value) => GetBucketsBucketCorsRule.fromMap((value as Map).cast<String, dynamic>())),
      creationDate: map['creationDate'] as String,
      extranetEndpoint: map['extranetEndpoint'] as String,
      intranetEndpoint: map['intranetEndpoint'] as String,
      lifecycleRules: pulumi.Input.decodeList<GetBucketsBucketLifecycleRule>(map['lifecycleRules'], (value) => GetBucketsBucketLifecycleRule.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      logging: GetBucketsBucketLogging.fromMap((map['logging'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      owner: map['owner'] as String,
      policy: map['policy'] as String,
      redundancyType: map['redundancyType'] as String,
      refererConfig: GetBucketsBucketRefererConfig.fromMap((map['refererConfig'] as Map).cast<String, dynamic>()),
      serverSideEncryptionRule: GetBucketsBucketServerSideEncryptionRule.fromMap((map['serverSideEncryptionRule'] as Map).cast<String, dynamic>()),
      storageClass: map['storageClass'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      versioning: GetBucketsBucketVersioning.fromMap((map['versioning'] as Map).cast<String, dynamic>()),
      website: GetBucketsBucketWebsite.fromMap((map['website'] as Map).cast<String, dynamic>()),
    );
  }
}

