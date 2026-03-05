// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sae_get_config_maps_get_config_maps_args_doc}
/// Arguments for getConfigMaps.
/// {@endtemplate}
/// {@macro pulumi_sae_get_config_maps_get_config_maps_args_doc}
class GetConfigMapsArgs {
  /// A list of Config Map IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Config Map name.
  final pulumi.Input<String>? nameRegex;
  /// The NamespaceId of Config Maps. The Id of Namespace.It can contain 2 to 32 characters.The value is in format {RegionId}:{namespace}.
  final pulumi.Input<String> namespaceId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetConfigMapsArgs].
  /// [ids] A list of Config Map IDs.
  /// [nameRegex] A regex string to filter results by Config Map name.
  /// [namespaceId] The NamespaceId of Config Maps. The Id of Namespace.It can contain 2 to 32 characters.The value is in format {RegionId}:{namespace}.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetConfigMapsArgs({
    this.ids,
    this.nameRegex,
    required this.namespaceId,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'namespaceId': namespaceId,
      'outputFile': ?outputFile,
    };
  }

  factory GetConfigMapsArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigMapsArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

