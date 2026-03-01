// ignore_for_file: unused_element, unnecessary_cast

import 'integer_faceting_options.dart';

/// Specifies operators to return facet results for. There will be one FacetResult for every source_name/object_type/operator_name combination.
class FacetOptions {
  /// If set, describes integer faceting options for the given integer property. The corresponding integer property in the schema should be marked isFacetable. The number of buckets returned would be minimum of this and num_facet_buckets.
  final IntegerFacetingOptions? integerFacetingOptions;

  /// Maximum number of facet buckets that should be returned for this facet. Defaults to 10. Maximum value is 100.
  final int? numFacetBuckets;

  /// If object_type is set, only those objects of that type will be used to compute facets. If empty, then all objects will be used to compute facets.
  final String? objectType;

  /// The name of the operator chosen for faceting. @see cloudsearch.SchemaPropertyOptions
  final String? operatorName;

  /// Source name to facet on. Format: datasources/{source_id} If empty, all data sources will be used.
  final String? sourceName;

  /// Creates a new [FacetOptions].
  /// [integerFacetingOptions] If set, describes integer faceting options for the given integer property. The corresponding integer property in the schema should be marked isFacetable. The number of buckets returned would be minimum of this and num_facet_buckets.
  /// [numFacetBuckets] Maximum number of facet buckets that should be returned for this facet. Defaults to 10. Maximum value is 100.
  /// [objectType] If object_type is set, only those objects of that type will be used to compute facets. If empty, then all objects will be used to compute facets.
  /// [operatorName] The name of the operator chosen for faceting. @see cloudsearch.SchemaPropertyOptions
  /// [sourceName] Source name to facet on. Format: datasources/{source_id} If empty, all data sources will be used.
  FacetOptions({
    this.integerFacetingOptions,
    this.numFacetBuckets,
    this.objectType,
    this.operatorName,
    this.sourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integerFacetingOptions': ?integerFacetingOptions == null
          ? null
          : integerFacetingOptions!.toMap(),
      'numFacetBuckets': ?numFacetBuckets,
      'objectType': ?objectType,
      'operatorName': ?operatorName,
      'sourceName': ?sourceName,
    };
  }

  factory FacetOptions.fromMap(Map<String, dynamic> map) {
    return FacetOptions(
      integerFacetingOptions: map['integerFacetingOptions'] == null
          ? null
          : IntegerFacetingOptions.fromMap(
              (map['integerFacetingOptions'] as Map).cast<String, dynamic>(),
            ),
      numFacetBuckets: map['numFacetBuckets'] == null
          ? null
          : map['numFacetBuckets'] as int,
      objectType: map['objectType'] == null
          ? null
          : map['objectType'] as String,
      operatorName: map['operatorName'] == null
          ? null
          : map['operatorName'] as String,
      sourceName: map['sourceName'] == null
          ? null
          : map['sourceName'] as String,
    );
  }
}
