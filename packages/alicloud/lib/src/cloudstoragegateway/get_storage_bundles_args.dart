// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudstoragegateway_get_storage_bundles_get_storage_bundles_args_doc}
/// Arguments for getStorageBundles.
/// {@endtemplate}
/// {@macro pulumi_cloudstoragegateway_get_storage_bundles_get_storage_bundles_args_doc}
class GetStorageBundlesArgs {
  final pulumi.Input<String> backendBucketRegionId;
  final pulumi.Input<List<String>>? ids;
  final pulumi.Input<String>? nameRegex;
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;

  /// Creates a new [GetStorageBundlesArgs].
  /// [backendBucketRegionId] Required.
  /// [ids] Optional.
  /// [nameRegex] Optional.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetStorageBundlesArgs({
    required String backendBucketRegionId,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    int? pageNumber,
    int? pageSize,
  }) :
      backendBucketRegionId = pulumi.Input.asInput<String>(backendBucketRegionId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendBucketRegionId': backendBucketRegionId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetStorageBundlesArgs.fromMap(Map<String, dynamic> map) {
    return GetStorageBundlesArgs(
      backendBucketRegionId: map['backendBucketRegionId'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
    );
  }
}

