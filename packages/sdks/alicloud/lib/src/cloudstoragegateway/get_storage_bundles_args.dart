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
    required this.backendBucketRegionId,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

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
      backendBucketRegionId: (map['backendBucketRegionId'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber']! as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize']! as int).input(),
    );
  }
}

