// ignore_for_file: unused_element, unnecessary_cast


class WorkspaceConnectionSharedAccessSignature {
  final String? sas;

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
      sas: map['sas'] == null ? null : map['sas'] as String,
    );
  }
}

