// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sae_get_instance_specifications_get_instance_specifications_args_doc}
/// Arguments for getInstanceSpecifications.
/// {@endtemplate}
/// {@macro pulumi_sae_get_instance_specifications_get_instance_specifications_args_doc}
class GetInstanceSpecificationsArgs {
  /// A list of Instance Specification IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetInstanceSpecificationsArgs].
  /// [ids] A list of Instance Specification IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetInstanceSpecificationsArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
    };
  }

  factory GetInstanceSpecificationsArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceSpecificationsArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

