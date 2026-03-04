// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_simpleapplicationserver_get_instances_get_instances_args_doc}
/// Arguments for getInstances.
/// {@endtemplate}
/// {@macro pulumi_simpleapplicationserver_get_instances_get_instances_args_doc}
class GetInstancesArgs {
  /// A list of Instance IDs.
  final pulumi.Input<List<String>>? ids;

  /// A regex string to filter results by Instance name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// The paymen type of the resource. Valid values: `Subscription`.
  final pulumi.Input<String>? paymentType;

  /// The status of the resource. Valid values: `Resetting`, `Running`, `Stopped`, `Upgrading`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetInstancesArgs].
  /// [ids] A list of Instance IDs.
  /// [nameRegex] A regex string to filter results by Instance name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [paymentType] The paymen type of the resource. Valid values: `Subscription`.
  /// [status] The status of the resource. Valid values: `Resetting`, `Running`, `Stopped`, `Upgrading`.
  GetInstancesArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.paymentType,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'paymentType': ?paymentType,
      'status': ?status,
    };
  }

  factory GetInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancesArgs(
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
      paymentType: (() {
        final guardedValue = map['paymentType'];
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
