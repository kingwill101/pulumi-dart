// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceConnectionSharedAccessSignature {
  final pulumi.Input<String>? sas;

  /// Creates a new [WorkspaceConnectionSharedAccessSignature].
  /// [sas] Optional.
  WorkspaceConnectionSharedAccessSignature({
    this.sas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sas': ?sas,
    };
  }

  factory WorkspaceConnectionSharedAccessSignature.fromMap(Map<String, dynamic> map) {
    return WorkspaceConnectionSharedAccessSignature(
      sas: map['sas'] == null ? null : (map['sas']! as String).input(),
    );
  }
}

