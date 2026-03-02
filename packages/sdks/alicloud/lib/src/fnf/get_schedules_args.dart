// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fnf_get_schedules_get_schedules_args_doc}
/// Arguments for getSchedules.
/// {@endtemplate}
/// {@macro pulumi_fnf_get_schedules_get_schedules_args_doc}
class GetSchedulesArgs {
  /// The name of the flow bound to the time-based schedule you want to create.
  final pulumi.Input<String> flowName;
  /// A list of Schedule IDs.
  final pulumi.Input<List<String>>? ids;
  /// The number of resource queries.
  final pulumi.Input<int>? limit;
  /// A regex string to filter results by Schedule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetSchedulesArgs].
  /// [flowName] The name of the flow bound to the time-based schedule you want to create.
  /// [ids] A list of Schedule IDs.
  /// [limit] The number of resource queries.
  /// [nameRegex] A regex string to filter results by Schedule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetSchedulesArgs({
    required this.flowName,
    this.ids,
    this.limit,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flowName': flowName,
      'ids': ?ids,
      'limit': ?limit,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetSchedulesArgs.fromMap(Map<String, dynamic> map) {
    return GetSchedulesArgs(
      flowName: (map['flowName'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      limit: map['limit'] == null ? null : (map['limit']! as int).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
    );
  }
}

