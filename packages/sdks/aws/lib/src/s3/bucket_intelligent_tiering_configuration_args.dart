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
  final pulumi.Input<List<BucketIntelligentTieringConfigurationTiering>> tierings;

  /// Creates a new [BucketIntelligentTieringConfigurationArgs].
  /// [bucket] Name of the bucket this intelligent tiering configuration is associated with.
  /// [filter] Bucket filter. The configuration only includes objects that meet the filter's criteria (documented below).
  /// [name] Unique name used to identify the S3 Intelligent-Tiering configuration for the bucket.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Specifies the status of the configuration. Valid values: `Enabled`, `Disabled`.
  /// [tierings] S3 Intelligent-Tiering storage class tiers of the configuration (documented below).
  BucketIntelligentTieringConfigurationArgs({
    required pulumi.Output<String> bucket,
    pulumi.Output<BucketIntelligentTieringConfigurationFilter>? filter,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    required pulumi.Output<List<BucketIntelligentTieringConfigurationTiering>> tierings,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      filter = pulumi.Input.asOptionalInput<BucketIntelligentTieringConfigurationFilter>(filter),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      tierings = pulumi.Input.asInput<List<BucketIntelligentTieringConfigurationTiering>>(tierings);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'filter': ?pulumi.Input.mapOptionalInputValue<BucketIntelligentTieringConfigurationFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'status': ?status,
      'tierings': pulumi.Input.mapInputValue<List<BucketIntelligentTieringConfigurationTiering>, List<Map<String, dynamic>>>(tierings, (value) => pulumi.Input.encodeList<BucketIntelligentTieringConfigurationTiering, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BucketIntelligentTieringConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return BucketIntelligentTieringConfigurationArgs(
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      filter: map['filter'] == null ? null : pulumi.Output.create<BucketIntelligentTieringConfigurationFilter>(BucketIntelligentTieringConfigurationFilter.fromMap((map['filter'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tierings: pulumi.Output.create<List<BucketIntelligentTieringConfigurationTiering>>(pulumi.Input.decodeList<BucketIntelligentTieringConfigurationTiering>(map['tierings'], (value) => BucketIntelligentTieringConfigurationTiering.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

