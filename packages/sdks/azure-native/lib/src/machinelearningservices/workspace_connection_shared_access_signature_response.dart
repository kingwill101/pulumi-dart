// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceConnectionSharedAccessSignatureResponse {
  final pulumi.Input<String>? sas;

  /// Creates a new [WorkspaceConnectionSharedAccessSignatureResponse].
  /// [sas] Optional.
  WorkspaceConnectionSharedAccessSignatureResponse({
    this.sas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sas': ?sas,
    };
  }

  factory WorkspaceConnectionSharedAccessSignatureResponse.fromMap(Map<String, dynamic> map) {
    return WorkspaceConnectionSharedAccessSignatureResponse(
      sas: map['sas'] == null ? null : (map['sas']! as String).input(),
    );
  }
}

