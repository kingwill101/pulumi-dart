// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_instances_get_instances_args_doc}
/// Arguments for getInstances.
/// {@endtemplate}
/// {@macro pulumi_kms_get_instances_get_instances_args_doc}
class GetInstancesArgs {
  /// A list of Instance IDs.
  final pulumi.Input<List<String>>? ids;
  /// The name of the resource.
  final pulumi.Input<String>? instanceName;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetInstancesArgs].
  /// [ids] A list of Instance IDs.
  /// [instanceName] The name of the resource.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetInstancesArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? instanceName,
    pulumi.Output<String>? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'instanceName': ?instanceName,
      'outputFile': ?outputFile,
    };
  }

  factory GetInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancesArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

