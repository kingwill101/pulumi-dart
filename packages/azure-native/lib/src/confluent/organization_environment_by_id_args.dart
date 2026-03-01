// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scmetadata_entity.dart';
import 'stream_governance_config.dart';

/// {@template pulumi_confluent_organization_environment_by_id_args_doc}
/// The set of arguments for OrganizationEnvironmentById.
/// {@endtemplate}
/// {@macro pulumi_confluent_organization_environment_by_id_args_doc}
class OrganizationEnvironmentByIdArgs {
  /// Confluent environment id
  final pulumi.Input<String>? environmentId;
  /// Type of environment
  final pulumi.Input<String>? kind;
  /// Metadata of the record
  final pulumi.Input<SCMetadataEntity>? metadata;
  /// Organization resource name
  final pulumi.Input<String> organizationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Stream governance configuration
  final pulumi.Input<StreamGovernanceConfig>? streamGovernanceConfig;

  /// Creates a new [OrganizationEnvironmentByIdArgs].
  /// [environmentId] Confluent environment id
  /// [kind] Type of environment
  /// [metadata] Metadata of the record
  /// [organizationName] Organization resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [streamGovernanceConfig] Stream governance configuration
  OrganizationEnvironmentByIdArgs({
    String? environmentId,
    String? kind,
    SCMetadataEntity? metadata,
    required String organizationName,
    required String resourceGroupName,
    StreamGovernanceConfig? streamGovernanceConfig,
  }) :
      environmentId = pulumi.Input.asOptionalInput<String>(environmentId),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<SCMetadataEntity>(metadata),
      organizationName = pulumi.Input.asInput<String>(organizationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      streamGovernanceConfig = pulumi.Input.asOptionalInput<StreamGovernanceConfig>(streamGovernanceConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': ?environmentId,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<SCMetadataEntity, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'organizationName': organizationName,
      'resourceGroupName': resourceGroupName,
      'streamGovernanceConfig': ?pulumi.Input.mapOptionalInputValue<StreamGovernanceConfig, Map<String, dynamic>>(streamGovernanceConfig, (value) => value.toMap()),
    };
  }

  factory OrganizationEnvironmentByIdArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationEnvironmentByIdArgs(
      environmentId: map['environmentId'] == null ? null : map['environmentId'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : SCMetadataEntity.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      organizationName: map['organizationName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      streamGovernanceConfig: map['streamGovernanceConfig'] == null ? null : StreamGovernanceConfig.fromMap((map['streamGovernanceConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

