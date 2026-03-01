// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_key_info_base.dart';
import 'azure_resource.dart';
import 'configuration_info.dart';
import 'public_network_solution.dart';
import 'secret_store.dart';
import 'vnet_solution.dart';

/// {@template pulumi_servicelinker_connector_args_doc}
/// The set of arguments for Connector.
/// {@endtemplate}
/// {@macro pulumi_servicelinker_connector_args_doc}
class ConnectorArgs {
  /// The authentication type.
  final pulumi.Input<AccessKeyInfoBase>? authInfo;
  /// The application client type
  final pulumi.Input<String>? clientType;
  /// The connection information consumed by applications, including secrets, connection strings.
  final pulumi.Input<ConfigurationInfo>? configurationInfo;
  /// The name of resource.
  final pulumi.Input<String>? connectorName;
  /// The name of Azure region.
  final pulumi.Input<String> location;
  /// The network solution.
  final pulumi.Input<PublicNetworkSolution>? publicNetworkSolution;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// connection scope in source service.
  final pulumi.Input<String>? scope;
  /// An option to store secret value in secure place
  final pulumi.Input<SecretStore>? secretStore;
  /// The ID of the target subscription.
  final pulumi.Input<String>? subscriptionId;
  /// The target service properties
  final pulumi.Input<AzureResource>? targetService;
  /// The VNet solution.
  final pulumi.Input<VNetSolution>? vNetSolution;

  /// Creates a new [ConnectorArgs].
  /// [authInfo] The authentication type.
  /// [clientType] The application client type
  /// [configurationInfo] The connection information consumed by applications, including secrets, connection strings.
  /// [connectorName] The name of resource.
  /// [location] The name of Azure region.
  /// [publicNetworkSolution] The network solution.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scope] connection scope in source service.
  /// [secretStore] An option to store secret value in secure place
  /// [subscriptionId] The ID of the target subscription.
  /// [targetService] The target service properties
  /// [vNetSolution] The VNet solution.
  ConnectorArgs({
    AccessKeyInfoBase? authInfo,
    String? clientType,
    ConfigurationInfo? configurationInfo,
    String? connectorName,
    required String location,
    PublicNetworkSolution? publicNetworkSolution,
    required String resourceGroupName,
    String? scope,
    SecretStore? secretStore,
    String? subscriptionId,
    AzureResource? targetService,
    VNetSolution? vNetSolution,
  }) :
      authInfo = pulumi.Input.asOptionalInput<AccessKeyInfoBase>(authInfo),
      clientType = pulumi.Input.asOptionalInput<String>(clientType),
      configurationInfo = pulumi.Input.asOptionalInput<ConfigurationInfo>(configurationInfo),
      connectorName = pulumi.Input.asOptionalInput<String>(connectorName),
      location = pulumi.Input.asInput<String>(location),
      publicNetworkSolution = pulumi.Input.asOptionalInput<PublicNetworkSolution>(publicNetworkSolution),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      secretStore = pulumi.Input.asOptionalInput<SecretStore>(secretStore),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId),
      targetService = pulumi.Input.asOptionalInput<AzureResource>(targetService),
      vNetSolution = pulumi.Input.asOptionalInput<VNetSolution>(vNetSolution);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authInfo': ?pulumi.Input.mapOptionalInputValue<AccessKeyInfoBase, Map<String, dynamic>>(authInfo, (value) => value.toMap()),
      'clientType': ?clientType,
      'configurationInfo': ?pulumi.Input.mapOptionalInputValue<ConfigurationInfo, Map<String, dynamic>>(configurationInfo, (value) => value.toMap()),
      'connectorName': ?connectorName,
      'location': location,
      'publicNetworkSolution': ?pulumi.Input.mapOptionalInputValue<PublicNetworkSolution, Map<String, dynamic>>(publicNetworkSolution, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'scope': ?scope,
      'secretStore': ?pulumi.Input.mapOptionalInputValue<SecretStore, Map<String, dynamic>>(secretStore, (value) => value.toMap()),
      'subscriptionId': ?subscriptionId,
      'targetService': ?pulumi.Input.mapOptionalInputValue<AzureResource, Map<String, dynamic>>(targetService, (value) => value.toMap()),
      'vNetSolution': ?pulumi.Input.mapOptionalInputValue<VNetSolution, Map<String, dynamic>>(vNetSolution, (value) => value.toMap()),
    };
  }

  factory ConnectorArgs.fromMap(Map<String, dynamic> map) {
    return ConnectorArgs(
      authInfo: map['authInfo'] == null ? null : AccessKeyInfoBase.fromMap((map['authInfo'] as Map).cast<String, dynamic>()),
      clientType: map['clientType'] == null ? null : map['clientType'] as String,
      configurationInfo: map['configurationInfo'] == null ? null : ConfigurationInfo.fromMap((map['configurationInfo'] as Map).cast<String, dynamic>()),
      connectorName: map['connectorName'] == null ? null : map['connectorName'] as String,
      location: map['location'] as String,
      publicNetworkSolution: map['publicNetworkSolution'] == null ? null : PublicNetworkSolution.fromMap((map['publicNetworkSolution'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
      secretStore: map['secretStore'] == null ? null : SecretStore.fromMap((map['secretStore'] as Map).cast<String, dynamic>()),
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
      targetService: map['targetService'] == null ? null : AzureResource.fromMap((map['targetService'] as Map).cast<String, dynamic>()),
      vNetSolution: map['vNetSolution'] == null ? null : VNetSolution.fromMap((map['vNetSolution'] as Map).cast<String, dynamic>()),
    );
  }
}

