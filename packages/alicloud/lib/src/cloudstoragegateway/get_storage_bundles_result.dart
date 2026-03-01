// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_storage_bundles_bundle.dart';

/// Result data returned by getStorageBundles.
class GetStorageBundlesResult {
  final String backendBucketRegionId;
  final List<GetStorageBundlesBundle> bundles;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  final int totalCount;

  /// Creates a new [GetStorageBundlesResult].
  /// [backendBucketRegionId] Required.
  /// [bundles] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [totalCount] Required.
  GetStorageBundlesResult({
    required this.backendBucketRegionId,
    required this.bundles,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    required this.totalCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendBucketRegionId': backendBucketRegionId,
      'bundles': pulumi.Input.encodeList<GetStorageBundlesBundle, Map<String, dynamic>>(bundles, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'totalCount': totalCount,
    };
  }

  factory GetStorageBundlesResult.fromMap(Map<String, dynamic> map) {
    return GetStorageBundlesResult(
      backendBucketRegionId: map['backendBucketRegionId'] as String,
      bundles: pulumi.Input.decodeList<GetStorageBundlesBundle>(map['bundles'], (value) => GetStorageBundlesBundle.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      totalCount: map['totalCount'] as int,
    );
  }
}

