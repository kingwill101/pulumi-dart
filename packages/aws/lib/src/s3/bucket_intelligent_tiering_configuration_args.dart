// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_intelligent_tiering_configuration_filter.dart';
import 'bucket_intelligent_tiering_configuration_tiering.dart';

/// {@template pulumi_s3_bucket_intelligent_tiering_configuration_bucket_intelligent_tiering_configuration_args_doc}
/// The set of arguments for BucketIntelligentTieringConfiguration.
/// {@endtemplate}
/// {@macro pulumi_s3_bucket_intelligent_tiering_configuration_bucket_intelligent_tiering_configuration_args_doc}
class BucketIntelligentTieringConfigurationArgs {
  /// Name of the bucket this intelligent tiering configuration is associated with.
  final pulumi.Input<String> bucket;

  /// Bucket filter. The configuration only includes objects that meet the filter's criteria (documented below).
  final pulumi.Input<BucketIntelligentTieringConfigurationFilter>? filter;

  /// Unique name used to identify the S3 Intelligent-Tiering configuration for the bucket.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Specifies the status of the configuration. Valid values: `Enabled`, `Disabled`.
  final pulumi.Input<String>? status;

  /// S3 Intelligent-Tiering storage class tiers of the configuration (documented below).
  final pulumi.Input<List<BucketIntelligentTieringConfigurationTiering>>
      tierings;

  /// Creates a new [BucketIntelligentTieringConfigurationArgs].
  /// [bucket] Name of the bucket this intelligent tiering configuration is associated with.
  /// [filter] Bucket filter. The configuration only includes objects that meet the filter's criteria (documented below).
  /// [name] Unique name used to identify the S3 Intelligent-Tiering configuration for the bucket.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Specifies the status of the configuration. Valid values: `Enabled`, `Disabled`.
  /// [tierings] S3 Intelligent-Tiering storage class tiers of the configuration (documented below).
  BucketIntelligentTieringConfigurationArgs({
    required String bucket,
    BucketIntelligentTieringConfigurationFilter? filter,
    String? name,
    String? region,
    String? status,
    required List<BucketIntelligentTieringConfigurationTiering> tierings,
  })  : bucket = pulumi.Input.asInput<String>(bucket),
        filter = pulumi.Input.asOptionalInput<
            BucketIntelligentTieringConfigurationFilter>(filter),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        status = pulumi.Input.asOptionalInput<String>(status),
        tierings = pulumi.Input.asInput<
            List<BucketIntelligentTieringConfigurationTiering>>(tierings);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = pulumi.Input.mapOptionalInputValue<
          BucketIntelligentTieringConfigurationFilter,
          Map<String, dynamic>>(filterValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    map['tierings'] = pulumi.Input.mapInputValue<
            List<BucketIntelligentTieringConfigurationTiering>,
            List<Map<String, dynamic>>>(
        tierings,
        (value) => pulumi.Input.encodeList<
            BucketIntelligentTieringConfigurationTiering,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    return map;
  }

  factory BucketIntelligentTieringConfigurationArgs.fromMap(
      Map<String, dynamic> map) {
    return BucketIntelligentTieringConfigurationArgs(
      bucket: map['bucket'] as String,
      filter: map['filter'] == null
          ? null
          : BucketIntelligentTieringConfigurationFilter.fromMap(
              (map['filter'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tierings:
          pulumi.Input.decodeList<BucketIntelligentTieringConfigurationTiering>(
              map['tierings'],
              (value) => BucketIntelligentTieringConfigurationTiering.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
