// ignore_for_file: unused_element, unnecessary_cast


class RunCommandOutputBlobManagedIdentity {
  /// The client ID of the managed identity.
  final String? clientId;
  /// The object ID of the managed identity.
  final String? objectId;

  /// Creates a new [RunCommandOutputBlobManagedIdentity].
  /// [clientId] The client ID of the managed identity.
  /// [objectId] The object ID of the managed identity.
  RunCommandOutputBlobManagedIdentity({
    this.clientId,
    this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'objectId': ?objectId,
    };
  }

  factory RunCommandOutputBlobManagedIdentity.fromMap(Map<String, dynamic> map) {
    return RunCommandOutputBlobManagedIdentity(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
    );
  }
}

