// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_patch_baselines_baseline.dart';

/// Result data returned by getPatchBaselines.
class GetPatchBaselinesResult {
  final List<GetPatchBaselinesBaseline> baselines;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? operationSystem;
  final String? outputFile;
  final String? shareType;

  /// Creates a new [GetPatchBaselinesResult].
  /// [baselines] Required.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [operationSystem] Optional.
  /// [outputFile] Optional.
  /// [shareType] Optional.
  GetPatchBaselinesResult({
    required this.baselines,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.operationSystem,
    this.outputFile,
    this.shareType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baselines': pulumi.Input.encodeList<GetPatchBaselinesBaseline, Map<String, dynamic>>(baselines, (value) => value.toMap()),
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'operationSystem': ?operationSystem,
      'outputFile': ?outputFile,
      'shareType': ?shareType,
    };
  }

  factory GetPatchBaselinesResult.fromMap(Map<String, dynamic> map) {
    return GetPatchBaselinesResult(
      baselines: pulumi.Input.decodeList<GetPatchBaselinesBaseline>(map['baselines'], (value) => GetPatchBaselinesBaseline.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      operationSystem: map['operationSystem'] == null ? null : map['operationSystem'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      shareType: map['shareType'] == null ? null : map['shareType'] as String,
    );
  }
}

