// ignore_for_file: unused_element, unnecessary_cast

class StackStorageConnector {
  /// Type of storage connector.
  /// Valid values are `HOMEFOLDERS`, `GOOGLE_DRIVE`, or `ONE_DRIVE`.
  final String connectorType;

  /// Names of the domains for the account.
  final List<String>? domains;

  /// ARN of the storage connector.
  final String? resourceIdentifier;

  /// Creates a new [StackStorageConnector].
  /// [connectorType] Type of storage connector.
  /// [domains] Names of the domains for the account.
  /// [resourceIdentifier] ARN of the storage connector.
  StackStorageConnector({
    required this.connectorType,
    this.domains,
    this.resourceIdentifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectorType'] = connectorType;
    final domainsValue = domains;
    if (domainsValue != null) {
      map['domains'] = domainsValue;
    }
    final resourceIdentifierValue = resourceIdentifier;
    if (resourceIdentifierValue != null) {
      map['resourceIdentifier'] = resourceIdentifierValue;
    }
    return map;
  }

  factory StackStorageConnector.fromMap(Map<String, dynamic> map) {
    return StackStorageConnector(
      connectorType: map['connectorType'] as String,
      domains: map['domains'] == null
          ? null
          : (map['domains'] as List).cast<String>(),
      resourceIdentifier: map['resourceIdentifier'] == null
          ? null
          : map['resourceIdentifier'] as String,
    );
  }
}
