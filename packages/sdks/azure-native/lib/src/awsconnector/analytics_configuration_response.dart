// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_class_analysis_response.dart';
import 'tag_filter_response.dart';

/// Definition of AnalyticsConfiguration
class AnalyticsConfigurationResponse {
  /// The ID that identifies the analytics configuration.
  final String? id;
  /// The prefix that an object must have to be included in the analytics results.
  final String? prefix;
  /// Contains data related to access patterns to be collected and made available to analyze the tradeoffs between different storage classes. Specifies data related to access patterns to be collected and made available to analyze the tradeoffs between different storage classes for an Amazon S3 bucket.
  final StorageClassAnalysisResponse? storageClassAnalysis;
  /// The tags to use when evaluating an analytics filter. The analytics only includes objects that meet the filter's criteria. If no filter is specified, all of the contents of the bucket are included in the analysis.
  final List<TagFilterResponse>? tagFilters;

  /// Creates a new [AnalyticsConfigurationResponse].
  /// [id] The ID that identifies the analytics configuration.
  /// [prefix] The prefix that an object must have to be included in the analytics results.
  /// [storageClassAnalysis] Contains data related to access patterns to be collected and made available to analyze the tradeoffs between different storage classes. Specifies data related to access patterns to be collected and made available to analyze the tradeoffs between different storage classes for an Amazon S3 bucket.
  /// [tagFilters] The tags to use when evaluating an analytics filter. The analytics only includes objects that meet the filter's criteria. If no filter is specified, all of the contents of the bucket are included in the analysis.
  AnalyticsConfigurationResponse({
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
      'tagFilters': ?tagFilters == null ? null : pulumi.Input.encodeList<TagFilterResponse, Map<String, dynamic>>(tagFilters!, (value) => value.toMap()),
    };
  }

  factory AnalyticsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AnalyticsConfigurationResponse(
      id: map['id'] == null ? null : map['id'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      storageClassAnalysis: map['storageClassAnalysis'] == null ? null : StorageClassAnalysisResponse.fromMap((map['storageClassAnalysis'] as Map).cast<String, dynamic>()),
      tagFilters: map['tagFilters'] == null ? null : pulumi.Input.decodeList<TagFilterResponse>(map['tagFilters'], (value) => TagFilterResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

