// ignore_for_file: unused_element, unnecessary_cast


class ConnectionCloudResource {
  /// (Output)
  /// The account ID of the service created for the purpose of this connection.
  final String? serviceAccountId;

  /// Creates a new [ConnectionCloudResource].
  /// [serviceAccountId] (Output)
  ConnectionCloudResource({
    this.serviceAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccountId': ?serviceAccountId,
    };
  }

  factory ConnectionCloudResource.fromMap(Map<String, dynamic> map) {
    return ConnectionCloudResource(
      serviceAccountId: map['serviceAccountId'] == null ? null : map['serviceAccountId'] as String,
    );
  }
}

