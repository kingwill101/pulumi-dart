// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'composite_path.dart';
import 'excluded_path.dart';
import 'full_text_index_path.dart';
import 'included_path.dart';
import 'spatial_spec.dart';
import 'vector_index.dart';

/// Cosmos DB indexing policy
class IndexingPolicy {
  /// Indicates if the indexing policy is automatic
  final pulumi.Input<bool>? automatic;
  /// List of composite path list
  final pulumi.Input<List<List<CompositePath>>>? compositeIndexes;
  /// List of paths to exclude from indexing
  final pulumi.Input<List<ExcludedPath>>? excludedPaths;
  /// List of paths to include in the full text indexing
  final pulumi.Input<List<FullTextIndexPath>>? fullTextIndexes;
  /// List of paths to include in the indexing
  final pulumi.Input<List<IncludedPath>>? includedPaths;
  /// Indicates the indexing mode.
  final pulumi.Input<String>? indexingMode;
  /// List of spatial specifics
  final pulumi.Input<List<SpatialSpec>>? spatialIndexes;
  /// List of paths to include in the vector indexing
  final pulumi.Input<List<VectorIndex>>? vectorIndexes;

  /// Creates a new [IndexingPolicy].
  /// [automatic] Indicates if the indexing policy is automatic
  /// [compositeIndexes] List of composite path list
  /// [excludedPaths] List of paths to exclude from indexing
  /// [fullTextIndexes] List of paths to include in the full text indexing
  /// [includedPaths] List of paths to include in the indexing
  /// [indexingMode] Indicates the indexing mode.
  /// [spatialIndexes] List of spatial specifics
  /// [vectorIndexes] List of paths to include in the vector indexing
  IndexingPolicy({
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
      'compositeIndexes': ?pulumi.Input.mapOptionalInputValue<List<List<CompositePath>>, List<List<Map<String, dynamic>>>>(compositeIndexes, (value) => pulumi.Input.encodeList<List<CompositePath>, List<Map<String, dynamic>>>(value, (value) => pulumi.Input.encodeList<CompositePath, Map<String, dynamic>>(value, (value) => value.toMap()))),
      'excludedPaths': ?pulumi.Input.mapOptionalInputValue<List<ExcludedPath>, List<Map<String, dynamic>>>(excludedPaths, (value) => pulumi.Input.encodeList<ExcludedPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fullTextIndexes': ?pulumi.Input.mapOptionalInputValue<List<FullTextIndexPath>, List<Map<String, dynamic>>>(fullTextIndexes, (value) => pulumi.Input.encodeList<FullTextIndexPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includedPaths': ?pulumi.Input.mapOptionalInputValue<List<IncludedPath>, List<Map<String, dynamic>>>(includedPaths, (value) => pulumi.Input.encodeList<IncludedPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'indexingMode': ?indexingMode,
      'spatialIndexes': ?pulumi.Input.mapOptionalInputValue<List<SpatialSpec>, List<Map<String, dynamic>>>(spatialIndexes, (value) => pulumi.Input.encodeList<SpatialSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vectorIndexes': ?pulumi.Input.mapOptionalInputValue<List<VectorIndex>, List<Map<String, dynamic>>>(vectorIndexes, (value) => pulumi.Input.encodeList<VectorIndex, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IndexingPolicy.fromMap(Map<String, dynamic> map) {
    return IndexingPolicy(
      automatic: map['automatic'] == null ? null : (map['automatic']! as bool).input(),
      compositeIndexes: map['compositeIndexes'] == null ? null : (pulumi.Input.decodeList<List<CompositePath>>(map['compositeIndexes']!, (value) => pulumi.Input.decodeList<CompositePath>(value, (value) => CompositePath.fromMap((value as Map).cast<String, dynamic>())))).input(),
      excludedPaths: map['excludedPaths'] == null ? null : (pulumi.Input.decodeList<ExcludedPath>(map['excludedPaths']!, (value) => ExcludedPath.fromMap((value as Map).cast<String, dynamic>()))).input(),
      fullTextIndexes: map['fullTextIndexes'] == null ? null : (pulumi.Input.decodeList<FullTextIndexPath>(map['fullTextIndexes']!, (value) => FullTextIndexPath.fromMap((value as Map).cast<String, dynamic>()))).input(),
      includedPaths: map['includedPaths'] == null ? null : (pulumi.Input.decodeList<IncludedPath>(map['includedPaths']!, (value) => IncludedPath.fromMap((value as Map).cast<String, dynamic>()))).input(),
      indexingMode: map['indexingMode'] == null ? null : (map['indexingMode']! as String).input(),
      spatialIndexes: map['spatialIndexes'] == null ? null : (pulumi.Input.decodeList<SpatialSpec>(map['spatialIndexes']!, (value) => SpatialSpec.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vectorIndexes: map['vectorIndexes'] == null ? null : (pulumi.Input.decodeList<VectorIndex>(map['vectorIndexes']!, (value) => VectorIndex.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

