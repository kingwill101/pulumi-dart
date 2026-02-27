// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAttestor.
class GetAttestorArgs {
  final pulumi.Input<String> attestorId;
  final pulumi.Input<String>? project;

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
      attestorId: pulumi.Input.asInput<String>(map['attestorId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
