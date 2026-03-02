// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'composite_path_response.dart';
import 'excluded_path_response.dart';
import 'full_text_index_path_response.dart';
import 'included_path_response.dart';
import 'spatial_spec_response.dart';
import 'vector_index_response.dart';

/// Cosmos DB indexing policy
class IndexingPolicyResponse {
  /// Indicates if the indexing policy is automatic
  final pulumi.Input<bool>? automatic;
  /// List of composite path list
  final pulumi.Input<List<List<CompositePathResponse>>>? compositeIndexes;
  /// List of paths to exclude from indexing
  final pulumi.Input<List<ExcludedPathResponse>>? excludedPaths;
  /// List of paths to include in the full text indexing
  final pulumi.Input<List<FullTextIndexPathResponse>>? fullTextIndexes;
  /// List of paths to include in the indexing
  final pulumi.Input<List<IncludedPathResponse>>? includedPaths;
  /// Indicates the indexing mode.
  final pulumi.Input<String>? indexingMode;
  /// List of spatial specifics
  final pulumi.Input<List<SpatialSpecResponse>>? spatialIndexes;
  /// List of paths to include in the vector indexing
  final pulumi.Input<List<VectorIndexResponse>>? vectorIndexes;

  /// Creates a new [IndexingPolicyResponse].
  /// [automatic] Indicates if the indexing policy is automatic
  /// [compositeIndexes] List of composite path list
  /// [excludedPaths] List of paths to exclude from indexing
  /// [fullTextIndexes] List of paths to include in the full text indexing
  /// [includedPaths] List of paths to include in the indexing
  /// [indexingMode] Indicates the indexing mode.
  /// [spatialIndexes] List of spatial specifics
  /// [vectorIndexes] List of paths to include in the vector indexing
  IndexingPolicyResponse({
    this.automatic,
    this.compositeIndexes,
    this.excludedPaths,
    this.fullTextIndexes,
    this.includedPaths,
    this.indexingMode,
    this.spatialIndexes,
    this.vectorIndexes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automatic': ?automatic,
      'compositeIndexes': ?pulumi.Input.mapOptionalInputValue<List<List<CompositePathResponse>>, List<List<Map<String, dynamic>>>>(compositeIndexes, (value) => pulumi.Input.encodeList<List<CompositePathResponse>, List<Map<String, dynamic>>>(value, (value) => pulumi.Input.encodeList<CompositePathResponse, Map<String, dynamic>>(value, (value) => value.toMap()))),
      'excludedPaths': ?pulumi.Input.mapOptionalInputValue<List<ExcludedPathResponse>, List<Map<String, dynamic>>>(excludedPaths, (value) => pulumi.Input.encodeList<ExcludedPathResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fullTextIndexes': ?pulumi.Input.mapOptionalInputValue<List<FullTextIndexPathResponse>, List<Map<String, dynamic>>>(fullTextIndexes, (value) => pulumi.Input.encodeList<FullTextIndexPathResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includedPaths': ?pulumi.Input.mapOptionalInputValue<List<IncludedPathResponse>, List<Map<String, dynamic>>>(includedPaths, (value) => pulumi.Input.encodeList<IncludedPathResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'indexingMode': ?indexingMode,
      'spatialIndexes': ?pulumi.Input.mapOptionalInputValue<List<SpatialSpecResponse>, List<Map<String, dynamic>>>(spatialIndexes, (value) => pulumi.Input.encodeList<SpatialSpecResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vectorIndexes': ?pulumi.Input.mapOptionalInputValue<List<VectorIndexResponse>, List<Map<String, dynamic>>>(vectorIndexes, (value) => pulumi.Input.encodeList<VectorIndexResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IndexingPolicyResponse.fromMap(Map<String, dynamic> map) {
    return IndexingPolicyResponse(
      automatic: map['automatic'] == null ? null : (map['automatic'] as bool).input(),
      compositeIndexes: map['compositeIndexes'] == null ? null : (pulumi.Input.decodeList<List<CompositePathResponse>>(map['compositeIndexes'], (value) => pulumi.Input.decodeList<CompositePathResponse>(value, (value) => CompositePathResponse.fromMap((value as Map).cast<String, dynamic>())))).input(),
      excludedPaths: map['excludedPaths'] == null ? null : (pulumi.Input.decodeList<ExcludedPathResponse>(map['excludedPaths'], (value) => ExcludedPathResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      fullTextIndexes: map['fullTextIndexes'] == null ? null : (pulumi.Input.decodeList<FullTextIndexPathResponse>(map['fullTextIndexes'], (value) => FullTextIndexPathResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      includedPaths: map['includedPaths'] == null ? null : (pulumi.Input.decodeList<IncludedPathResponse>(map['includedPaths'], (value) => IncludedPathResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      indexingMode: map['indexingMode'] == null ? null : (map['indexingMode'] as String).input(),
      spatialIndexes: map['spatialIndexes'] == null ? null : (pulumi.Input.decodeList<SpatialSpecResponse>(map['spatialIndexes'], (value) => SpatialSpecResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vectorIndexes: map['vectorIndexes'] == null ? null : (pulumi.Input.decodeList<VectorIndexResponse>(map['vectorIndexes'], (value) => VectorIndexResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

