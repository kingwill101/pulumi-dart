// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bucket_intelligent_tiering_configuration_filter/bucket_intelligent_tiering_configuration_filter.dart';
import '../bucket_intelligent_tiering_configuration_tiering/bucket_intelligent_tiering_configuration_tiering.dart';

/// The set of arguments for BucketIntelligentTieringConfiguration.
class BucketIntelligentTieringConfigurationArgs {
  /// Name of the bucket this intelligent tiering configuration is associated with.
  final Input<String> bucket;

  /// Bucket filter. The configuration only includes objects that meet the filter's criteria (documented below).
  final Input<BucketIntelligentTieringConfigurationFilter>? filter;

  /// Unique name used to identify the S3 Intelligent-Tiering configuration for the bucket.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Specifies the status of the configuration. Valid values: `Enabled`, `Disabled`.
  final Input<String>? status;

  /// S3 Intelligent-Tiering storage class tiers of the configuration (documented below).
  final Input<List<BucketIntelligentTieringConfigurationTiering>> tierings;

  BucketIntelligentTieringConfigurationArgs({
    required this.bucket,
    this.filter,
    this.name,
    this.region,
    this.status,
    required this.tierings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = Input.mapOptionalInputValue<
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
    map['tierings'] = Input.mapInputValue<
            List<BucketIntelligentTieringConfigurationTiering>,
            List<Map<String, dynamic>>>(
        tierings,
        (value) => Input.encodeList<
            BucketIntelligentTieringConfigurationTiering,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    return map;
  }

  factory BucketIntelligentTieringConfigurationArgs.fromMap(
      Map<String, dynamic> map) {
    return BucketIntelligentTieringConfigurationArgs(
      bucket: Input.asInput<String>(map['bucket']),
      filter:
          Input.asOptionalInput<BucketIntelligentTieringConfigurationFilter>(
              map['filter']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      status: Input.asOptionalInput<String>(map['status']),
      tierings:
          Input.asInput<List<BucketIntelligentTieringConfigurationTiering>>(
              map['tierings']),
    );
  }
}
