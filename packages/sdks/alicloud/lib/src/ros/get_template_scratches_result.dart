// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_template_scratches_scratch.dart';

/// Result data returned by getTemplateScratches.
class GetTemplateScratchesResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final List<GetTemplateScratchesScratch> scratches;
  final String? status;
  final String? templateScratchType;

  /// Creates a new [GetTemplateScratchesResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [scratches] Required.
  /// [status] Optional.
  /// [templateScratchType] Optional.
  GetTemplateScratchesResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    this.outputFile,
    required this.scratches,
    this.status,
    this.templateScratchType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'scratches': pulumi.Input.encodeList<GetTemplateScratchesScratch, Map<String, dynamic>>(scratches, (value) => value.toMap()),
      'status': ?status,
      'templateScratchType': ?templateScratchType,
    };
  }

  factory GetTemplateScratchesResult.fromMap(Map<String, dynamic> map) {
    return GetTemplateScratchesResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      scratches: pulumi.Input.decodeList<GetTemplateScratchesScratch>(map['scratches'], (value) => GetTemplateScratchesScratch.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status'] as String,
      templateScratchType: map['templateScratchType'] == null ? null : map['templateScratchType'] as String,
    );
  }
}

