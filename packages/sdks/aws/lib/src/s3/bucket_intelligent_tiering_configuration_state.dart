// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_intelligent_tiering_configuration_filter.dart';
import 'bucket_intelligent_tiering_configuration_tiering.dart';

/// Input properties used for looking up and filtering BucketIntelligentTieringConfiguration resources.
class BucketIntelligentTieringConfigurationState {
  /// Name of the bucket this intelligent tiering configuration is associated with.
  final pulumi.Input<String?>? bucket;
  /// Bucket filter. The configuration only includes objects that meet the filter's criteria. See `filter` Block below.
  final pulumi.Input<BucketIntelligentTieringConfigurationFilter?>? filter;
  /// Unique name used to identify the S3 Intelligent-Tiering configuration for the bucket.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Status of the configuration. Valid values: `Enabled`, `Disabled`.
  final pulumi.Input<String?>? status;
  /// S3 Intelligent-Tiering storage class tiers of the configuration. See `tiering` Block below.
  final pulumi.Input<List<BucketIntelligentTieringConfigurationTiering>?>? tierings;

  /// Creates a new [BucketIntelligentTieringConfigurationState].
  /// [bucket] Name of the bucket this intelligent tiering configuration is associated with.
  /// [filter] Bucket filter. The configuration only includes objects that meet the filter's criteria. See `filter` Block below.
  /// [name] Unique name used to identify the S3 Intelligent-Tiering configuration for the bucket.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Status of the configuration. Valid values: `Enabled`, `Disabled`.
  /// [tierings] S3 Intelligent-Tiering storage class tiers of the configuration. See `tiering` Block below.
  const BucketIntelligentTieringConfigurationState({
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
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketIntelligentTieringConfigurationFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tierings: (() { final guardedValue = map['tierings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketIntelligentTieringConfigurationTiering>(guardedValue, (value) => BucketIntelligentTieringConfigurationTiering.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
