// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_intelligent_tiering_configuration_filter.dart';
import 'bucket_intelligent_tiering_configuration_tiering.dart';

/// Input properties used for looking up and filtering BucketIntelligentTieringConfiguration resources.
class BucketIntelligentTieringConfigurationState {
  /// Name of the bucket this intelligent tiering configuration is associated with.
  final pulumi.Input<String>? bucket;
  /// Bucket filter. The configuration only includes objects that meet the filter's criteria (documented below).
  final pulumi.Input<BucketIntelligentTieringConfigurationFilter>? filter;
  /// Unique name used to identify the S3 Intelligent-Tiering configuration for the bucket.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies the status of the configuration. Valid values: `Enabled`, `Disabled`.
  final pulumi.Input<String>? status;
  /// S3 Intelligent-Tiering storage class tiers of the configuration (documented below).
  final pulumi.Input<List<BucketIntelligentTieringConfigurationTiering>>? tierings;

  /// Creates a new [BucketIntelligentTieringConfigurationState].
  /// [bucket] Name of the bucket this intelligent tiering configuration is associated with.
  /// [filter] Bucket filter. The configuration only includes objects that meet the filter's criteria (documented below).
  /// [name] Unique name used to identify the S3 Intelligent-Tiering configuration for the bucket.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Specifies the status of the configuration. Valid values: `Enabled`, `Disabled`.
  /// [tierings] S3 Intelligent-Tiering storage class tiers of the configuration (documented below).
  BucketIntelligentTieringConfigurationState({
    this.bucket,
    this.filter,
    this.name,
    this.region,
    this.status,
    this.tierings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'filter': ?pulumi.Input.mapOptionalInputValue<BucketIntelligentTieringConfigurationFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'status': ?status,
      'tierings': ?pulumi.Input.mapOptionalInputValue<List<BucketIntelligentTieringConfigurationTiering>, List<Map<String, dynamic>>>(tierings, (value) => pulumi.Input.encodeList<BucketIntelligentTieringConfigurationTiering, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BucketIntelligentTieringConfigurationState.fromMap(Map<String, dynamic> map) {
    return BucketIntelligentTieringConfigurationState(
      bucket: map['bucket'] == null ? null : (map['bucket'] as String).input(),
      filter: map['filter'] == null ? null : (BucketIntelligentTieringConfigurationFilter.fromMap((map['filter'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tierings: map['tierings'] == null ? null : (pulumi.Input.decodeList<BucketIntelligentTieringConfigurationTiering>(map['tierings'], (value) => BucketIntelligentTieringConfigurationTiering.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

