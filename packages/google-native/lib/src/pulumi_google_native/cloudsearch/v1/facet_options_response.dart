// ignore_for_file: unused_element, unnecessary_cast

import 'integer_faceting_options_response.dart';

/// Specifies operators to return facet results for. There will be one FacetResult for every source_name/object_type/operator_name combination.
class FacetOptionsResponse {
  /// If set, describes integer faceting options for the given integer property. The corresponding integer property in the schema should be marked isFacetable. The number of buckets returned would be minimum of this and num_facet_buckets.
  final IntegerFacetingOptionsResponse integerFacetingOptions;

  /// Maximum number of facet buckets that should be returned for this facet. Defaults to 10. Maximum value is 100.
  final int numFacetBuckets;

  /// If object_type is set, only those objects of that type will be used to compute facets. If empty, then all objects will be used to compute facets.
  final String objectType;

  /// The name of the operator chosen for faceting. @see cloudsearch.SchemaPropertyOptions
  final String operatorName;

  /// Source name to facet on. Format: datasources/{source_id} If empty, all data sources will be used.
  final String sourceName;

  FacetOptionsResponse({
    required this.integerFacetingOptions,
    required this.numFacetBuckets,
    required this.objectType,
    required this.operatorName,
    required this.sourceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['integerFacetingOptions'] = integerFacetingOptions.toMap();
    map['numFacetBuckets'] = numFacetBuckets;
    map['objectType'] = objectType;
    map['operatorName'] = operatorName;
    map['sourceName'] = sourceName;
    return map;
  }

  factory FacetOptionsResponse.fromMap(Map<String, dynamic> map) {
    return FacetOptionsResponse(
      integerFacetingOptions: IntegerFacetingOptionsResponse.fromMap(
          (map['integerFacetingOptions'] as Map).cast<String, dynamic>()),
      numFacetBuckets: map['numFacetBuckets'] as int,
      objectType: map['objectType'] as String,
      operatorName: map['operatorName'] as String,
      sourceName: map['sourceName'] as String,
    );
  }
}
