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
    pulumi.Output<String>? engine,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      engine = pulumi.Input.asOptionalInput<String>(engine),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

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
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

