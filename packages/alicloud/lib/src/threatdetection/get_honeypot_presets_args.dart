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
    int? currentPage,
    bool? enableDetails,
    String? honeypotImageName,
    List<String>? ids,
    String? lang,
    String? nodeId,
    String? nodeName,
    String? outputFile,
    int? pageNumber,
    int? pageSize,
    String? presetName,
  }) :
      currentPage = pulumi.Input.asOptionalInput<int>(currentPage),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      honeypotImageName = pulumi.Input.asOptionalInput<String>(honeypotImageName),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      nodeId = pulumi.Input.asOptionalInput<String>(nodeId),
      nodeName = pulumi.Input.asOptionalInput<String>(nodeName),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      presetName = pulumi.Input.asOptionalInput<String>(presetName);

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
      currentPage: map['currentPage'] == null ? null : map['currentPage'] as int,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      honeypotImageName: map['honeypotImageName'] == null ? null : map['honeypotImageName'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      lang: map['lang'] == null ? null : map['lang'] as String,
      nodeId: map['nodeId'] == null ? null : map['nodeId'] as String,
      nodeName: map['nodeName'] == null ? null : map['nodeName'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      presetName: map['presetName'] == null ? null : map['presetName'] as String,
    );
  }
}

