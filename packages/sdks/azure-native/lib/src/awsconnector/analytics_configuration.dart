// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_class_analysis.dart';
import 'tag_filter.dart';

/// Definition of AnalyticsConfiguration
class AnalyticsConfiguration {
  /// The ID that identifies the analytics configuration.
  final pulumi.Input<String>? id;
  /// The prefix that an object must have to be included in the analytics results.
  final pulumi.Input<String>? prefix;
  /// Contains data related to access patterns to be collected and made available to analyze the tradeoffs between different storage classes. Specifies data related to access patterns to be collected and made available to analyze the tradeoffs between different storage classes for an Amazon S3 bucket.
  final pulumi.Input<StorageClassAnalysis>? storageClassAnalysis;
  /// The tags to use when evaluating an analytics filter. The analytics only includes objects that meet the filter's criteria. If no filter is specified, all of the contents of the bucket are included in the analysis.
  final pulumi.Input<List<TagFilter>>? tagFilters;

  /// Creates a new [AnalyticsConfiguration].
  /// [id] The ID that identifies the analytics configuration.
  /// [prefix] The prefix that an object must have to be included in the analytics results.
  /// [storageClassAnalysis] Contains data related to access patterns to be collected and made available to analyze the tradeoffs between different storage classes. Specifies data related to access patterns to be collected and made available to analyze the tradeoffs between different storage classes for an Amazon S3 bucket.
  /// [tagFilters] The tags to use when evaluating an analytics filter. The analytics only includes objects that meet the filter's criteria. If no filter is specified, all of the contents of the bucket are included in the analysis.
  AnalyticsConfiguration({
    this.id,
    this.prefix,
    this.storageClassAnalysis,
    this.tagFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'prefix': ?prefix,
      'storageClassAnalysis': ?pulumi.Input.mapOptionalInputValue<StorageClassAnalysis, Map<String, dynamic>>(storageClassAnalysis, (value) => value.toMap()),
      'tagFilters': ?pulumi.Input.mapOptionalInputValue<List<TagFilter>, List<Map<String, dynamic>>>(tagFilters, (value) => pulumi.Input.encodeList<TagFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AnalyticsConfiguration.fromMap(Map<String, dynamic> map) {
    return AnalyticsConfiguration(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageClassAnalysis: (() { final guardedValue = map['storageClassAnalysis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageClassAnalysis.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tagFilters: (() { final guardedValue = map['tagFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagFilter>(guardedValue, (value) => TagFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

