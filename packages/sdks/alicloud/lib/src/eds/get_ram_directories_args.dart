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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

