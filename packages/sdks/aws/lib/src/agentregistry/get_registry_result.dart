// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_registry_approval_configuration.dart';
import 'get_registry_discovery_configuration.dart';
import 'get_registry_encryption_configuration.dart';

/// Result data returned by getRegistry.
class GetRegistryResult {
  /// Approval configuration for registry records. See below.
  final List<GetRegistryApprovalConfiguration>? approvalConfigurations;
  /// Timestamp when the registry was created.
  final String? createdAt;
  /// Description of the registry.
  final String? description;
  /// Discovery configuration for the registry. See below.
  final List<GetRegistryDiscoveryConfiguration>? discoveryConfigurations;
  /// Server-side encryption configuration for the registry. See below.
  final List<GetRegistryEncryptionConfiguration>? encryptionConfigurations;
  /// Name of the registry.
  final String? name;
  final String? region;
  /// ARN of the registry.
  final String? registryArn;
  final String? registryId;
  /// Current status of the registry. Valid values: `CREATING`, `READY`, `UPDATING`, `DELETING`, `CREATE_FAILED`, `UPDATE_FAILED`, `DELETE_FAILED`.
  final String? status;
  /// Tags applied to the service-managed VPC resource.
  final Map<String, String>? tags;
  /// Timestamp when the registry was last updated.
  final String? updatedAt;

  /// Creates a new [GetRegistryResult].
  /// [approvalConfigurations] Approval configuration for registry records. See below.
  /// [createdAt] Timestamp when the registry was created.
  /// [description] Description of the registry.
  /// [discoveryConfigurations] Discovery configuration for the registry. See below.
  /// [encryptionConfigurations] Server-side encryption configuration for the registry. See below.
  /// [name] Name of the registry.
  /// [region] Optional.
  /// [registryArn] ARN of the registry.
  /// [registryId] Optional.
  /// [status] Current status of the registry. Valid values: `CREATING`, `READY`, `UPDATING`, `DELETING`, `CREATE_FAILED`, `UPDATE_FAILED`, `DELETE_FAILED`.
  /// [tags] Tags applied to the service-managed VPC resource.
  /// [updatedAt] Timestamp when the registry was last updated.
  const GetRegistryResult({
    this.approvalConfigurations,
    this.createdAt,
    this.description,
    this.discoveryConfigurations,
    this.encryptionConfigurations,
    this.name,
    this.region,
    this.registryArn,
    this.registryId,
    this.status,
    this.tags,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalConfigurations': ?(() { final guardedValue = approvalConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegistryApprovalConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createdAt': ?createdAt,
      'description': ?description,
      'discoveryConfigurations': ?(() { final guardedValue = discoveryConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegistryDiscoveryConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'encryptionConfigurations': ?(() { final guardedValue = encryptionConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegistryEncryptionConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'region': ?region,
      'registryArn': ?registryArn,
      'registryId': ?registryId,
      'status': ?status,
      'tags': ?tags,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetRegistryResult.fromMap(Map<String, dynamic> map) {
    return GetRegistryResult(
      approvalConfigurations: (() { final guardedValue = map['approvalConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegistryApprovalConfiguration>(guardedValue, (value) => GetRegistryApprovalConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      discoveryConfigurations: (() { final guardedValue = map['discoveryConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegistryDiscoveryConfiguration>(guardedValue, (value) => GetRegistryDiscoveryConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      encryptionConfigurations: (() { final guardedValue = map['encryptionConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegistryEncryptionConfiguration>(guardedValue, (value) => GetRegistryEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      registryArn: (() { final guardedValue = map['registryArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      registryId: (() { final guardedValue = map['registryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
