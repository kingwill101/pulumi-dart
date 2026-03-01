// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_binaryauthorization_v1beta1_get_attestor_binaryauthorization_v1beta1_args_doc}
/// Arguments for getAttestor.
/// {@endtemplate}
/// {@macro pulumi_binaryauthorization_v1beta1_get_attestor_binaryauthorization_v1beta1_args_doc}
class GetAttestorBinaryauthorizationV1beta1Args {
  final pulumi.Input<String> attestorId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAttestorBinaryauthorizationV1beta1Args].
  /// [attestorId] Required.
  /// [project] Optional.
  GetAttestorBinaryauthorizationV1beta1Args({
    required String attestorId,
    String? project,
  }) : attestorId = pulumi.Input.asInput<String>(attestorId),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'attestorId': attestorId, 'project': ?project};
  }

  factory GetAttestorBinaryauthorizationV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAttestorBinaryauthorizationV1beta1Args(
      attestorId: map['attestorId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
