// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hub_encryption.dart';
import 'hub_identity.dart';
import 'hub_managed_network.dart';

/// {@template pulumi_aifoundry_hub_hub_args_doc}
/// The set of arguments for Hub.
/// {@endtemplate}
/// {@macro pulumi_aifoundry_hub_hub_args_doc}
class HubArgs {
  /// The Application Insights ID that should be used by this AI Foundry Hub.
  final pulumi.Input<String>? applicationInsightsId;
  /// The Container Registry ID that should be used by this AI Foundry Hub.
  final pulumi.Input<String>? containerRegistryId;
  /// The description of this AI Foundry Hub.
  final pulumi.Input<String>? description;
  /// An `encryption` block as defined below. Changing this forces a new AI Foundry Hub to be created.
  final pulumi.Input<HubEncryption>? encryption;
  /// The display name of this AI Foundry Hub.
  final pulumi.Input<String>? friendlyName;
  /// Whether High Business Impact (HBI) should be enabled or not. Enabling this setting will reduce diagnostic data collected by the service. Changing this forces a new AI Foundry Hub to be created. Defaults to `false`.
  ///
  /// > **Note:** `high_business_impact_enabled` will be enabled by default when creating an AI Foundry Hub with `encryption` enabled.
  final pulumi.Input<bool>? highBusinessImpactEnabled;
  /// A `identity` block as defined below.
  final pulumi.Input<HubIdentity> identity;
  /// The Key Vault ID that should be used by this AI Foundry Hub. Changing this forces a new AI Foundry Hub to be created.
  final pulumi.Input<String> keyVaultId;
  /// The Azure Region where the AI Foundry Hub should exist. Changing this forces a new AI Foundry Hub to be created.
  final pulumi.Input<String>? location;
  /// A `managed_network` block as defined below.
  final pulumi.Input<HubManagedNetwork>? managedNetwork;
  /// The name which should be used for this AI Foundry Hub. Changing this forces a new AI Foundry Hub to be created.
  final pulumi.Input<String>? name;
  /// The user assigned identity ID that represents the AI Foundry Hub identity. This must be set when enabling encryption with a user assigned identity.
  final pulumi.Input<String>? primaryUserAssignedIdentity;
  /// Whether public network access for this AI Service Hub should be enabled. Possible values include `Enabled` and `Disabled`. Defaults to `Enabled`.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the Resource Group where the AI Foundry Hub should exist. Changing this forces a new AI Foundry Hub to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The Storage Account ID that should be used by this AI Foundry Hub. Changing this forces a new AI Foundry Hub to be created.
  final pulumi.Input<String> storageAccountId;
  /// A mapping of tags which should be assigned to the AI Foundry Hub.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [HubArgs].
  /// [applicationInsightsId] The Application Insights ID that should be used by this AI Foundry Hub.
  /// [containerRegistryId] The Container Registry ID that should be used by this AI Foundry Hub.
  /// [description] The description of this AI Foundry Hub.
  /// [encryption] An `encryption` block as defined below. Changing this forces a new AI Foundry Hub to be created.
  /// [friendlyName] The display name of this AI Foundry Hub.
  /// [highBusinessImpactEnabled] Whether High Business Impact (HBI) should be enabled or not. Enabling this setting will reduce diagnostic data collected by the service. Changing this forces a new AI Foundry Hub to be created. Defaults to `false`.
  /// [identity] A `identity` block as defined below.
  /// [keyVaultId] The Key Vault ID that should be used by this AI Foundry Hub. Changing this forces a new AI Foundry Hub to be created.
  /// [location] The Azure Region where the AI Foundry Hub should exist. Changing this forces a new AI Foundry Hub to be created.
  /// [managedNetwork] A `managed_network` block as defined below.
  /// [name] The name which should be used for this AI Foundry Hub. Changing this forces a new AI Foundry Hub to be created.
  /// [primaryUserAssignedIdentity] The user assigned identity ID that represents the AI Foundry Hub identity. This must be set when enabling encryption with a user assigned identity.
  /// [publicNetworkAccess] Whether public network access for this AI Service Hub should be enabled. Possible values include `Enabled` and `Disabled`. Defaults to `Enabled`.
  /// [resourceGroupName] The name of the Resource Group where the AI Foundry Hub should exist. Changing this forces a new AI Foundry Hub to be created.
  /// [storageAccountId] The Storage Account ID that should be used by this AI Foundry Hub. Changing this forces a new AI Foundry Hub to be created.
  /// [tags] A mapping of tags which should be assigned to the AI Foundry Hub.
  HubArgs({
    String? applicationInsightsId,
    String? containerRegistryId,
    String? description,
    HubEncryption? encryption,
    String? friendlyName,
    bool? highBusinessImpactEnabled,
    required HubIdentity identity,
    required String keyVaultId,
    String? location,
    HubManagedNetwork? managedNetwork,
    String? name,
    String? primaryUserAssignedIdentity,
    String? publicNetworkAccess,
    required String resourceGroupName,
    required String storageAccountId,
    Map<String, String>? tags,
  }) :
      applicationInsightsId = pulumi.Input.asOptionalInput<String>(applicationInsightsId),
      containerRegistryId = pulumi.Input.asOptionalInput<String>(containerRegistryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      encryption = pulumi.Input.asOptionalInput<HubEncryption>(encryption),
      friendlyName = pulumi.Input.asOptionalInput<String>(friendlyName),
      highBusinessImpactEnabled = pulumi.Input.asOptionalInput<bool>(highBusinessImpactEnabled),
      identity = pulumi.Input.asInput<HubIdentity>(identity),
      keyVaultId = pulumi.Input.asInput<String>(keyVaultId),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedNetwork = pulumi.Input.asOptionalInput<HubManagedNetwork>(managedNetwork),
      name = pulumi.Input.asOptionalInput<String>(name),
      primaryUserAssignedIdentity = pulumi.Input.asOptionalInput<String>(primaryUserAssignedIdentity),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageAccountId = pulumi.Input.asInput<String>(storageAccountId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationInsightsId': ?applicationInsightsId,
      'containerRegistryId': ?containerRegistryId,
      'description': ?description,
      'encryption': ?pulumi.Input.mapOptionalInputValue<HubEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'friendlyName': ?friendlyName,
      'highBusinessImpactEnabled': ?highBusinessImpactEnabled,
      'identity': pulumi.Input.mapInputValue<HubIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultId': keyVaultId,
      'location': ?location,
      'managedNetwork': ?pulumi.Input.mapOptionalInputValue<HubManagedNetwork, Map<String, dynamic>>(managedNetwork, (value) => value.toMap()),
      'name': ?name,
      'primaryUserAssignedIdentity': ?primaryUserAssignedIdentity,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'storageAccountId': storageAccountId,
      'tags': ?tags,
    };
  }

  factory HubArgs.fromMap(Map<String, dynamic> map) {
    return HubArgs(
      applicationInsightsId: map['applicationInsightsId'] == null ? null : map['applicationInsightsId'] as String,
      containerRegistryId: map['containerRegistryId'] == null ? null : map['containerRegistryId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      encryption: map['encryption'] == null ? null : HubEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName'] as String,
      highBusinessImpactEnabled: map['highBusinessImpactEnabled'] == null ? null : map['highBusinessImpactEnabled'] as bool,
      identity: HubIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      keyVaultId: map['keyVaultId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      managedNetwork: map['managedNetwork'] == null ? null : HubManagedNetwork.fromMap((map['managedNetwork'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      primaryUserAssignedIdentity: map['primaryUserAssignedIdentity'] == null ? null : map['primaryUserAssignedIdentity'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      storageAccountId: map['storageAccountId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

