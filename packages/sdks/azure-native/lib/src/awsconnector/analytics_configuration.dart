// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_class_analysis.dart';
import 'tag_filter.dart';

/// Definition of AnalyticsConfiguration
class AnalyticsConfiguration {
  /// The ID that identifies the analytics configuration.
  final String? id;
  /// The prefix that an object must have to be included in the analytics results.
  final String? prefix;
  /// Contains data related to access patterns to be collected and made available to analyze the tradeoffs between different storage classes. Specifies data related to access patterns to be collected and made available to analyze the tradeoffs between different storage classes for an Amazon S3 bucket.
  final StorageClassAnalysis? storageClassAnalysis;
  /// The tags to use when evaluating an analytics filter. The analytics only includes objects that meet the filter's criteria. If no filter is specified, all of the contents of the bucket are included in the analysis.
  final List<TagFilter>? tagFilters;

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
      'storageClassAnalysis': ?storageClassAnalysis == null ? null : storageClassAnalysis!.toMap(),
      'tagFilters': ?tagFilters == null ? null : pulumi.Input.encodeList<TagFilter, Map<String, dynamic>>(tagFilters!, (value) => value.toMap()),
    };
  }

  factory AnalyticsConfiguration.fromMap(Map<String, dynamic> map) {
    return AnalyticsConfiguration(
      id: map['id'] == null ? null : map['id'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      storageClassAnalysis: map['storageClassAnalysis'] == null ? null : StorageClassAnalysis.fromMap((map['storageClassAnalysis'] as Map).cast<String, dynamic>()),
      tagFilters: map['tagFilters'] == null ? null : pulumi.Input.decodeList<TagFilter>(map['tagFilters'], (value) => TagFilter.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

