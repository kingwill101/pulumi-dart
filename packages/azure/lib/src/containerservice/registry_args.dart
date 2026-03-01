// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_encryption.dart';
import 'registry_georeplication.dart';
import 'registry_identity.dart';
import 'registry_network_rule_set.dart';

/// {@template pulumi_containerservice_registry_registry_args_doc}
/// The set of arguments for Registry.
/// {@endtemplate}
/// {@macro pulumi_containerservice_registry_registry_args_doc}
class RegistryArgs {
  /// Specifies whether the admin user is enabled. Defaults to `false`.
  final pulumi.Input<bool>? adminEnabled;
  /// Whether to allow anonymous (unauthenticated) pull access to this Container Registry. This is only supported on resources with the `Standard` or `Premium` SKU.
  final pulumi.Input<bool>? anonymousPullEnabled;
  /// Whether to enable dedicated data endpoints for this Container Registry? This is only supported on resources with the `Premium` SKU.
  final pulumi.Input<bool>? dataEndpointEnabled;
  /// An `encryption` block as documented below.
  final pulumi.Input<RegistryEncryption>? encryption;
  /// Boolean value that indicates whether export policy is enabled. Defaults to `true`. In order to set it to `false`, make sure the `public_network_access_enabled` is also set to `false`.
  ///
  /// > **Note:** `quarantine_policy_enabled`, `retention_policy_in_days`, `trust_policy_enabled`, `export_policy_enabled` and `zone_redundancy_enabled` are only supported on resources with the `Premium` SKU.
  final pulumi.Input<bool>? exportPolicyEnabled;
  /// One or more `georeplications` blocks as documented below.
  ///
  /// > **Note:** The `georeplications` is only supported on new resources with the `Premium` SKU.
  ///
  /// > **Note:** The `georeplications` list cannot contain the location where the Container Registry exists.
  ///
  /// > **Note:** If more than one `georeplications` block is specified, they are expected to follow the alphabetic order on the `location` property.
  final pulumi.Input<List<RegistryGeoreplication>>? georeplications;
  /// An `identity` block as defined below.
  final pulumi.Input<RegistryIdentity>? identity;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Container Registry. Only Alphanumeric characters allowed. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Whether to allow trusted Azure services to access a network-restricted Container Registry? Possible values are `None` and `AzureServices`. Defaults to `AzureServices`.
  final pulumi.Input<String>? networkRuleBypassOption;
  /// A `network_rule_set` block as documented below.
  final pulumi.Input<RegistryNetworkRuleSet>? networkRuleSet;
  /// Whether public network access is allowed for the container registry. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// Boolean value that indicates whether quarantine policy is enabled.
  final pulumi.Input<bool>? quarantinePolicyEnabled;
  /// The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The number of days to retain and untagged manifest after which it gets purged.
  final pulumi.Input<int>? retentionPolicyInDays;
  /// The SKU name of the container registry. Possible values are `Basic`, `Standard` and `Premium`.
  final pulumi.Input<String> sku;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Boolean value that indicated whether trust policy is enabled. Defaults to `false`.
  final pulumi.Input<bool>? trustPolicyEnabled;
  /// Whether zone redundancy is enabled for this Container Registry? Changing this forces a new resource to be created. Defaults to `false`.
  final pulumi.Input<bool>? zoneRedundancyEnabled;

  /// Creates a new [RegistryArgs].
  /// [adminEnabled] Specifies whether the admin user is enabled. Defaults to `false`.
  /// [anonymousPullEnabled] Whether to allow anonymous (unauthenticated) pull access to this Container Registry. This is only supported on resources with the `Standard` or `Premium` SKU.
  /// [dataEndpointEnabled] Whether to enable dedicated data endpoints for this Container Registry? This is only supported on resources with the `Premium` SKU.
  /// [encryption] An `encryption` block as documented below.
  /// [exportPolicyEnabled] Boolean value that indicates whether export policy is enabled. Defaults to `true`. In order to set it to `false`, make sure the `public_network_access_enabled` is also set to `false`.
  /// [georeplications] One or more `georeplications` blocks as documented below.
  /// [identity] An `identity` block as defined below.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Container Registry. Only Alphanumeric characters allowed. Changing this forces a new resource to be created.
  /// [networkRuleBypassOption] Whether to allow trusted Azure services to access a network-restricted Container Registry? Possible values are `None` and `AzureServices`. Defaults to `AzureServices`.
  /// [networkRuleSet] A `network_rule_set` block as documented below.
  /// [publicNetworkAccessEnabled] Whether public network access is allowed for the container registry. Defaults to `true`.
  /// [quarantinePolicyEnabled] Boolean value that indicates whether quarantine policy is enabled.
  /// [resourceGroupName] The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created.
  /// [retentionPolicyInDays] The number of days to retain and untagged manifest after which it gets purged.
  /// [sku] The SKU name of the container registry. Possible values are `Basic`, `Standard` and `Premium`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [trustPolicyEnabled] Boolean value that indicated whether trust policy is enabled. Defaults to `false`.
  /// [zoneRedundancyEnabled] Whether zone redundancy is enabled for this Container Registry? Changing this forces a new resource to be created. Defaults to `false`.
  RegistryArgs({
    bool? adminEnabled,
    bool? anonymousPullEnabled,
    bool? dataEndpointEnabled,
    RegistryEncryption? encryption,
    bool? exportPolicyEnabled,
    List<RegistryGeoreplication>? georeplications,
    RegistryIdentity? identity,
    String? location,
    String? name,
    String? networkRuleBypassOption,
    RegistryNetworkRuleSet? networkRuleSet,
    bool? publicNetworkAccessEnabled,
    bool? quarantinePolicyEnabled,
    required String resourceGroupName,
    int? retentionPolicyInDays,
    required String sku,
    Map<String, String>? tags,
    bool? trustPolicyEnabled,
    bool? zoneRedundancyEnabled,
  }) :
      adminEnabled = pulumi.Input.asOptionalInput<bool>(adminEnabled),
      anonymousPullEnabled = pulumi.Input.asOptionalInput<bool>(anonymousPullEnabled),
      dataEndpointEnabled = pulumi.Input.asOptionalInput<bool>(dataEndpointEnabled),
      encryption = pulumi.Input.asOptionalInput<RegistryEncryption>(encryption),
      exportPolicyEnabled = pulumi.Input.asOptionalInput<bool>(exportPolicyEnabled),
      georeplications = pulumi.Input.asOptionalInput<List<RegistryGeoreplication>>(georeplications),
      identity = pulumi.Input.asOptionalInput<RegistryIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkRuleBypassOption = pulumi.Input.asOptionalInput<String>(networkRuleBypassOption),
      networkRuleSet = pulumi.Input.asOptionalInput<RegistryNetworkRuleSet>(networkRuleSet),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      quarantinePolicyEnabled = pulumi.Input.asOptionalInput<bool>(quarantinePolicyEnabled),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      retentionPolicyInDays = pulumi.Input.asOptionalInput<int>(retentionPolicyInDays),
      sku = pulumi.Input.asInput<String>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      trustPolicyEnabled = pulumi.Input.asOptionalInput<bool>(trustPolicyEnabled),
      zoneRedundancyEnabled = pulumi.Input.asOptionalInput<bool>(zoneRedundancyEnabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminEnabled': ?adminEnabled,
      'anonymousPullEnabled': ?anonymousPullEnabled,
      'dataEndpointEnabled': ?dataEndpointEnabled,
      'encryption': ?pulumi.Input.mapOptionalInputValue<RegistryEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'exportPolicyEnabled': ?exportPolicyEnabled,
      'georeplications': ?pulumi.Input.mapOptionalInputValue<List<RegistryGeoreplication>, List<Map<String, dynamic>>>(georeplications, (value) => pulumi.Input.encodeList<RegistryGeoreplication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identity': ?pulumi.Input.mapOptionalInputValue<RegistryIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'networkRuleBypassOption': ?networkRuleBypassOption,
      'networkRuleSet': ?pulumi.Input.mapOptionalInputValue<RegistryNetworkRuleSet, Map<String, dynamic>>(networkRuleSet, (value) => value.toMap()),
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'quarantinePolicyEnabled': ?quarantinePolicyEnabled,
      'resourceGroupName': resourceGroupName,
      'retentionPolicyInDays': ?retentionPolicyInDays,
      'sku': sku,
      'tags': ?tags,
      'trustPolicyEnabled': ?trustPolicyEnabled,
      'zoneRedundancyEnabled': ?zoneRedundancyEnabled,
    };
  }

  factory RegistryArgs.fromMap(Map<String, dynamic> map) {
    return RegistryArgs(
      adminEnabled: map['adminEnabled'] == null ? null : map['adminEnabled'] as bool,
      anonymousPullEnabled: map['anonymousPullEnabled'] == null ? null : map['anonymousPullEnabled'] as bool,
      dataEndpointEnabled: map['dataEndpointEnabled'] == null ? null : map['dataEndpointEnabled'] as bool,
      encryption: map['encryption'] == null ? null : RegistryEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      exportPolicyEnabled: map['exportPolicyEnabled'] == null ? null : map['exportPolicyEnabled'] as bool,
      georeplications: map['georeplications'] == null ? null : pulumi.Input.decodeList<RegistryGeoreplication>(map['georeplications'], (value) => RegistryGeoreplication.fromMap((value as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : RegistryIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      networkRuleBypassOption: map['networkRuleBypassOption'] == null ? null : map['networkRuleBypassOption'] as String,
      networkRuleSet: map['networkRuleSet'] == null ? null : RegistryNetworkRuleSet.fromMap((map['networkRuleSet'] as Map).cast<String, dynamic>()),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : map['publicNetworkAccessEnabled'] as bool,
      quarantinePolicyEnabled: map['quarantinePolicyEnabled'] == null ? null : map['quarantinePolicyEnabled'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      retentionPolicyInDays: map['retentionPolicyInDays'] == null ? null : map['retentionPolicyInDays'] as int,
      sku: map['sku'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      trustPolicyEnabled: map['trustPolicyEnabled'] == null ? null : map['trustPolicyEnabled'] as bool,
      zoneRedundancyEnabled: map['zoneRedundancyEnabled'] == null ? null : map['zoneRedundancyEnabled'] as bool,
    );
  }
}

