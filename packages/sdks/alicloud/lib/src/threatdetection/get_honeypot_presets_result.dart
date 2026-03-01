// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_honeypot_presets_preset.dart';

/// Result data returned by getHoneypotPresets.
class GetHoneypotPresetsResult {
  final int? currentPage;
  final bool? enableDetails;
  /// Honeypot mirror name.
  final String? honeypotImageName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Honeypot Preset IDs.
  final List<String> ids;
  final String? lang;
  /// Unique id of management node.
  final String? nodeId;
  final String? nodeName;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// Honeypot template custom name.
  final String? presetName;
  /// A list of Honeypot Preset Entries. Each element contains the following attributes:
  final List<GetHoneypotPresetsPreset> presets;

  /// Creates a new [GetHoneypotPresetsResult].
  /// [currentPage] Optional.
  /// [enableDetails] Optional.
  /// [honeypotImageName] Honeypot mirror name.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Honeypot Preset IDs.
  /// [lang] Optional.
  /// [nodeId] Unique id of management node.
  /// [nodeName] Optional.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [presetName] Honeypot template custom name.
  /// [presets] A list of Honeypot Preset Entries. Each element contains the following attributes:
  GetHoneypotPresetsResult({
    this.currentPage,
    this.enableDetails,
    this.honeypotImageName,
    required this.id,
    required this.ids,
    this.lang,
    this.nodeId,
    this.nodeName,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.presetName,
    required this.presets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentPage': ?currentPage,
      'enableDetails': ?enableDetails,
      'honeypotImageName': ?honeypotImageName,
      'id': id,
      'ids': ids,
      'lang': ?lang,
      'nodeId': ?nodeId,
      'nodeName': ?nodeName,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'presetName': ?presetName,
      'presets': pulumi.Input.encodeList<GetHoneypotPresetsPreset, Map<String, dynamic>>(presets, (value) => value.toMap()),
    };
  }

  factory GetHoneypotPresetsResult.fromMap(Map<String, dynamic> map) {
    return GetHoneypotPresetsResult(
      currentPage: map['currentPage'] == null ? null : map['currentPage'] as int,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      honeypotImageName: map['honeypotImageName'] == null ? null : map['honeypotImageName'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      lang: map['lang'] == null ? null : map['lang'] as String,
      nodeId: map['nodeId'] == null ? null : map['nodeId'] as String,
      nodeName: map['nodeName'] == null ? null : map['nodeName'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      presetName: map['presetName'] == null ? null : map['presetName'] as String,
      presets: pulumi.Input.decodeList<GetHoneypotPresetsPreset>(map['presets'], (value) => GetHoneypotPresetsPreset.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

