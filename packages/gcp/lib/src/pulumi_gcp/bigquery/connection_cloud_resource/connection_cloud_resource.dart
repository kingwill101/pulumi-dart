// ignore_for_file: unused_element, unnecessary_cast

class ConnectionCloudResource {
  /// (Output)
  /// The account ID of the service created for the purpose of this connection.
  final String? serviceAccountId;

  ConnectionCloudResource({
    this.serviceAccountId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final serviceAccountIdValue = serviceAccountId;
    if (serviceAccountIdValue != null) {
      map['serviceAccountId'] = serviceAccountIdValue;
    }
    return map;
  }

  factory ConnectionCloudResource.fromMap(Map<String, dynamic> map) {
    return ConnectionCloudResource(
      serviceAccountId: map['serviceAccountId'] == null
          ? null
          : map['serviceAccountId'] as String,
    );
  }
}
