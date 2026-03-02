// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_plugins_plugin.dart';

/// Result data returned by getPlugins.
class GetPluginsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  final String? pluginName;
  final String? pluginType;
  final List<GetPluginsPlugin> plugins;
  final Map<String, String>? tags;

  /// Creates a new [GetPluginsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [pluginName] Optional.
  /// [pluginType] Optional.
  /// [plugins] Required.
  /// [tags] Optional.
  GetPluginsResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.pluginName,
    this.pluginType,
    required this.plugins,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'pluginName': ?pluginName,
      'pluginType': ?pluginType,
      'plugins': pulumi.Input.encodeList<GetPluginsPlugin, Map<String, dynamic>>(plugins, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory GetPluginsResult.fromMap(Map<String, dynamic> map) {
    return GetPluginsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber']! as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize']! as int,
      pluginName: map['pluginName'] == null ? null : map['pluginName']! as String,
      pluginType: map['pluginType'] == null ? null : map['pluginType']! as String,
      plugins: pulumi.Input.decodeList<GetPluginsPlugin>(map['plugins'], (value) => GetPluginsPlugin.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
    );
  }
}

