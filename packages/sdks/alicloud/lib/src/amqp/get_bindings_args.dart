// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_amqp_get_bindings_get_bindings_args_doc}
/// Arguments for getBindings.
/// {@endtemplate}
/// {@macro pulumi_amqp_get_bindings_get_bindings_args_doc}
class GetBindingsArgs {
  /// Instance Id.
  final pulumi.Input<String> instanceId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Virtualhost Name.
  final pulumi.Input<String> virtualHostName;

  /// Creates a new [GetBindingsArgs].
  /// [instanceId] Instance Id.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [virtualHostName] Virtualhost Name.
  GetBindingsArgs({
    required this.instanceId,
    this.outputFile,
    required this.virtualHostName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'outputFile': ?outputFile,
      'virtualHostName': virtualHostName,
    };
  }

  factory GetBindingsArgs.fromMap(Map<String, dynamic> map) {
    return GetBindingsArgs(
      instanceId: (map['instanceId'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      virtualHostName: (map['virtualHostName'] as String).input(),
    );
  }
}

