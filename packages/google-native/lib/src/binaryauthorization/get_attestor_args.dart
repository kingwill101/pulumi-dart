// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_binaryauthorization_v1_get_attestor_args_doc}
/// Arguments for getAttestor.
/// {@endtemplate}
/// {@macro pulumi_binaryauthorization_v1_get_attestor_args_doc}
class GetAttestorArgs {
  final pulumi.Input<String> attestorId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAttestorArgs].
  /// [attestorId] Required.
  /// [project] Optional.
  GetAttestorArgs({
    required String attestorId,
    String? project,
  }) :
      attestorId = pulumi.Input.asInput<String>(attestorId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestorId': attestorId,
      'project': ?project,
    };
  }

  factory GetAttestorArgs.fromMap(Map<String, dynamic> map) {
    return GetAttestorArgs(
      attestorId: map['attestorId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

