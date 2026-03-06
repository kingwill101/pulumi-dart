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
  const GetExtensionProvidersArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    required this.serviceMeshId,
    required this.type,
  });

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
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceMeshId: pulumi.Input.fromValue(map['serviceMeshId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

