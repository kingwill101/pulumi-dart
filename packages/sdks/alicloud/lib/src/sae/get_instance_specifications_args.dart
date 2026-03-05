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
    this.ids,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
    };
  }

  factory GetInstanceSpecificationsArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceSpecificationsArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

