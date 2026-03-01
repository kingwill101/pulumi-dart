// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_configuration_resource_configuration_definition.dart';
import 'resource_configuration_timeouts.dart';

/// Input properties used for looking up and filtering ResourceConfiguration resources.
class ResourceConfigurationState {
  /// Allow or Deny the association of this resource to a shareable service network.
  final pulumi.Input<bool>? allowAssociationToShareableServiceNetwork;
  /// ARN of the resource gateway.
  final pulumi.Input<String>? arn;
  /// Custom domain name for your resource configuration. Additionally, provide a `domain_verification_id` to prove your ownership of a domain.
  final pulumi.Input<String>? customDomainName;
  /// ARN of the domain verification.
  final pulumi.Input<String>? domainVerificationArn;
  /// The domain verification ID of your verified custom domain name. If you don't provide an ID, you must configure the DNS settings yourself.
  final pulumi.Input<String>? domainVerificationId;
  /// Domain verification status.
  final pulumi.Input<String>? domainVerificationStatus;
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
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<ResourceConfigurationTimeouts>? timeouts;
  /// Type of Resource Configuration. Must be one of `GROUP`, `CHILD`, `SINGLE`, `ARN`.
  final pulumi.Input<String>? type;

  /// Creates a new [ResourceConfigurationState].
  /// [allowAssociationToShareableServiceNetwork] Allow or Deny the association of this resource to a shareable service network.
  /// [arn] ARN of the resource gateway.
  /// [customDomainName] Custom domain name for your resource configuration. Additionally, provide a `domain_verification_id` to prove your ownership of a domain.
  /// [domainVerificationArn] ARN of the domain verification.
  /// [domainVerificationId] The domain verification ID of your verified custom domain name. If you don't provide an ID, you must configure the DNS settings yourself.
  /// [domainVerificationStatus] Domain verification status.
  /// [name] Name for the Resource Configuration.
  /// [portRanges] Port ranges to access the Resource either single port `80` or range `80-81` range.
  /// [protocol] Protocol for the Resource `TCP` is currently the only supported value.  MUST be specified if `resource_configuration_group_id` is not.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceConfigurationDefinition] Details of the Resource Configuration. See `resource_configuration_definition` Block for details.
  /// [resourceConfigurationGroupId] ID of Resource Configuration where `type` is `CHILD`.
  /// [resourceGatewayIdentifier] ID of the Resource Gateway used to access the resource. MUST be specified if `resource_configuration_group_id` is not.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [type] Type of Resource Configuration. Must be one of `GROUP`, `CHILD`, `SINGLE`, `ARN`.
  ResourceConfigurationState({
    pulumi.Output<bool>? allowAssociationToShareableServiceNetwork,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? customDomainName,
    pulumi.Output<String>? domainVerificationArn,
    pulumi.Output<String>? domainVerificationId,
    pulumi.Output<String>? domainVerificationStatus,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? portRanges,
    pulumi.Output<String>? protocol,
    pulumi.Output<String>? region,
    pulumi.Output<ResourceConfigurationResourceConfigurationDefinition>? resourceConfigurationDefinition,
    pulumi.Output<String>? resourceConfigurationGroupId,
    pulumi.Output<String>? resourceGatewayIdentifier,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<ResourceConfigurationTimeouts>? timeouts,
    pulumi.Output<String>? type,
  }) :
      allowAssociationToShareableServiceNetwork = pulumi.Input.asOptionalInput<bool>(allowAssociationToShareableServiceNetwork),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      customDomainName = pulumi.Input.asOptionalInput<String>(customDomainName),
      domainVerificationArn = pulumi.Input.asOptionalInput<String>(domainVerificationArn),
      domainVerificationId = pulumi.Input.asOptionalInput<String>(domainVerificationId),
      domainVerificationStatus = pulumi.Input.asOptionalInput<String>(domainVerificationStatus),
      name = pulumi.Input.asOptionalInput<String>(name),
      portRanges = pulumi.Input.asOptionalInput<List<String>>(portRanges),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceConfigurationDefinition = pulumi.Input.asOptionalInput<ResourceConfigurationResourceConfigurationDefinition>(resourceConfigurationDefinition),
      resourceConfigurationGroupId = pulumi.Input.asOptionalInput<String>(resourceConfigurationGroupId),
      resourceGatewayIdentifier = pulumi.Input.asOptionalInput<String>(resourceGatewayIdentifier),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<ResourceConfigurationTimeouts>(timeouts),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAssociationToShareableServiceNetwork': ?allowAssociationToShareableServiceNetwork,
      'arn': ?arn,
      'customDomainName': ?customDomainName,
      'domainVerificationArn': ?domainVerificationArn,
      'domainVerificationId': ?domainVerificationId,
      'domainVerificationStatus': ?domainVerificationStatus,
      'name': ?name,
      'portRanges': ?portRanges,
      'protocol': ?protocol,
      'region': ?region,
      'resourceConfigurationDefinition': ?pulumi.Input.mapOptionalInputValue<ResourceConfigurationResourceConfigurationDefinition, Map<String, dynamic>>(resourceConfigurationDefinition, (value) => value.toMap()),
      'resourceConfigurationGroupId': ?resourceConfigurationGroupId,
      'resourceGatewayIdentifier': ?resourceGatewayIdentifier,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ResourceConfigurationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory ResourceConfigurationState.fromMap(Map<String, dynamic> map) {
    return ResourceConfigurationState(
      allowAssociationToShareableServiceNetwork: map['allowAssociationToShareableServiceNetwork'] == null ? null : pulumi.Output.create<bool>(map['allowAssociationToShareableServiceNetwork'] as bool),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      customDomainName: map['customDomainName'] == null ? null : pulumi.Output.create<String>(map['customDomainName'] as String),
      domainVerificationArn: map['domainVerificationArn'] == null ? null : pulumi.Output.create<String>(map['domainVerificationArn'] as String),
      domainVerificationId: map['domainVerificationId'] == null ? null : pulumi.Output.create<String>(map['domainVerificationId'] as String),
      domainVerificationStatus: map['domainVerificationStatus'] == null ? null : pulumi.Output.create<String>(map['domainVerificationStatus'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      portRanges: map['portRanges'] == null ? null : pulumi.Output.create<List<String>>((map['portRanges'] as List).cast<String>()),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceConfigurationDefinition: map['resourceConfigurationDefinition'] == null ? null : pulumi.Output.create<ResourceConfigurationResourceConfigurationDefinition>(ResourceConfigurationResourceConfigurationDefinition.fromMap((map['resourceConfigurationDefinition'] as Map).cast<String, dynamic>())),
      resourceConfigurationGroupId: map['resourceConfigurationGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceConfigurationGroupId'] as String),
      resourceGatewayIdentifier: map['resourceGatewayIdentifier'] == null ? null : pulumi.Output.create<String>(map['resourceGatewayIdentifier'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ResourceConfigurationTimeouts>(ResourceConfigurationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

