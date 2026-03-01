// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_get_shared_targets_get_shared_targets_args_doc}
/// Arguments for getSharedTargets.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_get_shared_targets_get_shared_targets_args_doc}
class GetSharedTargetsArgs {
  /// A list of Shared Target IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The resource share ID of resource manager.
  final pulumi.Input<String>? resourceShareId;
  /// The status of share resource. Valid values: `Associated`, `Associating`, `Disassociated`, `Disassociating` and `Failed`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetSharedTargetsArgs].
  /// [ids] A list of Shared Target IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceShareId] The resource share ID of resource manager.
  /// [status] The status of share resource. Valid values: `Associated`, `Associating`, `Disassociated`, `Disassociating` and `Failed`.
  GetSharedTargetsArgs({
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

  factory GetSharedTargetsArgs.fromMap(Map<String, dynamic> map) {
    return GetSharedTargetsArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      resourceShareId: map['resourceShareId'] == null ? null : map['resourceShareId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

