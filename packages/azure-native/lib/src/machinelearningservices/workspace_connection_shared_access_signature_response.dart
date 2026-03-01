// ignore_for_file: unused_element, unnecessary_cast


class WorkspaceConnectionSharedAccessSignatureResponse {
  final String? sas;

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
      sas: map['sas'] == null ? null : map['sas'] as String,
    );
  }
}

