// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_filter_response.dart';

/// Definition of MetricsConfiguration
class MetricsConfigurationResponse {
  /// The access point that was used while performing operations on the object. The metrics configuration only includes objects that meet the filter's criteria.
  final String? accessPointArn;
  /// The ID used to identify the metrics configuration. This can be any value you choose that helps you identify your metrics configuration.
  final String? id;
  /// The prefix that an object must have to be included in the metrics results.
  final String? prefix;
  /// Specifies a list of tag filters to use as a metrics configuration filter. The metrics configuration includes only objects that meet the filter's criteria.
  final List<TagFilterResponse>? tagFilters;

  /// Creates a new [MetricsConfigurationResponse].
  /// [accessPointArn] The access point that was used while performing operations on the object. The metrics configuration only includes objects that meet the filter's criteria.
  /// [id] The ID used to identify the metrics configuration. This can be any value you choose that helps you identify your metrics configuration.
  /// [prefix] The prefix that an object must have to be included in the metrics results.
  /// [tagFilters] Specifies a list of tag filters to use as a metrics configuration filter. The metrics configuration includes only objects that meet the filter's criteria.
  MetricsConfigurationResponse({
    this.accessPointArn,
    this.id,
    this.prefix,
    this.tagFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointArn': ?accessPointArn,
      'id': ?id,
      'prefix': ?prefix,
      'tagFilters': ?tagFilters == null ? null : pulumi.Input.encodeList<TagFilterResponse, Map<String, dynamic>>(tagFilters!, (value) => value.toMap()),
    };
  }

  factory MetricsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return MetricsConfigurationResponse(
      accessPointArn: map['accessPointArn'] == null ? null : map['accessPointArn'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      tagFilters: map['tagFilters'] == null ? null : pulumi.Input.decodeList<TagFilterResponse>(map['tagFilters'], (value) => TagFilterResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

