// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_ip_rule.dart';

/// {@template pulumi_eventgrid_partner_namespace_args_doc}
/// The set of arguments for PartnerNamespace.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_partner_namespace_args_doc}
class PartnerNamespaceArgs {
  /// This boolean is used to enable or disable local auth. Default value is false. When the property is set to true, only AAD token will be used to authenticate if user is allowed to publish to the partner namespace.
  final pulumi.Input<bool>? disableLocalAuth;
  /// This can be used to restrict traffic from specific IPs instead of all IPs. Note: These are considered only if PublicNetworkAccess is enabled.
  final pulumi.Input<List<InboundIpRule>>? inboundIpRules;
  /// Location of the resource.
  final pulumi.Input<String>? location;
  /// Minimum TLS version of the publisher allowed to publish to this partner namespace
  final pulumi.Input<String>? minimumTlsVersionAllowed;
  /// Name of the partner namespace.
  final pulumi.Input<String>? partnerNamespaceName;
  /// The fully qualified ARM Id of the partner registration that should be associated with this partner namespace. This takes the following format:
  /// /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/partnerRegistrations/{partnerRegistrationName}.
  final pulumi.Input<String>? partnerRegistrationFullyQualifiedId;
  /// This determines if events published to this partner namespace should use the source attribute in the event payload
  /// or use the channel name in the header when matching to the partner topic. If none is specified, source attribute routing will be used to match the partner topic.
  final pulumi.Input<String>? partnerTopicRoutingMode;
  /// This determines if traffic is allowed over public network. By default it is enabled.
  /// You can further restrict to specific IPs by configuring <seealso cref="P:Microsoft.Azure.Events.ResourceProvider.Common.Contracts.PartnerNamespaceProperties.InboundIpRules" />
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PartnerNamespaceArgs].
  /// [disableLocalAuth] This boolean is used to enable or disable local auth. Default value is false. When the property is set to true, only AAD token will be used to authenticate if user is allowed to publish to the partner namespace.
  /// [inboundIpRules] This can be used to restrict traffic from specific IPs instead of all IPs. Note: These are considered only if PublicNetworkAccess is enabled.
  /// [location] Location of the resource.
  /// [minimumTlsVersionAllowed] Minimum TLS version of the publisher allowed to publish to this partner namespace
  /// [partnerNamespaceName] Name of the partner namespace.
  /// [partnerRegistrationFullyQualifiedId] The fully qualified ARM Id of the partner registration that should be associated with this partner namespace. This takes the following format:
  /// [partnerTopicRoutingMode] This determines if events published to this partner namespace should use the source attribute in the event payload
  /// [publicNetworkAccess] This determines if traffic is allowed over public network. By default it is enabled.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [tags] Tags of the resource.
  PartnerNamespaceArgs({
    this.disableLocalAuth,
    this.inboundIpRules,
    this.location,
    this.minimumTlsVersionAllowed,
    this.partnerNamespaceName,
    this.partnerRegistrationFullyQualifiedId,
    this.partnerTopicRoutingMode,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableLocalAuth': ?disableLocalAuth,
      'inboundIpRules': ?pulumi.Input.mapOptionalInputValue<List<InboundIpRule>, List<Map<String, dynamic>>>(inboundIpRules, (value) => pulumi.Input.encodeList<InboundIpRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'minimumTlsVersionAllowed': ?minimumTlsVersionAllowed,
      'partnerNamespaceName': ?partnerNamespaceName,
      'partnerRegistrationFullyQualifiedId': ?partnerRegistrationFullyQualifiedId,
      'partnerTopicRoutingMode': ?partnerTopicRoutingMode,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory PartnerNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return PartnerNamespaceArgs(
      disableLocalAuth: map['disableLocalAuth'] == null ? null : (map['disableLocalAuth']! as bool).input(),
      inboundIpRules: map['inboundIpRules'] == null ? null : (pulumi.Input.decodeList<InboundIpRule>(map['inboundIpRules']!, (value) => InboundIpRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      minimumTlsVersionAllowed: map['minimumTlsVersionAllowed'] == null ? null : (map['minimumTlsVersionAllowed']! as String).input(),
      partnerNamespaceName: map['partnerNamespaceName'] == null ? null : (map['partnerNamespaceName']! as String).input(),
      partnerRegistrationFullyQualifiedId: map['partnerRegistrationFullyQualifiedId'] == null ? null : (map['partnerRegistrationFullyQualifiedId']! as String).input(),
      partnerTopicRoutingMode: map['partnerTopicRoutingMode'] == null ? null : (map['partnerTopicRoutingMode']! as String).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

