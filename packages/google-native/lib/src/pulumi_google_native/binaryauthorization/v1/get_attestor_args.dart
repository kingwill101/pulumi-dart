// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAttestor.
class GetAttestorArgs {
  final Input<String> attestorId;
  final Input<String>? project;

  GetAttestorArgs({
    required this.attestorId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attestorId'] = attestorId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAttestorArgs.fromMap(Map<String, dynamic> map) {
    return GetAttestorArgs(
      attestorId: Input.asInput<String>(map['attestorId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
