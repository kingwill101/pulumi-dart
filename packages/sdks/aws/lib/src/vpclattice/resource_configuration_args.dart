// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_configuration_resource_configuration_definition.dart';
import 'resource_configuration_timeouts.dart';

/// {@template pulumi_vpclattice_resource_configuration_resource_configuration_args_doc}
/// The set of arguments for ResourceConfiguration.
/// {@endtemplate}
/// {@macro pulumi_vpclattice_resource_configuration_resource_configuration_args_doc}
class ResourceConfigurationArgs {
  /// Allow or Deny the association of this resource to a shareable service network.
  final pulumi.Input<bool>? allowAssociationToShareableServiceNetwork;
  /// Custom domain name for your resource configuration. Additionally, provide a `domainVerificationId` to prove your ownership of a domain.
  final pulumi.Input<String>? customDomainName;
  /// Domain verification ID of your verified custom domain name. If you don't provide an ID, you must configure the DNS settings yourself.
  final pulumi.Input<String>? domainVerificationId;
  /// Name for the Resource Configuration.
  final pulumi.Input<String>? name;
  /// Port ranges to access the Resource either single port `80` or range `80-81` range.
  final pulumi.Input<List<String>>? portRanges;
  /// Protocol for the Resource `TCP` is currently the only supported value.  MUST be specified if `resourceConfigurationGroupId` is not.
  final pulumi.Input<String>? protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Details of the Resource Configuration. See `resourceConfigurationDefinition` Block for details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ResourceConfigurationResourceConfigurationDefinition>? resourceConfigurationDefinition;
  /// ID of Resource Configuration where `type` is `CHILD`.
  final pulumi.Input<String>? resourceConfigurationGroupId;
  /// ID of the Resource Gateway used to access the resource. MUST be specified if `resourceConfigurationGroupId` is not.
  final pulumi.Input<String>? resourceGatewayIdentifier;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<ResourceConfigurationTimeouts>? timeouts;
  /// Type of Resource Configuration. Must be one of `GROUP`, `CHILD`, `SINGLE`, `ARN`.
  final pulumi.Input<String>? type;

  /// Creates a new [ResourceConfigurationArgs].
  /// [allowAssociationToShareableServiceNetwork] Allow or Deny the association of this resource to a shareable service network.
  /// [customDomainName] Custom domain name for your resource configuration. Additionally, provide a `domainVerificationId` to prove your ownership of a domain.
  /// [domainVerificationId] Domain verification ID of your verified custom domain name. If you don't provide an ID, you must configure the DNS settings yourself.
  /// [name] Name for the Resource Configuration.
  /// [portRanges] Port ranges to access the Resource either single port `80` or range `80-81` range.
  /// [protocol] Protocol for the Resource `TCP` is currently the only supported value.  MUST be specified if `resourceConfigurationGroupId` is not.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceConfigurationDefinition] Details of the Resource Configuration. See `resourceConfigurationDefinition` Block for details.
  /// [resourceConfigurationGroupId] ID of Resource Configuration where `type` is `CHILD`.
  /// [resourceGatewayIdentifier] ID of the Resource Gateway used to access the resource. MUST be specified if `resourceConfigurationGroupId` is not.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [type] Type of Resource Configuration. Must be one of `GROUP`, `CHILD`, `SINGLE`, `ARN`.
  const ResourceConfigurationArgs({
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
    return <String, dynamic>{
      'allowAssociationToShareableServiceNetwork': ?allowAssociationToShareableServiceNetwork,
      'customDomainName': ?customDomainName,
      'domainVerificationId': ?domainVerificationId,
      'name': ?name,
      'portRanges': ?portRanges,
      'protocol': ?protocol,
      'region': ?region,
      'resourceConfigurationDefinition': ?pulumi.Input.mapOptionalInputValue<ResourceConfigurationResourceConfigurationDefinition, Map<String, dynamic>>(resourceConfigurationDefinition, (value) => value.toMap()),
      'resourceConfigurationGroupId': ?resourceConfigurationGroupId,
      'resourceGatewayIdentifier': ?resourceGatewayIdentifier,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ResourceConfigurationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory ResourceConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ResourceConfigurationArgs(
      allowAssociationToShareableServiceNetwork: (() { final guardedValue = map['allowAssociationToShareableServiceNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      customDomainName: (() { final guardedValue = map['customDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainVerificationId: (() { final guardedValue = map['domainVerificationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portRanges: (() { final guardedValue = map['portRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceConfigurationDefinition: (() { final guardedValue = map['resourceConfigurationDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceConfigurationResourceConfigurationDefinition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceConfigurationGroupId: (() { final guardedValue = map['resourceConfigurationGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGatewayIdentifier: (() { final guardedValue = map['resourceGatewayIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceConfigurationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
