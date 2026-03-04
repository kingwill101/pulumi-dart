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
      'presets':
          pulumi.Input.encodeList<
            GetHoneypotPresetsPreset,
            Map<String, dynamic>
          >(presets, (value) => value.toMap()),
    };
  }

  factory GetHoneypotPresetsResult.fromMap(Map<String, dynamic> map) {
    return GetHoneypotPresetsResult(
      currentPage: (() {
        final guardedValue = map['currentPage'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      honeypotImageName: (() {
        final guardedValue = map['honeypotImageName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      lang: (() {
        final guardedValue = map['lang'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      nodeId: (() {
        final guardedValue = map['nodeId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      nodeName: (() {
        final guardedValue = map['nodeName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      pageNumber: (() {
        final guardedValue = map['pageNumber'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      pageSize: (() {
        final guardedValue = map['pageSize'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      presetName: (() {
        final guardedValue = map['presetName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      presets: pulumi.Input.decodeList<GetHoneypotPresetsPreset>(
        map['presets']!,
        (value) => GetHoneypotPresetsPreset.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
