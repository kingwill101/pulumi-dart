// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Top level metadata https://github.com/Azure/azure-resource-manager-rpc/blob/master/v1.0/common-api-contracts.md#system-metadata-for-all-azure-resources
class SystemDataResponse {
  /// The timestamp of resource creation (UTC)
  final pulumi.Input<String> createdAt;
  /// A string identifier for the identity that created the resource
  final pulumi.Input<String> createdBy;
  /// The type of identity that created the resource: user, application, managedIdentity, key
  final pulumi.Input<String> createdByType;
  /// The timestamp of resource last modification (UTC)
  final pulumi.Input<String> lastModifiedAt;
  /// A string identifier for the identity that last modified the resource
  final pulumi.Input<String> lastModifiedBy;
  /// The type of identity that last modified the resource: user, application, managedIdentity, key
  final pulumi.Input<String> lastModifiedByType;

  /// Creates a new [SystemDataResponse].
  /// [createdAt] The timestamp of resource creation (UTC)
  /// [createdBy] A string identifier for the identity that created the resource
  /// [createdByType] The type of identity that created the resource: user, application, managedIdentity, key
  /// [lastModifiedAt] The timestamp of resource last modification (UTC)
  /// [lastModifiedBy] A string identifier for the identity that last modified the resource
  /// [lastModifiedByType] The type of identity that last modified the resource: user, application, managedIdentity, key
  const SystemDataResponse({
    required this.createdAt,
    required this.createdBy,
    required this.createdByType,
    required this.lastModifiedAt,
    required this.lastModifiedBy,
    required this.lastModifiedByType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'createdBy': createdBy,
      'createdByType': createdByType,
      'lastModifiedAt': lastModifiedAt,
      'lastModifiedBy': lastModifiedBy,
      'lastModifiedByType': lastModifiedByType,
    };
  }

  factory SystemDataResponse.fromMap(Map<String, dynamic> map) {
    return SystemDataResponse(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      createdBy: pulumi.Input.fromValue(map['createdBy'] as String),
      createdByType: pulumi.Input.fromValue(map['createdByType'] as String),
      lastModifiedAt: pulumi.Input.fromValue(map['lastModifiedAt'] as String),
      lastModifiedBy: pulumi.Input.fromValue(map['lastModifiedBy'] as String),
      lastModifiedByType: pulumi.Input.fromValue(map['lastModifiedByType'] as String),
    );
  }
}

