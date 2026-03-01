// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lindorm_get_instances_get_instances_args_doc}
/// Arguments for getInstances.
/// {@endtemplate}
/// {@macro pulumi_lindorm_get_instances_get_instances_args_doc}
class GetInstancesArgs {
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Instance IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Instance name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The query str, which can use `instance_name` keyword for fuzzy search.
  final pulumi.Input<String>? queryStr;
  /// Instance status, Valid values: `ACTIVATION`, `DELETED`, `CREATING`, `CLASS_CHANGING`, `LOCKED`, `INSTANCE_LEVEL_MODIFY`, `NET_MODIFYING`, `RESIZING`, `RESTARTING`, `MINOR_VERSION_TRANSING`.
  final pulumi.Input<String>? status;
  /// The support engine. Valid values: `1` to `7`.
  final pulumi.Input<int>? supportEngine;

  /// Creates a new [GetInstancesArgs].
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Instance IDs.
  /// [nameRegex] A regex string to filter results by Instance name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [queryStr] The query str, which can use `instance_name` keyword for fuzzy search.
  /// [status] Instance status, Valid values: `ACTIVATION`, `DELETED`, `CREATING`, `CLASS_CHANGING`, `LOCKED`, `INSTANCE_LEVEL_MODIFY`, `NET_MODIFYING`, `RESIZING`, `RESTARTING`, `MINOR_VERSION_TRANSING`.
  /// [supportEngine] The support engine. Valid values: `1` to `7`.
  GetInstancesArgs({
    bool? enableDetails,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? queryStr,
    String? status,
    int? supportEngine,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      queryStr = pulumi.Input.asOptionalInput<String>(queryStr),
      status = pulumi.Input.asOptionalInput<String>(status),
      supportEngine = pulumi.Input.asOptionalInput<int>(supportEngine);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'queryStr': ?queryStr,
      'status': ?status,
      'supportEngine': ?supportEngine,
    };
  }

  factory GetInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancesArgs(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      queryStr: map['queryStr'] == null ? null : map['queryStr'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      supportEngine: map['supportEngine'] == null ? null : map['supportEngine'] as int,
    );
  }
}

