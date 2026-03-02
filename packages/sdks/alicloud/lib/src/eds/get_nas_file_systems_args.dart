// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eds_get_nas_file_systems_get_nas_file_systems_args_doc}
/// Arguments for getNasFileSystems.
/// {@endtemplate}
/// {@macro pulumi_eds_get_nas_file_systems_get_nas_file_systems_args_doc}
class GetNasFileSystemsArgs {
  /// A list of Nas File System IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Nas File System name.
  final pulumi.Input<String>? nameRegex;
  /// The ID of office site.
  final pulumi.Input<String>? officeSiteId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of nas file system. Valid values: `Pending`, `Running`, `Stopped`,`Deleting`, `Deleted`, `Invalid`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetNasFileSystemsArgs].
  /// [ids] A list of Nas File System IDs.
  /// [nameRegex] A regex string to filter results by Nas File System name.
  /// [officeSiteId] The ID of office site.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of nas file system. Valid values: `Pending`, `Running`, `Stopped`,`Deleting`, `Deleted`, `Invalid`.
  GetNasFileSystemsArgs({
    this.ids,
    this.nameRegex,
    this.officeSiteId,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'officeSiteId': ?officeSiteId,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetNasFileSystemsArgs.fromMap(Map<String, dynamic> map) {
    return GetNasFileSystemsArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      officeSiteId: map['officeSiteId'] == null ? null : (map['officeSiteId']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

