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
  /// Custom domain name for your resource configuration. Additionally, provide a `domain_verification_id` to prove your ownership of a domain.
  final pulumi.Input<String>? customDomainName;
  /// The domain verification ID of your verified custom domain name. If you don't provide an ID, you must configure the DNS settings yourself.
  final pulumi.Input<String>? domainVerificationId;
  /// Name for the Resource Configuration.
  final pulumi.Input<String>? name;
  /// Port ranges to access the Resource either single port `80` or range `80-81` range.
  final pulumi.Input<List<String>>? portRanges;
  /// Protocol for the Resource `TCP` is currently the only supported value.  MUST be specified if `resource_configuration_group_id` is not.
  final pulumi.Input<String>? protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Details of the Resource Configuration. See `resource_configuration_definition` Block for details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ResourceConfigurationResourceConfigurationDefinition>? resourceConfigurationDefinition;
  /// ID of Resource Configuration where `type` is `CHILD`.
  final pulumi.Input<String>? resourceConfigurationGroupId;
  /// ID of the Resource Gateway used to access the resource. MUST be specified if `resource_configuration_group_id` is not.
  final pulumi.Input<String>? resourceGatewayIdentifier;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<ResourceConfigurationTimeouts>? timeouts;
  /// Type of Resource Configuration. Must be one of `GROUP`, `CHILD`, `SINGLE`, `ARN`.
  final pulumi.Input<String>? type;

  /// Creates a new [ResourceConfigurationArgs].
  /// [allowAssociationToShareableServiceNetwork] Allow or Deny the association of this resource to a shareable service network.
  /// [customDomainName] Custom domain name for your resource configuration. Additionally, provide a `domain_verification_id` to prove your ownership of a domain.
  /// [domainVerificationId] The domain verification ID of your verified custom domain name. If you don't provide an ID, you must configure the DNS settings yourself.
  /// [name] Name for the Resource Configuration.
  /// [portRanges] Port ranges to access the Resource either single port `80` or range `80-81` range.
  /// [protocol] Protocol for the Resource `TCP` is currently the only supported value.  MUST be specified if `resource_configuration_group_id` is not.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceConfigurationDefinition] Details of the Resource Configuration. See `resource_configuration_definition` Block for details.
  /// [resourceConfigurationGroupId] ID of Resource Configuration where `type` is `CHILD`.
  /// [resourceGatewayIdentifier] ID of the Resource Gateway used to access the resource. MUST be specified if `resource_configuration_group_id` is not.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [type] Type of Resource Configuration. Must be one of `GROUP`, `CHILD`, `SINGLE`, `ARN`.
  ResourceConfigurationArgs({
    pulumi.Output<bool>? allowAssociationToShareableServiceNetwork,
    pulumi.Output<String>? customDomainName,
    pulumi.Output<String>? domainVerificationId,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? portRanges,
    pulumi.Output<String>? protocol,
    pulumi.Output<String>? region,
    pulumi.Output<ResourceConfigurationResourceConfigurationDefinition>? resourceConfigurationDefinition,
    pulumi.Output<String>? resourceConfigurationGroupId,
    pulumi.Output<String>? resourceGatewayIdentifier,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<ResourceConfigurationTimeouts>? timeouts,
    pulumi.Output<String>? type,
  }) :
      allowAssociationToShareableServiceNetwork = pulumi.Input.asOptionalInput<bool>(allowAssociationToShareableServiceNetwork),
      customDomainName = pulumi.Input.asOptionalInput<String>(customDomainName),
      domainVerificationId = pulumi.Input.asOptionalInput<String>(domainVerificationId),
      name = pulumi.Input.asOptionalInput<String>(name),
      portRanges = pulumi.Input.asOptionalInput<List<String>>(portRanges),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceConfigurationDefinition = pulumi.Input.asOptionalInput<ResourceConfigurationResourceConfigurationDefinition>(resourceConfigurationDefinition),
      resourceConfigurationGroupId = pulumi.Input.asOptionalInput<String>(resourceConfigurationGroupId),
      resourceGatewayIdentifier = pulumi.Input.asOptionalInput<String>(resourceGatewayIdentifier),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<ResourceConfigurationTimeouts>(timeouts),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      allowAssociationToShareableServiceNetwork: map['allowAssociationToShareableServiceNetwork'] == null ? null : pulumi.Output.create<bool>(map['allowAssociationToShareableServiceNetwork'] as bool),
      customDomainName: map['customDomainName'] == null ? null : pulumi.Output.create<String>(map['customDomainName'] as String),
      domainVerificationId: map['domainVerificationId'] == null ? null : pulumi.Output.create<String>(map['domainVerificationId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      portRanges: map['portRanges'] == null ? null : pulumi.Output.create<List<String>>((map['portRanges'] as List).cast<String>()),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceConfigurationDefinition: map['resourceConfigurationDefinition'] == null ? null : pulumi.Output.create<ResourceConfigurationResourceConfigurationDefinition>(ResourceConfigurationResourceConfigurationDefinition.fromMap((map['resourceConfigurationDefinition'] as Map).cast<String, dynamic>())),
      resourceConfigurationGroupId: map['resourceConfigurationGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceConfigurationGroupId'] as String),
      resourceGatewayIdentifier: map['resourceGatewayIdentifier'] == null ? null : pulumi.Output.create<String>(map['resourceGatewayIdentifier'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ResourceConfigurationTimeouts>(ResourceConfigurationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

