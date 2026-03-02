// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicemesh_get_service_meshes_get_service_meshes_args_doc}
/// Arguments for getServiceMeshes.
/// {@endtemplate}
/// {@macro pulumi_servicemesh_get_service_meshes_get_service_meshes_args_doc}
class GetServiceMeshesArgs {
  /// Whether to query the detailed list of resource attributes. Default value: `false`.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Service Mesh IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Service Mesh name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the Service Mesh. Valid values: `running`, `initial`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetServiceMeshesArgs].
  /// [enableDetails] Whether to query the detailed list of resource attributes. Default value: `false`.
  /// [ids] A list of Service Mesh IDs.
  /// [nameRegex] A regex string to filter results by Service Mesh name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the Service Mesh. Valid values: `running`, `initial`.
  GetServiceMeshesArgs({
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetServiceMeshesArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceMeshesArgs(
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

