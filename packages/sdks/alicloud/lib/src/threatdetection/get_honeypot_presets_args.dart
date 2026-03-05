// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_threatdetection_get_honeypot_presets_get_honeypot_presets_args_doc}
/// Arguments for getHoneypotPresets.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_get_honeypot_presets_get_honeypot_presets_args_doc}
class GetHoneypotPresetsArgs {
  final pulumi.Input<int>? currentPage;
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// Honeypot mirror name
  final pulumi.Input<String>? honeypotImageName;
  /// A list of Honeypot Preset IDs.
  final pulumi.Input<List<String>>? ids;
  final pulumi.Input<String>? lang;
  /// Unique id of management node
  final pulumi.Input<String>? nodeId;
  final pulumi.Input<String>? nodeName;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// Honeypot template custom name
  final pulumi.Input<String>? presetName;

  /// Creates a new [GetHoneypotPresetsArgs].
  /// [currentPage] Optional.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [honeypotImageName] Honeypot mirror name
  /// [ids] A list of Honeypot Preset IDs.
  /// [lang] Optional.
  /// [nodeId] Unique id of management node
  /// [nodeName] Optional.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [presetName] Honeypot template custom name
  GetHoneypotPresetsArgs({
    this.currentPage,
    this.enableDetails,
    this.honeypotImageName,
    this.ids,
    this.lang,
    this.nodeId,
    this.nodeName,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.presetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentPage': ?currentPage,
      'enableDetails': ?enableDetails,
      'honeypotImageName': ?honeypotImageName,
      'ids': ?ids,
      'lang': ?lang,
      'nodeId': ?nodeId,
      'nodeName': ?nodeName,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'presetName': ?presetName,
    };
  }

  factory GetHoneypotPresetsArgs.fromMap(Map<String, dynamic> map) {
    return GetHoneypotPresetsArgs(
      currentPage: (() { final guardedValue = map['currentPage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      honeypotImageName: (() { final guardedValue = map['honeypotImageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeId: (() { final guardedValue = map['nodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeName: (() { final guardedValue = map['nodeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      presetName: (() { final guardedValue = map['presetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

