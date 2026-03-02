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
    this.allowAssociationToShareableServiceNetwork,
    this.arn,
    this.customDomainName,
    this.domainVerificationArn,
    this.domainVerificationId,
    this.domainVerificationStatus,
    this.name,
    this.portRanges,
    this.protocol,
    this.region,
    this.resourceConfigurationDefinition,
    this.resourceConfigurationGroupId,
    this.resourceGatewayIdentifier,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.type,
  });

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
      allowAssociationToShareableServiceNetwork: map['allowAssociationToShareableServiceNetwork'] == null ? null : ((map['allowAssociationToShareableServiceNetwork'] as bool).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      customDomainName: map['customDomainName'] == null ? null : ((map['customDomainName'] as String).input()).input(),
      domainVerificationArn: map['domainVerificationArn'] == null ? null : ((map['domainVerificationArn'] as String).input()).input(),
      domainVerificationId: map['domainVerificationId'] == null ? null : ((map['domainVerificationId'] as String).input()).input(),
      domainVerificationStatus: map['domainVerificationStatus'] == null ? null : ((map['domainVerificationStatus'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      portRanges: map['portRanges'] == null ? null : (((map['portRanges'] as List).cast<String>()).input()).input(),
      protocol: map['protocol'] == null ? null : ((map['protocol'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceConfigurationDefinition: map['resourceConfigurationDefinition'] == null ? null : ((ResourceConfigurationResourceConfigurationDefinition.fromMap((map['resourceConfigurationDefinition']! as Map).cast<String, dynamic>())).input()).input(),
      resourceConfigurationGroupId: map['resourceConfigurationGroupId'] == null ? null : ((map['resourceConfigurationGroupId'] as String).input()).input(),
      resourceGatewayIdentifier: map['resourceGatewayIdentifier'] == null ? null : ((map['resourceGatewayIdentifier'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((ResourceConfigurationTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
      type: map['type'] == null ? null : ((map['type'] as String).input()).input(),
    );
  }
}

