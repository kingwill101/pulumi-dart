// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cddc_get_dedicated_host_groups_get_dedicated_host_groups_args_doc}
/// Arguments for getDedicatedHostGroups.
/// {@endtemplate}
/// {@macro pulumi_cddc_get_dedicated_host_groups_get_dedicated_host_groups_args_doc}
class GetDedicatedHostGroupsArgs {
  /// Database Engine Type. Valid values:`Redis`, `SQLServer`, `MySQL`, `PostgreSQL`, `MongoDB`
  final pulumi.Input<String>? engine;
  /// A list of Dedicated Host Group IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Dedicated Host Group name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetDedicatedHostGroupsArgs].
  /// [engine] Database Engine Type. Valid values:`Redis`, `SQLServer`, `MySQL`, `PostgreSQL`, `MongoDB`
  /// [ids] A list of Dedicated Host Group IDs.
  /// [nameRegex] A regex string to filter results by Dedicated Host Group name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetDedicatedHostGroupsArgs({
    this.engine,
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': ?engine,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetDedicatedHostGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostGroupsArgs(
      engine: map['engine'] == null ? null : (map['engine']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
    );
  }
}

