// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_get_rds_parameter_groups_get_rds_parameter_groups_args_doc}
/// Arguments for getRdsParameterGroups.
/// {@endtemplate}
/// {@macro pulumi_rds_get_rds_parameter_groups_get_rds_parameter_groups_args_doc}
class GetRdsParameterGroupsArgs {
  final pulumi.Input<bool>? enableDetails;
  final pulumi.Input<List<String>>? ids;
  final pulumi.Input<String>? nameRegex;
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetRdsParameterGroupsArgs].
  /// [enableDetails] Optional.
  /// [ids] Optional.
  /// [nameRegex] Optional.
  /// [outputFile] Optional.
  GetRdsParameterGroupsArgs({
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetRdsParameterGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetRdsParameterGroupsArgs(
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

