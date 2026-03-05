// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_get_shared_resources_get_shared_resources_args_doc}
/// Arguments for getSharedResources.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_get_shared_resources_get_shared_resources_args_doc}
class GetSharedResourcesArgs {
  /// A list of shared resource IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The resource share ID of resource manager.
  final pulumi.Input<String>? resourceShareId;
  /// The status of share resource. Valid values: `Associated`, `Associating`, `Disassociated`, `Disassociating` and `Failed`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetSharedResourcesArgs].
  /// [ids] A list of shared resource IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceShareId] The resource share ID of resource manager.
  /// [status] The status of share resource. Valid values: `Associated`, `Associating`, `Disassociated`, `Disassociating` and `Failed`.
  GetSharedResourcesArgs({
    this.ids,
    this.outputFile,
    this.resourceShareId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'resourceShareId': ?resourceShareId,
      'status': ?status,
    };
  }

  factory GetSharedResourcesArgs.fromMap(Map<String, dynamic> map) {
    return GetSharedResourcesArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceShareId: (() { final guardedValue = map['resourceShareId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

