// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_meshes_mesh.dart';

/// Result data returned by getServiceMeshes.
class GetServiceMeshesResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// A list of Service Mesh Service Meshes. Each element contains the following attributes:
  final List<GetServiceMeshesMesh> meshes;
  final String? nameRegex;
  /// A list of Service Mesh names.
  final List<String> names;
  final String? outputFile;
  /// The status of the Service Mesh instance.
  final String? status;

  /// Creates a new [GetServiceMeshesResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [meshes] A list of Service Mesh Service Meshes. Each element contains the following attributes:
  /// [nameRegex] Optional.
  /// [names] A list of Service Mesh names.
  /// [outputFile] Optional.
  /// [status] The status of the Service Mesh instance.
  const GetServiceMeshesResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    required this.meshes,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'meshes': pulumi.Input.encodeList<GetServiceMeshesMesh, Map<String, dynamic>>(meshes, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetServiceMeshesResult.fromMap(Map<String, dynamic> map) {
    return GetServiceMeshesResult(
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      meshes: pulumi.Input.decodeList<GetServiceMeshesMesh>(map['meshes']!, (value) => GetServiceMeshesMesh.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

