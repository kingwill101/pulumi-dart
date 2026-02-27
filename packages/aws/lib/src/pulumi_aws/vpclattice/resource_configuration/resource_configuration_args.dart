// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../resource_configuration_resource_configuration_definition/resource_configuration_resource_configuration_definition.dart';
import '../resource_configuration_timeouts/resource_configuration_timeouts.dart';

/// The set of arguments for ResourceConfiguration.
class ResourceConfigurationArgs {
  /// Allow or Deny the association of this resource to a shareable service network.
  final Input<bool>? allowAssociationToShareableServiceNetwork;

  /// Custom domain name for your resource configuration. Additionally, provide a `domain_verification_id` to prove your ownership of a domain.
  final Input<String>? customDomainName;

  /// The domain verification ID of your verified custom domain name. If you don't provide an ID, you must configure the DNS settings yourself.
  final Input<String>? domainVerificationId;

  /// Name for the Resource Configuration.
  final Input<String>? name;

  /// Port ranges to access the Resource either single port `80` or range `80-81` range.
  final Input<List<String>>? portRanges;

  /// Protocol for the Resource `TCP` is currently the only supported value.  MUST be specified if `resource_configuration_group_id` is not.
  final Input<String>? protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Details of the Resource Configuration. See `resource_configuration_definition` Block for details.
  ///
  /// The following arguments are optional:
  final Input<ResourceConfigurationResourceConfigurationDefinition>?
      resourceConfigurationDefinition;

  /// ID of Resource Configuration where `type` is `CHILD`.
  final Input<String>? resourceConfigurationGroupId;

  /// ID of the Resource Gateway used to access the resource. MUST be specified if `resource_configuration_group_id` is not.
  final Input<String>? resourceGatewayIdentifier;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<ResourceConfigurationTimeouts>? timeouts;

  /// Type of Resource Configuration. Must be one of `GROUP`, `CHILD`, `SINGLE`, `ARN`.
  final Input<String>? type;

  ResourceConfigurationArgs({
    this.allowAssociationToShareableServiceNetwork,
    this.customDomainName,
    this.domainVerificationId,
    this.name,
    this.portRanges,
    this.protocol,
    this.region,
    this.resourceConfigurationDefinition,
    this.resourceConfigurationGroupId,
    this.resourceGatewayIdentifier,
    this.tags,
    this.timeouts,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowAssociationToShareableServiceNetworkValue =
        allowAssociationToShareableServiceNetwork;
    if (allowAssociationToShareableServiceNetworkValue != null) {
      map['allowAssociationToShareableServiceNetwork'] =
          allowAssociationToShareableServiceNetworkValue;
    }
    final customDomainNameValue = customDomainName;
    if (customDomainNameValue != null) {
      map['customDomainName'] = customDomainNameValue;
    }
    final domainVerificationIdValue = domainVerificationId;
    if (domainVerificationIdValue != null) {
      map['domainVerificationId'] = domainVerificationIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final portRangesValue = portRanges;
    if (portRangesValue != null) {
      map['portRanges'] = portRangesValue;
    }
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resourceConfigurationDefinitionValue =
        resourceConfigurationDefinition;
    if (resourceConfigurationDefinitionValue != null) {
      map['resourceConfigurationDefinition'] = Input.mapOptionalInputValue<
              ResourceConfigurationResourceConfigurationDefinition,
              Map<String, dynamic>>(
          resourceConfigurationDefinitionValue, (value) => value.toMap());
    }
    final resourceConfigurationGroupIdValue = resourceConfigurationGroupId;
    if (resourceConfigurationGroupIdValue != null) {
      map['resourceConfigurationGroupId'] = resourceConfigurationGroupIdValue;
    }
    final resourceGatewayIdentifierValue = resourceGatewayIdentifier;
    if (resourceGatewayIdentifierValue != null) {
      map['resourceGatewayIdentifier'] = resourceGatewayIdentifierValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          ResourceConfigurationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory ResourceConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ResourceConfigurationArgs(
      allowAssociationToShareableServiceNetwork: Input.asOptionalInput<bool>(
          map['allowAssociationToShareableServiceNetwork']),
      customDomainName: Input.asOptionalInput<String>(map['customDomainName']),
      domainVerificationId:
          Input.asOptionalInput<String>(map['domainVerificationId']),
      name: Input.asOptionalInput<String>(map['name']),
      portRanges: Input.asOptionalInput<List<String>>(map['portRanges']),
      protocol: Input.asOptionalInput<String>(map['protocol']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceConfigurationDefinition: Input.asOptionalInput<
              ResourceConfigurationResourceConfigurationDefinition>(
          map['resourceConfigurationDefinition']),
      resourceConfigurationGroupId:
          Input.asOptionalInput<String>(map['resourceConfigurationGroupId']),
      resourceGatewayIdentifier:
          Input.asOptionalInput<String>(map['resourceGatewayIdentifier']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          Input.asOptionalInput<ResourceConfigurationTimeouts>(map['timeouts']),
      type: Input.asOptionalInput<String>(map['type']),
    );
  }
}
