// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecp_get_instance_types_get_instance_types_args_doc}
/// Arguments for getInstanceTypes.
/// {@endtemplate}
/// {@macro pulumi_ecp_get_instance_types_get_instance_types_args_doc}
class GetInstanceTypesArgs {
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetInstanceTypesArgs].
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetInstanceTypesArgs({
    pulumi.Output<String>? outputFile,
  }) :
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputFile': ?outputFile,
    };
  }

  factory GetInstanceTypesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesArgs(
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

