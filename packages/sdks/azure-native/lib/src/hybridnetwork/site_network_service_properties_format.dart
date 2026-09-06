// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_resource_group_configuration.dart';
import 'referenced_resource.dart';

/// Site network service properties.
class SiteNetworkServicePropertiesFormat {
  /// The goal state of the site network service resource. This has references to the configuration group value objects that describe the desired state of the site network service.
  final pulumi.Input<Map<String, ReferencedResource>?>? desiredStateConfigurationGroupValueReferences;
  /// Managed resource group configuration.
  final pulumi.Input<ManagedResourceGroupConfiguration?>? managedResourceGroupConfiguration;
  /// The network service design version resource reference.
  final pulumi.Input<dynamic>? networkServiceDesignVersionResourceReference;
  /// The site details
  final pulumi.Input<ReferencedResource?>? siteReference;

  /// Creates a new [SiteNetworkServicePropertiesFormat].
  /// [desiredStateConfigurationGroupValueReferences] The goal state of the site network service resource. This has references to the configuration group value objects that describe the desired state of the site network service.
  /// [managedResourceGroupConfiguration] Managed resource group configuration.
  /// [networkServiceDesignVersionResourceReference] The network service design version resource reference.
  /// [siteReference] The site details
  const SiteNetworkServicePropertiesFormat({
    this.desiredStateConfigurationGroupValueReferences,
    this.managedResourceGroupConfiguration,
    this.networkServiceDesignVersionResourceReference,
    this.siteReference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredStateConfigurationGroupValueReferences': ?pulumi.Input.mapOptionalInputValue<Map<String, ReferencedResource>, Map<String, Map<String, dynamic>>>(desiredStateConfigurationGroupValueReferences, (value) => pulumi.Input.encodeMapValues<ReferencedResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managedResourceGroupConfiguration': ?pulumi.Input.mapOptionalInputValue<ManagedResourceGroupConfiguration, Map<String, dynamic>>(managedResourceGroupConfiguration, (value) => value.toMap()),
      'networkServiceDesignVersionResourceReference': ?networkServiceDesignVersionResourceReference,
      'siteReference': ?pulumi.Input.mapOptionalInputValue<ReferencedResource, Map<String, dynamic>>(siteReference, (value) => value.toMap()),
    };
  }

  factory SiteNetworkServicePropertiesFormat.fromMap(Map<String, dynamic> map) {
    return SiteNetworkServicePropertiesFormat(
      desiredStateConfigurationGroupValueReferences: (() { final guardedValue = map['desiredStateConfigurationGroupValueReferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ReferencedResource>(guardedValue, (value) => ReferencedResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      managedResourceGroupConfiguration: (() { final guardedValue = map['managedResourceGroupConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedResourceGroupConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkServiceDesignVersionResourceReference: (() { final guardedValue = map['networkServiceDesignVersionResourceReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      siteReference: (() { final guardedValue = map['siteReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReferencedResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
