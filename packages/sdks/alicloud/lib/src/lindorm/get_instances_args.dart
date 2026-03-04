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
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.queryStr,
    this.status,
    this.supportEngine,
  });

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
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
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
      queryStr: (() {
        final guardedValue = map['queryStr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      supportEngine: (() {
        final guardedValue = map['supportEngine'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
