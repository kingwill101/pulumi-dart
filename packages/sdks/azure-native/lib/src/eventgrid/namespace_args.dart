// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_info.dart';
import 'inbound_ip_rule.dart';
import 'namespace_sku.dart';
import 'private_endpoint_connection_eventgrid.dart';
import 'topic_spaces_configuration.dart';
import 'topics_configuration.dart';

/// {@template pulumi_eventgrid_namespace_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_namespace_args_doc}
class NamespaceArgs {
  /// Identity information for the Namespace resource.
  final pulumi.Input<IdentityInfo>? identity;
  /// This can be used to restrict traffic from specific IPs instead of all IPs. Note: These are considered only if PublicNetworkAccess is enabled.
  final pulumi.Input<List<InboundIpRule>>? inboundIpRules;
  /// This is an optional property and it allows the user to specify if the namespace resource supports zone-redundancy capability or not. If this
  /// property is not specified explicitly by the user, its default value depends on the following conditions:
  /// a. For Availability Zones enabled regions - The default property value would be true.
  /// b. For non-Availability Zones enabled regions - The default property value would be false.
  /// Once specified, this property cannot be updated.
  final pulumi.Input<bool>? isZoneRedundant;
  /// Location of the resource.
  final pulumi.Input<String>? location;
  /// Minimum TLS version of the publisher allowed to publish to this namespace. Only TLS version 1.2 is supported.
  final pulumi.Input<String>? minimumTlsVersionAllowed;
  /// Name of the namespace.
  final pulumi.Input<String>? namespaceName;
  /// List of private endpoint connections.
  final pulumi.Input<List<PrivateEndpointConnectionEventgrid>>? privateEndpointConnections;
  /// This determines if traffic is allowed over public network. By default it is enabled.
  /// You can further restrict to specific IPs by configuring <seealso cref="P:Microsoft.Azure.Events.ResourceProvider.Common.Contracts.PubSub.NamespaceProperties.InboundIpRules" />
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Represents available Sku pricing tiers.
  final pulumi.Input<NamespaceSku>? sku;
  /// Tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Topic spaces configuration information for the namespace resource
  final pulumi.Input<TopicSpacesConfiguration>? topicSpacesConfiguration;
  /// Topics configuration information for the namespace resource
  final pulumi.Input<TopicsConfiguration>? topicsConfiguration;

  /// Creates a new [NamespaceArgs].
  /// [identity] Identity information for the Namespace resource.
  /// [inboundIpRules] This can be used to restrict traffic from specific IPs instead of all IPs. Note: These are considered only if PublicNetworkAccess is enabled.
  /// [isZoneRedundant] This is an optional property and it allows the user to specify if the namespace resource supports zone-redundancy capability or not. If this
  /// [location] Location of the resource.
  /// [minimumTlsVersionAllowed] Minimum TLS version of the publisher allowed to publish to this namespace. Only TLS version 1.2 is supported.
  /// [namespaceName] Name of the namespace.
  /// [privateEndpointConnections] List of private endpoint connections.
  /// [publicNetworkAccess] This determines if traffic is allowed over public network. By default it is enabled.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [sku] Represents available Sku pricing tiers.
  /// [tags] Tags of the resource.
  /// [topicSpacesConfiguration] Topic spaces configuration information for the namespace resource
  /// [topicsConfiguration] Topics configuration information for the namespace resource
  NamespaceArgs({
    pulumi.Output<IdentityInfo>? identity,
    pulumi.Output<List<InboundIpRule>>? inboundIpRules,
    pulumi.Output<bool>? isZoneRedundant,
    pulumi.Output<String>? location,
    pulumi.Output<String>? minimumTlsVersionAllowed,
    pulumi.Output<String>? namespaceName,
    pulumi.Output<List<PrivateEndpointConnectionEventgrid>>? privateEndpointConnections,
    pulumi.Output<String>? publicNetworkAccess,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<NamespaceSku>? sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<TopicSpacesConfiguration>? topicSpacesConfiguration,
    pulumi.Output<TopicsConfiguration>? topicsConfiguration,
  }) :
      identity = pulumi.Input.asOptionalInput<IdentityInfo>(identity),
      inboundIpRules = pulumi.Input.asOptionalInput<List<InboundIpRule>>(inboundIpRules),
      isZoneRedundant = pulumi.Input.asOptionalInput<bool>(isZoneRedundant),
      location = pulumi.Input.asOptionalInput<String>(location),
      minimumTlsVersionAllowed = pulumi.Input.asOptionalInput<String>(minimumTlsVersionAllowed),
      namespaceName = pulumi.Input.asOptionalInput<String>(namespaceName),
      privateEndpointConnections = pulumi.Input.asOptionalInput<List<PrivateEndpointConnectionEventgrid>>(privateEndpointConnections),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<NamespaceSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      topicSpacesConfiguration = pulumi.Input.asOptionalInput<TopicSpacesConfiguration>(topicSpacesConfiguration),
      topicsConfiguration = pulumi.Input.asOptionalInput<TopicsConfiguration>(topicsConfiguration);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<IdentityInfo, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'inboundIpRules': ?pulumi.Input.mapOptionalInputValue<List<InboundIpRule>, List<Map<String, dynamic>>>(inboundIpRules, (value) => pulumi.Input.encodeList<InboundIpRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isZoneRedundant': ?isZoneRedundant,
      'location': ?location,
      'minimumTlsVersionAllowed': ?minimumTlsVersionAllowed,
      'namespaceName': ?namespaceName,
      'privateEndpointConnections': ?privateEndpointConnections,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<NamespaceSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'topicSpacesConfiguration': ?pulumi.Input.mapOptionalInputValue<TopicSpacesConfiguration, Map<String, dynamic>>(topicSpacesConfiguration, (value) => value.toMap()),
      'topicsConfiguration': ?pulumi.Input.mapOptionalInputValue<TopicsConfiguration, Map<String, dynamic>>(topicsConfiguration, (value) => value.toMap()),
    };
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      identity: map['identity'] == null ? null : pulumi.Output.create<IdentityInfo>(IdentityInfo.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      inboundIpRules: map['inboundIpRules'] == null ? null : pulumi.Output.create<List<InboundIpRule>>(pulumi.Input.decodeList<InboundIpRule>(map['inboundIpRules'], (value) => InboundIpRule.fromMap((value as Map).cast<String, dynamic>()))),
      isZoneRedundant: map['isZoneRedundant'] == null ? null : pulumi.Output.create<bool>(map['isZoneRedundant'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      minimumTlsVersionAllowed: map['minimumTlsVersionAllowed'] == null ? null : pulumi.Output.create<String>(map['minimumTlsVersionAllowed'] as String),
      namespaceName: map['namespaceName'] == null ? null : pulumi.Output.create<String>(map['namespaceName'] as String),
      privateEndpointConnections: map['privateEndpointConnections'] == null ? null : pulumi.Output.create<List<PrivateEndpointConnectionEventgrid>>((map['privateEndpointConnections'] as List).cast<PrivateEndpointConnectionEventgrid>()),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<NamespaceSku>(NamespaceSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      topicSpacesConfiguration: map['topicSpacesConfiguration'] == null ? null : pulumi.Output.create<TopicSpacesConfiguration>(TopicSpacesConfiguration.fromMap((map['topicSpacesConfiguration'] as Map).cast<String, dynamic>())),
      topicsConfiguration: map['topicsConfiguration'] == null ? null : pulumi.Output.create<TopicsConfiguration>(TopicsConfiguration.fromMap((map['topicsConfiguration'] as Map).cast<String, dynamic>())),
    );
  }
}

