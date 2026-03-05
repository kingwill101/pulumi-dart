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
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pluginName: (() { final guardedValue = map['pluginName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pluginType: (() { final guardedValue = map['pluginType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      plugins: pulumi.Input.decodeList<GetPluginsPlugin>(map['plugins']!, (value) => GetPluginsPlugin.fromMap((value as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}

