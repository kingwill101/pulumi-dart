// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StackStorageConnector {
  /// Type of storage connector.
  /// Valid values are `HOMEFOLDERS`, `GOOGLE_DRIVE`, or `ONE_DRIVE`.
  final pulumi.Input<String> connectorType;
  /// Names of the domains for the account.
  final pulumi.Input<List<String>>? domains;
  /// ARN of the storage connector.
  final pulumi.Input<String>? resourceIdentifier;

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
    return <String, dynamic>{
      'connectorType': connectorType,
      'domains': ?domains,
      'resourceIdentifier': ?resourceIdentifier,
    };
  }

  factory StackStorageConnector.fromMap(Map<String, dynamic> map) {
    return StackStorageConnector(
      connectorType: (map['connectorType'] as String).input(),
      domains: map['domains'] == null ? null : (((map['domains'] as List).cast<String>()).input()).input(),
      resourceIdentifier: map['resourceIdentifier'] == null ? null : ((map['resourceIdentifier'] as String).input()).input(),
    );
  }
}

