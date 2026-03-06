// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_class_analysis_response.dart';
import 'tag_filter_response.dart';

/// Definition of AnalyticsConfiguration
class AnalyticsConfigurationResponse {
  /// The ID that identifies the analytics configuration.
  final pulumi.Input<String>? id;
  /// The prefix that an object must have to be included in the analytics results.
  final pulumi.Input<String>? prefix;
  /// Contains data related to access patterns to be collected and made available to analyze the tradeoffs between different storage classes. Specifies data related to access patterns to be collected and made available to analyze the tradeoffs between different storage classes for an Amazon S3 bucket.
  final pulumi.Input<StorageClassAnalysisResponse>? storageClassAnalysis;
  /// The tags to use when evaluating an analytics filter. The analytics only includes objects that meet the filter's criteria. If no filter is specified, all of the contents of the bucket are included in the analysis.
  final pulumi.Input<List<TagFilterResponse>>? tagFilters;

  /// Creates a new [AnalyticsConfigurationResponse].
  /// [id] The ID that identifies the analytics configuration.
  /// [prefix] The prefix that an object must have to be included in the analytics results.
  /// [storageClassAnalysis] Contains data related to access patterns to be collected and made available to analyze the tradeoffs between different storage classes. Specifies data related to access patterns to be collected and made available to analyze the tradeoffs between different storage classes for an Amazon S3 bucket.
  /// [tagFilters] The tags to use when evaluating an analytics filter. The analytics only includes objects that meet the filter's criteria. If no filter is specified, all of the contents of the bucket are included in the analysis.
  const AnalyticsConfigurationResponse({
    this.id,
    this.prefix,
    this.storageClassAnalysis,
    this.tagFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'prefix': ?prefix,
      'storageClassAnalysis': ?pulumi.Input.mapOptionalInputValue<StorageClassAnalysisResponse, Map<String, dynamic>>(storageClassAnalysis, (value) => value.toMap()),
      'tagFilters': ?pulumi.Input.mapOptionalInputValue<List<TagFilterResponse>, List<Map<String, dynamic>>>(tagFilters, (value) => pulumi.Input.encodeList<TagFilterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AnalyticsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AnalyticsConfigurationResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageClassAnalysis: (() { final guardedValue = map['storageClassAnalysis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageClassAnalysisResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tagFilters: (() { final guardedValue = map['tagFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagFilterResponse>(guardedValue, (value) => TagFilterResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

