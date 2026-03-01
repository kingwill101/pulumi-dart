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
    required String flowName,
    List<String>? ids,
    int? limit,
    String? nameRegex,
    String? outputFile,
  }) :
      flowName = pulumi.Input.asInput<String>(flowName),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      limit = pulumi.Input.asOptionalInput<int>(limit),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

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
      flowName: map['flowName'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      limit: map['limit'] == null ? null : map['limit'] as int,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

