// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_resource_group_configuration_response.dart';
import 'open_deployment_resource_reference_response.dart';
import 'referenced_resource_response.dart';

/// Site network service properties.
class SiteNetworkServicePropertiesFormatResponse {
  /// The goal state of the site network service resource. This has references to the configuration group value objects that describe the desired state of the site network service.
  final pulumi.Input<Map<String, ReferencedResourceResponse>>? desiredStateConfigurationGroupValueReferences;
  /// The last state of the site network service resource.
  final pulumi.Input<Map<String, ReferencedResourceResponse>> lastStateConfigurationGroupValueReferences;
  /// The network service design version for the site network service.
  final pulumi.Input<String> lastStateNetworkServiceDesignVersionName;
  /// Managed resource group configuration.
  final pulumi.Input<ManagedResourceGroupConfigurationResponse>? managedResourceGroupConfiguration;
  /// The network service design group name for the site network service.
  final pulumi.Input<String> networkServiceDesignGroupName;
  /// The network service design version for the site network service.
  final pulumi.Input<String> networkServiceDesignVersionName;
  /// The location of the network service design offering.
  final pulumi.Input<String> networkServiceDesignVersionOfferingLocation;
  /// The network service design version resource reference.
  final pulumi.Input<OpenDeploymentResourceReferenceResponse>? networkServiceDesignVersionResourceReference;
  /// The provisioning state of the site network service resource.
  final pulumi.Input<String> provisioningState;
  /// The publisher name for the site network service.
  final pulumi.Input<String> publisherName;
  /// The scope of the publisher.
  final pulumi.Input<String> publisherScope;
  /// The site details
  final pulumi.Input<ReferencedResourceResponse>? siteReference;

  /// Creates a new [SiteNetworkServicePropertiesFormatResponse].
  /// [desiredStateConfigurationGroupValueReferences] The goal state of the site network service resource. This has references to the configuration group value objects that describe the desired state of the site network service.
  /// [lastStateConfigurationGroupValueReferences] The last state of the site network service resource.
  /// [lastStateNetworkServiceDesignVersionName] The network service design version for the site network service.
  /// [managedResourceGroupConfiguration] Managed resource group configuration.
  /// [networkServiceDesignGroupName] The network service design group name for the site network service.
  /// [networkServiceDesignVersionName] The network service design version for the site network service.
  /// [networkServiceDesignVersionOfferingLocation] The location of the network service design offering.
  /// [networkServiceDesignVersionResourceReference] The network service design version resource reference.
  /// [provisioningState] The provisioning state of the site network service resource.
  /// [publisherName] The publisher name for the site network service.
  /// [publisherScope] The scope of the publisher.
  /// [siteReference] The site details
  SiteNetworkServicePropertiesFormatResponse({
    this.desiredStateConfigurationGroupValueReferences,
    required this.lastStateConfigurationGroupValueReferences,
    required this.lastStateNetworkServiceDesignVersionName,
    this.managedResourceGroupConfiguration,
    required this.networkServiceDesignGroupName,
    required this.networkServiceDesignVersionName,
    required this.networkServiceDesignVersionOfferingLocation,
    this.networkServiceDesignVersionResourceReference,
    required this.provisioningState,
    required this.publisherName,
    required this.publisherScope,
    this.siteReference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredStateConfigurationGroupValueReferences': ?pulumi.Input.mapOptionalInputValue<Map<String, ReferencedResourceResponse>, Map<String, Map<String, dynamic>>>(desiredStateConfigurationGroupValueReferences, (value) => pulumi.Input.encodeMapValues<ReferencedResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastStateConfigurationGroupValueReferences': pulumi.Input.mapInputValue<Map<String, ReferencedResourceResponse>, Map<String, Map<String, dynamic>>>(lastStateConfigurationGroupValueReferences, (value) => pulumi.Input.encodeMapValues<ReferencedResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastStateNetworkServiceDesignVersionName': lastStateNetworkServiceDesignVersionName,
      'managedResourceGroupConfiguration': ?pulumi.Input.mapOptionalInputValue<ManagedResourceGroupConfigurationResponse, Map<String, dynamic>>(managedResourceGroupConfiguration, (value) => value.toMap()),
      'networkServiceDesignGroupName': networkServiceDesignGroupName,
      'networkServiceDesignVersionName': networkServiceDesignVersionName,
      'networkServiceDesignVersionOfferingLocation': networkServiceDesignVersionOfferingLocation,
      'networkServiceDesignVersionResourceReference': ?pulumi.Input.mapOptionalInputValue<OpenDeploymentResourceReferenceResponse, Map<String, dynamic>>(networkServiceDesignVersionResourceReference, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publisherName': publisherName,
      'publisherScope': publisherScope,
      'siteReference': ?pulumi.Input.mapOptionalInputValue<ReferencedResourceResponse, Map<String, dynamic>>(siteReference, (value) => value.toMap()),
    };
  }

  factory SiteNetworkServicePropertiesFormatResponse.fromMap(Map<String, dynamic> map) {
    return SiteNetworkServicePropertiesFormatResponse(
      desiredStateConfigurationGroupValueReferences: map['desiredStateConfigurationGroupValueReferences'] == null ? null : (pulumi.Input.decodeMapValues<ReferencedResourceResponse>(map['desiredStateConfigurationGroupValueReferences']!, (value) => ReferencedResourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      lastStateConfigurationGroupValueReferences: (pulumi.Input.decodeMapValues<ReferencedResourceResponse>(map['lastStateConfigurationGroupValueReferences'], (value) => ReferencedResourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      lastStateNetworkServiceDesignVersionName: (map['lastStateNetworkServiceDesignVersionName'] as String).input(),
      managedResourceGroupConfiguration: map['managedResourceGroupConfiguration'] == null ? null : (ManagedResourceGroupConfigurationResponse.fromMap((map['managedResourceGroupConfiguration']! as Map).cast<String, dynamic>())).input(),
      networkServiceDesignGroupName: (map['networkServiceDesignGroupName'] as String).input(),
      networkServiceDesignVersionName: (map['networkServiceDesignVersionName'] as String).input(),
      networkServiceDesignVersionOfferingLocation: (map['networkServiceDesignVersionOfferingLocation'] as String).input(),
      networkServiceDesignVersionResourceReference: map['networkServiceDesignVersionResourceReference'] == null ? null : (OpenDeploymentResourceReferenceResponse.fromMap((map['networkServiceDesignVersionResourceReference']! as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      publisherName: (map['publisherName'] as String).input(),
      publisherScope: (map['publisherScope'] as String).input(),
      siteReference: map['siteReference'] == null ? null : (ReferencedResourceResponse.fromMap((map['siteReference']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

