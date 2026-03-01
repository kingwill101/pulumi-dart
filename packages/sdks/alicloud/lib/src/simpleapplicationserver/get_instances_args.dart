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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? paymentType,
    pulumi.Output<String>? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

