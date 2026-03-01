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
  final bool? automatic;
  /// List of composite path list
  final List<List<CompositePath>>? compositeIndexes;
  /// List of paths to exclude from indexing
  final List<ExcludedPath>? excludedPaths;
  /// List of paths to include in the full text indexing
  final List<FullTextIndexPath>? fullTextIndexes;
  /// List of paths to include in the indexing
  final List<IncludedPath>? includedPaths;
  /// Indicates the indexing mode.
  final String? indexingMode;
  /// List of spatial specifics
  final List<SpatialSpec>? spatialIndexes;
  /// List of paths to include in the vector indexing
  final List<VectorIndex>? vectorIndexes;

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
      'compositeIndexes': ?compositeIndexes == null ? null : pulumi.Input.encodeList<List<CompositePath>, List<Map<String, dynamic>>>(compositeIndexes!, (value) => pulumi.Input.encodeList<CompositePath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'excludedPaths': ?excludedPaths == null ? null : pulumi.Input.encodeList<ExcludedPath, Map<String, dynamic>>(excludedPaths!, (value) => value.toMap()),
      'fullTextIndexes': ?fullTextIndexes == null ? null : pulumi.Input.encodeList<FullTextIndexPath, Map<String, dynamic>>(fullTextIndexes!, (value) => value.toMap()),
      'includedPaths': ?includedPaths == null ? null : pulumi.Input.encodeList<IncludedPath, Map<String, dynamic>>(includedPaths!, (value) => value.toMap()),
      'indexingMode': ?indexingMode,
      'spatialIndexes': ?spatialIndexes == null ? null : pulumi.Input.encodeList<SpatialSpec, Map<String, dynamic>>(spatialIndexes!, (value) => value.toMap()),
      'vectorIndexes': ?vectorIndexes == null ? null : pulumi.Input.encodeList<VectorIndex, Map<String, dynamic>>(vectorIndexes!, (value) => value.toMap()),
    };
  }

  factory IndexingPolicy.fromMap(Map<String, dynamic> map) {
    return IndexingPolicy(
      automatic: map['automatic'] == null ? null : map['automatic'] as bool,
      compositeIndexes: map['compositeIndexes'] == null ? null : pulumi.Input.decodeList<List<CompositePath>>(map['compositeIndexes'], (value) => pulumi.Input.decodeList<CompositePath>(value, (value) => CompositePath.fromMap((value as Map).cast<String, dynamic>()))),
      excludedPaths: map['excludedPaths'] == null ? null : pulumi.Input.decodeList<ExcludedPath>(map['excludedPaths'], (value) => ExcludedPath.fromMap((value as Map).cast<String, dynamic>())),
      fullTextIndexes: map['fullTextIndexes'] == null ? null : pulumi.Input.decodeList<FullTextIndexPath>(map['fullTextIndexes'], (value) => FullTextIndexPath.fromMap((value as Map).cast<String, dynamic>())),
      includedPaths: map['includedPaths'] == null ? null : pulumi.Input.decodeList<IncludedPath>(map['includedPaths'], (value) => IncludedPath.fromMap((value as Map).cast<String, dynamic>())),
      indexingMode: map['indexingMode'] == null ? null : map['indexingMode'] as String,
      spatialIndexes: map['spatialIndexes'] == null ? null : pulumi.Input.decodeList<SpatialSpec>(map['spatialIndexes'], (value) => SpatialSpec.fromMap((value as Map).cast<String, dynamic>())),
      vectorIndexes: map['vectorIndexes'] == null ? null : pulumi.Input.decodeList<VectorIndex>(map['vectorIndexes'], (value) => VectorIndex.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

