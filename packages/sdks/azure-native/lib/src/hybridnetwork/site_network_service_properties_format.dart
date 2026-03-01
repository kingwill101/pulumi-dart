// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_resource_group_configuration.dart';
import 'open_deployment_resource_reference.dart';
import 'referenced_resource.dart';

/// Site network service properties.
class SiteNetworkServicePropertiesFormat {
  /// The goal state of the site network service resource. This has references to the configuration group value objects that describe the desired state of the site network service.
  final Map<String, ReferencedResource>? desiredStateConfigurationGroupValueReferences;
  /// Managed resource group configuration.
  final ManagedResourceGroupConfiguration? managedResourceGroupConfiguration;
  /// The network service design version resource reference.
  final OpenDeploymentResourceReference? networkServiceDesignVersionResourceReference;
  /// The site details
  final ReferencedResource? siteReference;

  /// Creates a new [SiteNetworkServicePropertiesFormat].
  /// [desiredStateConfigurationGroupValueReferences] The goal state of the site network service resource. This has references to the configuration group value objects that describe the desired state of the site network service.
  /// [managedResourceGroupConfiguration] Managed resource group configuration.
  /// [networkServiceDesignVersionResourceReference] The network service design version resource reference.
  /// [siteReference] The site details
  SiteNetworkServicePropertiesFormat({
    this.desiredStateConfigurationGroupValueReferences,
    this.managedResourceGroupConfiguration,
    this.networkServiceDesignVersionResourceReference,
    this.siteReference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredStateConfigurationGroupValueReferences': ?desiredStateConfigurationGroupValueReferences == null ? null : pulumi.Input.encodeMapValues<ReferencedResource, Map<String, dynamic>>(desiredStateConfigurationGroupValueReferences!, (value) => value.toMap()),
      'managedResourceGroupConfiguration': ?managedResourceGroupConfiguration == null ? null : managedResourceGroupConfiguration!.toMap(),
      'networkServiceDesignVersionResourceReference': ?networkServiceDesignVersionResourceReference == null ? null : networkServiceDesignVersionResourceReference!.toMap(),
      'siteReference': ?siteReference == null ? null : siteReference!.toMap(),
    };
  }

  factory SiteNetworkServicePropertiesFormat.fromMap(Map<String, dynamic> map) {
    return SiteNetworkServicePropertiesFormat(
      desiredStateConfigurationGroupValueReferences: map['desiredStateConfigurationGroupValueReferences'] == null ? null : pulumi.Input.decodeMapValues<ReferencedResource>(map['desiredStateConfigurationGroupValueReferences'], (value) => ReferencedResource.fromMap((value as Map).cast<String, dynamic>())),
      managedResourceGroupConfiguration: map['managedResourceGroupConfiguration'] == null ? null : ManagedResourceGroupConfiguration.fromMap((map['managedResourceGroupConfiguration'] as Map).cast<String, dynamic>()),
      networkServiceDesignVersionResourceReference: map['networkServiceDesignVersionResourceReference'] == null ? null : OpenDeploymentResourceReference.fromMap((map['networkServiceDesignVersionResourceReference'] as Map).cast<String, dynamic>()),
      siteReference: map['siteReference'] == null ? null : ReferencedResource.fromMap((map['siteReference'] as Map).cast<String, dynamic>()),
    );
  }
}

