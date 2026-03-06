// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_assets_asset.dart';

/// Result data returned by getAssets.
class GetAssetsResult {
  /// A list of Asset Entries. Each element contains the following attributes:
  final List<GetAssetsAsset> assets;
  final String? criteria;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Asset IDs.
  final List<String> ids;
  final int? importance;
  final String? logicalExp;
  final String? machineTypes;
  final bool? noGroupTrace;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;

  /// Creates a new [GetAssetsResult].
  /// [assets] A list of Asset Entries. Each element contains the following attributes:
  /// [criteria] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Asset IDs.
  /// [importance] Optional.
  /// [logicalExp] Optional.
  /// [machineTypes] Optional.
  /// [noGroupTrace] Optional.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  const GetAssetsResult({
    required this.assets,
    this.criteria,
    required this.id,
    required this.ids,
    this.importance,
    this.logicalExp,
    this.machineTypes,
    this.noGroupTrace,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assets': pulumi.Input.encodeList<GetAssetsAsset, Map<String, dynamic>>(assets, (value) => value.toMap()),
      'criteria': ?criteria,
      'id': id,
      'ids': ids,
      'importance': ?importance,
      'logicalExp': ?logicalExp,
      'machineTypes': ?machineTypes,
      'noGroupTrace': ?noGroupTrace,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetAssetsResult.fromMap(Map<String, dynamic> map) {
    return GetAssetsResult(
      assets: pulumi.Input.decodeList<GetAssetsAsset>(map['assets']!, (value) => GetAssetsAsset.fromMap((value as Map).cast<String, dynamic>())),
      criteria: (() { final guardedValue = map['criteria']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      importance: (() { final guardedValue = map['importance']; if (guardedValue == null) return null; return guardedValue as int; })(),
      logicalExp: (() { final guardedValue = map['logicalExp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      machineTypes: (() { final guardedValue = map['machineTypes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      noGroupTrace: (() { final guardedValue = map['noGroupTrace']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
    );
  }
}

