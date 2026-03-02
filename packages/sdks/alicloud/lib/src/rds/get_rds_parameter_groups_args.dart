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
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

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
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
    );
  }
}

