// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_configuration.dart';
import 'managed_rgconfiguration.dart';
import 'sapvirtual_instance_identity.dart';

/// {@template pulumi_workloads_sap_virtual_instance_args_doc}
/// The set of arguments for SapVirtualInstance.
/// {@endtemplate}
/// {@macro pulumi_workloads_sap_virtual_instance_args_doc}
class SapVirtualInstanceArgs {
  /// Defines if the SAP system is being created using Azure Center for SAP solutions (ACSS) or if an existing SAP system is being registered with ACSS
  final pulumi.Input<DeploymentConfiguration> configuration;
  /// Defines the environment type - Production/Non Production.
  final pulumi.Input<String> environment;
  /// The managed service identities assigned to this resource.
  final pulumi.Input<SAPVirtualInstanceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Managed resource group configuration
  final pulumi.Input<ManagedRGConfiguration>? managedResourceGroupConfiguration;
  /// Specifies the network access configuration for the resources that will be deployed in the Managed Resource Group. The options to choose from are Public and Private. If 'Private' is chosen, the Storage Account service tag should be enabled on the subnets in which the SAP VMs exist. This is required for establishing connectivity between VM extensions and the managed resource group storage account. This setting is currently applicable only to Storage Account. Learn more here https://go.microsoft.com/fwlink/?linkid=2247228
  final pulumi.Input<String>? managedResourcesNetworkAccessType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Defines the SAP Product type.
  final pulumi.Input<String> sapProduct;
  /// The name of the Virtual Instances for SAP solutions resource
  final pulumi.Input<String>? sapVirtualInstanceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SapVirtualInstanceArgs].
  /// [configuration] Defines if the SAP system is being created using Azure Center for SAP solutions (ACSS) or if an existing SAP system is being registered with ACSS
  /// [environment] Defines the environment type - Production/Non Production.
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [managedResourceGroupConfiguration] Managed resource group configuration
  /// [managedResourcesNetworkAccessType] Specifies the network access configuration for the resources that will be deployed in the Managed Resource Group. The options to choose from are Public and Private. If 'Private' is chosen, the Storage Account service tag should be enabled on the subnets in which the SAP VMs exist. This is required for establishing connectivity between VM extensions and the managed resource group storage account. This setting is currently applicable only to Storage Account. Learn more here https://go.microsoft.com/fwlink/?linkid=2247228
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sapProduct] Defines the SAP Product type.
  /// [sapVirtualInstanceName] The name of the Virtual Instances for SAP solutions resource
  /// [tags] Resource tags.
  SapVirtualInstanceArgs({
    required DeploymentConfiguration configuration,
    required String environment,
    SAPVirtualInstanceIdentity? identity,
    String? location,
    ManagedRGConfiguration? managedResourceGroupConfiguration,
    String? managedResourcesNetworkAccessType,
    required String resourceGroupName,
    required String sapProduct,
    String? sapVirtualInstanceName,
    Map<String, String>? tags,
  }) :
      configuration = pulumi.Input.asInput<DeploymentConfiguration>(configuration),
      environment = pulumi.Input.asInput<String>(environment),
      identity = pulumi.Input.asOptionalInput<SAPVirtualInstanceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedResourceGroupConfiguration = pulumi.Input.asOptionalInput<ManagedRGConfiguration>(managedResourceGroupConfiguration),
      managedResourcesNetworkAccessType = pulumi.Input.asOptionalInput<String>(managedResourcesNetworkAccessType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sapProduct = pulumi.Input.asInput<String>(sapProduct),
      sapVirtualInstanceName = pulumi.Input.asOptionalInput<String>(sapVirtualInstanceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': pulumi.Input.mapInputValue<DeploymentConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'environment': environment,
      'identity': ?pulumi.Input.mapOptionalInputValue<SAPVirtualInstanceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'managedResourceGroupConfiguration': ?pulumi.Input.mapOptionalInputValue<ManagedRGConfiguration, Map<String, dynamic>>(managedResourceGroupConfiguration, (value) => value.toMap()),
      'managedResourcesNetworkAccessType': ?managedResourcesNetworkAccessType,
      'resourceGroupName': resourceGroupName,
      'sapProduct': sapProduct,
      'sapVirtualInstanceName': ?sapVirtualInstanceName,
      'tags': ?tags,
    };
  }

  factory SapVirtualInstanceArgs.fromMap(Map<String, dynamic> map) {
    return SapVirtualInstanceArgs(
      configuration: DeploymentConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      environment: map['environment'] as String,
      identity: map['identity'] == null ? null : SAPVirtualInstanceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      managedResourceGroupConfiguration: map['managedResourceGroupConfiguration'] == null ? null : ManagedRGConfiguration.fromMap((map['managedResourceGroupConfiguration'] as Map).cast<String, dynamic>()),
      managedResourcesNetworkAccessType: map['managedResourcesNetworkAccessType'] == null ? null : map['managedResourcesNetworkAccessType'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sapProduct: map['sapProduct'] as String,
      sapVirtualInstanceName: map['sapVirtualInstanceName'] == null ? null : map['sapVirtualInstanceName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

