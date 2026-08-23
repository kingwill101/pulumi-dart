// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'excluded_path_response.dart';
import 'included_path_response.dart';

/// Cosmos DB indexing policy
class IndexingPolicyResponse {
  /// Indicates if the indexing policy is automatic
  final pulumi.Input<bool>? automatic;
  /// List of paths to exclude from indexing
  final pulumi.Input<List<ExcludedPathResponse>>? excludedPaths;
  /// List of paths to include in the indexing
  final pulumi.Input<List<IncludedPathResponse>>? includedPaths;
  /// Indicates the indexing mode.
  final pulumi.Input<String>? indexingMode;

  /// Creates a new [IndexingPolicyResponse].
  /// [automatic] Indicates if the indexing policy is automatic
  /// [excludedPaths] List of paths to exclude from indexing
  /// [includedPaths] List of paths to include in the indexing
  /// [indexingMode] Indicates the indexing mode.
  const IndexingPolicyResponse({
    this.automatic,
    this.excludedPaths,
    this.includedPaths,
    this.indexingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automatic': ?automatic,
      'excludedPaths': ?pulumi.Input.mapOptionalInputValue<List<ExcludedPathResponse>, List<Map<String, dynamic>>>(excludedPaths, (value) => pulumi.Input.encodeList<ExcludedPathResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includedPaths': ?pulumi.Input.mapOptionalInputValue<List<IncludedPathResponse>, List<Map<String, dynamic>>>(includedPaths, (value) => pulumi.Input.encodeList<IncludedPathResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'indexingMode': ?indexingMode,
    };
  }

  factory IndexingPolicyResponse.fromMap(Map<String, dynamic> map) {
    return IndexingPolicyResponse(
      automatic: (() { final guardedValue = map['automatic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      excludedPaths: (() { final guardedValue = map['excludedPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExcludedPathResponse>(guardedValue, (value) => ExcludedPathResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      includedPaths: (() { final guardedValue = map['includedPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IncludedPathResponse>(guardedValue, (value) => IncludedPathResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      indexingMode: (() { final guardedValue = map['indexingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
