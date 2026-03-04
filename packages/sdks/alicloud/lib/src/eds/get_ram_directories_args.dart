// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eds_get_ram_directories_get_ram_directories_args_doc}
/// Arguments for getRamDirectories.
/// {@endtemplate}
/// {@macro pulumi_eds_get_ram_directories_get_ram_directories_args_doc}
class GetRamDirectoriesArgs {
  /// A list of Ram Directory IDs.
  final pulumi.Input<List<String>>? ids;

  /// A regex string to filter results by Ram Directory name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// The status of directory. Valid values: `REGISTERING`, `REGISTERED`, `DEREGISTERING`, `NEEDCONFIGTRUST`, `CONFIGTRUSTFAILED`, `DEREGISTERED`, `ERROR`, `CONFIGTRUSTING`, `NEEDCONFIGUSER`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetRamDirectoriesArgs].
  /// [ids] A list of Ram Directory IDs.
  /// [nameRegex] A regex string to filter results by Ram Directory name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of directory. Valid values: `REGISTERING`, `REGISTERED`, `DEREGISTERING`, `NEEDCONFIGTRUST`, `CONFIGTRUSTFAILED`, `DEREGISTERED`, `ERROR`, `CONFIGTRUSTING`, `NEEDCONFIGUSER`.
  GetRamDirectoriesArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetRamDirectoriesArgs.fromMap(Map<String, dynamic> map) {
    return GetRamDirectoriesArgs(
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
