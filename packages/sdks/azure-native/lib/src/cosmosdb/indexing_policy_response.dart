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
  final bool? automatic;
  /// List of composite path list
  final List<List<CompositePathResponse>>? compositeIndexes;
  /// List of paths to exclude from indexing
  final List<ExcludedPathResponse>? excludedPaths;
  /// List of paths to include in the full text indexing
  final List<FullTextIndexPathResponse>? fullTextIndexes;
  /// List of paths to include in the indexing
  final List<IncludedPathResponse>? includedPaths;
  /// Indicates the indexing mode.
  final String? indexingMode;
  /// List of spatial specifics
  final List<SpatialSpecResponse>? spatialIndexes;
  /// List of paths to include in the vector indexing
  final List<VectorIndexResponse>? vectorIndexes;

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
      'compositeIndexes': ?compositeIndexes == null ? null : pulumi.Input.encodeList<List<CompositePathResponse>, List<Map<String, dynamic>>>(compositeIndexes!, (value) => pulumi.Input.encodeList<CompositePathResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'excludedPaths': ?excludedPaths == null ? null : pulumi.Input.encodeList<ExcludedPathResponse, Map<String, dynamic>>(excludedPaths!, (value) => value.toMap()),
      'fullTextIndexes': ?fullTextIndexes == null ? null : pulumi.Input.encodeList<FullTextIndexPathResponse, Map<String, dynamic>>(fullTextIndexes!, (value) => value.toMap()),
      'includedPaths': ?includedPaths == null ? null : pulumi.Input.encodeList<IncludedPathResponse, Map<String, dynamic>>(includedPaths!, (value) => value.toMap()),
      'indexingMode': ?indexingMode,
      'spatialIndexes': ?spatialIndexes == null ? null : pulumi.Input.encodeList<SpatialSpecResponse, Map<String, dynamic>>(spatialIndexes!, (value) => value.toMap()),
      'vectorIndexes': ?vectorIndexes == null ? null : pulumi.Input.encodeList<VectorIndexResponse, Map<String, dynamic>>(vectorIndexes!, (value) => value.toMap()),
    };
  }

  factory IndexingPolicyResponse.fromMap(Map<String, dynamic> map) {
    return IndexingPolicyResponse(
      automatic: map['automatic'] == null ? null : map['automatic'] as bool,
      compositeIndexes: map['compositeIndexes'] == null ? null : pulumi.Input.decodeList<List<CompositePathResponse>>(map['compositeIndexes'], (value) => pulumi.Input.decodeList<CompositePathResponse>(value, (value) => CompositePathResponse.fromMap((value as Map).cast<String, dynamic>()))),
      excludedPaths: map['excludedPaths'] == null ? null : pulumi.Input.decodeList<ExcludedPathResponse>(map['excludedPaths'], (value) => ExcludedPathResponse.fromMap((value as Map).cast<String, dynamic>())),
      fullTextIndexes: map['fullTextIndexes'] == null ? null : pulumi.Input.decodeList<FullTextIndexPathResponse>(map['fullTextIndexes'], (value) => FullTextIndexPathResponse.fromMap((value as Map).cast<String, dynamic>())),
      includedPaths: map['includedPaths'] == null ? null : pulumi.Input.decodeList<IncludedPathResponse>(map['includedPaths'], (value) => IncludedPathResponse.fromMap((value as Map).cast<String, dynamic>())),
      indexingMode: map['indexingMode'] == null ? null : map['indexingMode'] as String,
      spatialIndexes: map['spatialIndexes'] == null ? null : pulumi.Input.decodeList<SpatialSpecResponse>(map['spatialIndexes'], (value) => SpatialSpecResponse.fromMap((value as Map).cast<String, dynamic>())),
      vectorIndexes: map['vectorIndexes'] == null ? null : pulumi.Input.decodeList<VectorIndexResponse>(map['vectorIndexes'], (value) => VectorIndexResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

