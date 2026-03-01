// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicemesh_get_extension_providers_get_extension_providers_args_doc}
/// Arguments for getExtensionProviders.
/// {@endtemplate}
/// {@macro pulumi_servicemesh_get_extension_providers_get_extension_providers_args_doc}
class GetExtensionProvidersArgs {
  /// A list of Service Mesh Extension Provider IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Service Mesh Extension Provider name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the Service Mesh.
  final pulumi.Input<String> serviceMeshId;
  /// The type of the Service Mesh Extension Provider. Valid values: `httpextauth`, `grpcextauth`.
  final pulumi.Input<String> type;

  /// Creates a new [GetExtensionProvidersArgs].
  /// [ids] A list of Service Mesh Extension Provider IDs.
  /// [nameRegex] A regex string to filter results by Service Mesh Extension Provider name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [serviceMeshId] The ID of the Service Mesh.
  /// [type] The type of the Service Mesh Extension Provider. Valid values: `httpextauth`, `grpcextauth`.
  GetExtensionProvidersArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    required pulumi.Output<String> serviceMeshId,
    required pulumi.Output<String> type,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      serviceMeshId = pulumi.Input.asInput<String>(serviceMeshId),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'serviceMeshId': serviceMeshId,
      'type': type,
    };
  }

  factory GetExtensionProvidersArgs.fromMap(Map<String, dynamic> map) {
    return GetExtensionProvidersArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      serviceMeshId: pulumi.Output.create<String>(map['serviceMeshId'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

