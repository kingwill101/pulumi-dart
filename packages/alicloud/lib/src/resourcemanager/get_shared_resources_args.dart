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
    List<String>? ids,
    String? outputFile,
    String? resourceShareId,
    String? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      resourceShareId = pulumi.Input.asOptionalInput<String>(resourceShareId),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      resourceShareId: map['resourceShareId'] == null ? null : map['resourceShareId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

