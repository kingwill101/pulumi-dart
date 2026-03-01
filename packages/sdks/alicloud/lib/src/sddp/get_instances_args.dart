// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sddp_get_instances_get_instances_args_doc}
/// Arguments for getInstances.
/// {@endtemplate}
/// {@macro pulumi_sddp_get_instances_get_instances_args_doc}
class GetInstancesArgs {
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetInstancesArgs].
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetInstancesArgs({
    pulumi.Output<String>? outputFile,
  }) :
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputFile': ?outputFile,
    };
  }

  factory GetInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancesArgs(
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

