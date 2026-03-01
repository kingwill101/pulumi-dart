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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    required pulumi.Output<String> namespaceId,
    pulumi.Output<String>? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      namespaceId = pulumi.Input.asInput<String>(namespaceId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      namespaceId: pulumi.Output.create<String>(map['namespaceId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

