// ignore_for_file: unused_element, unnecessary_cast


class RunCommandSourceScriptUriManagedIdentity {
  /// The client ID of the managed identity.
  final String? clientId;
  /// The object ID of the managed identity.
  final String? objectId;

  /// Creates a new [RunCommandSourceScriptUriManagedIdentity].
  /// [clientId] The client ID of the managed identity.
  /// [objectId] The object ID of the managed identity.
  RunCommandSourceScriptUriManagedIdentity({
    this.clientId,
    this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'objectId': ?objectId,
    };
  }

  factory RunCommandSourceScriptUriManagedIdentity.fromMap(Map<String, dynamic> map) {
    return RunCommandSourceScriptUriManagedIdentity(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
    );
  }
}

