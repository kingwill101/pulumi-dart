// ignore_for_file: unused_element, unnecessary_cast


class AccessConnectorPropertiesResponse {
  /// Provisioning status of the Access Connector.
  final String provisioningState;
  /// List of workspaces referring this Access Connector.
  final List<String> referedBy;

  /// Creates a new [AccessConnectorPropertiesResponse].
  /// [provisioningState] Provisioning status of the Access Connector.
  /// [referedBy] List of workspaces referring this Access Connector.
  AccessConnectorPropertiesResponse({
    required this.provisioningState,
    required this.referedBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'referedBy': referedBy,
    };
  }

  factory AccessConnectorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AccessConnectorPropertiesResponse(
      provisioningState: map['provisioningState'] as String,
      referedBy: (map['referedBy'] as List).cast<String>(),
    );
  }
}

