import 'package:pulumi/pulumi.dart';
import '../resource_configuration_resource_configuration_definition/resource_configuration_resource_configuration_definition.dart';
import '../resource_configuration_timeouts/resource_configuration_timeouts.dart';
import 'resource_configuration_args.dart';

/// Resource for managing an AWS VPC Lattice Resource Configuration.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### IP Address Example
///
///
///
/// ### With custom domain
///
///
///
/// ### ARN Example
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Resource Configuration using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/resourceConfiguration:ResourceConfiguration example rcfg-1234567890abcdef1
/// ```
class ResourceConfiguration extends CustomResource {
  /// Allow or Deny the association of this resource to a shareable service network.
  late final Output<bool> allowAssociationToShareableServiceNetwork;

  /// ARN of the resource gateway.
  late final Output<String> arn;

  /// Custom domain name for your resource configuration. Additionally, provide a `domain_verification_id` to prove your ownership of a domain.
  late final Output<String?> customDomainName;

  /// ARN of the domain verification.
  late final Output<String> domainVerificationArn;

  /// The domain verification ID of your verified custom domain name. If you don't provide an ID, you must configure the DNS settings yourself.
  late final Output<String> domainVerificationId;

  /// Domain verification status.
  late final Output<String> domainVerificationStatus;

  /// Name for the Resource Configuration.
  late final Output<String> name;

  /// Port ranges to access the Resource either single port `80` or range `80-81` range.
  late final Output<List<String>> portRanges;

  /// Protocol for the Resource `TCP` is currently the only supported value.  MUST be specified if `resource_configuration_group_id` is not.
  late final Output<String> protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Details of the Resource Configuration. See `resource_configuration_definition` Block for details.
  ///
  /// The following arguments are optional:
  late final Output<ResourceConfigurationResourceConfigurationDefinition?>
      resourceConfigurationDefinition;

  /// ID of Resource Configuration where `type` is `CHILD`.
  late final Output<String?> resourceConfigurationGroupId;

  /// ID of the Resource Gateway used to access the resource. MUST be specified if `resource_configuration_group_id` is not.
  late final Output<String> resourceGatewayIdentifier;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<ResourceConfigurationTimeouts?> timeouts;

  /// Type of Resource Configuration. Must be one of `GROUP`, `CHILD`, `SINGLE`, `ARN`.
  late final Output<String> type;

  ResourceConfiguration(
    String name, {
    ResourceConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/resourceConfiguration:ResourceConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowAssociationToShareableServiceNetwork =
        registerOutput<bool>('allowAssociationToShareableServiceNetwork');
    this.arn = registerOutput<String>('arn');
    this.customDomainName = registerOutput<String?>('customDomainName');
    this.domainVerificationArn =
        registerOutput<String>('domainVerificationArn');
    this.domainVerificationId = registerOutput<String>('domainVerificationId');
    this.domainVerificationStatus =
        registerOutput<String>('domainVerificationStatus');
    this.name = registerOutput<String>('name');
    this.portRanges = registerOutput<List<String>>('portRanges');
    this.protocol = registerOutput<String>('protocol');
    this.region = registerOutput<String>('region');
    this.resourceConfigurationDefinition =
        registerOutput<ResourceConfigurationResourceConfigurationDefinition?>(
            'resourceConfigurationDefinition');
    this.resourceConfigurationGroupId =
        registerOutput<String?>('resourceConfigurationGroupId');
    this.resourceGatewayIdentifier =
        registerOutput<String>('resourceGatewayIdentifier');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ResourceConfigurationTimeouts?>('timeouts');
    this.type = registerOutput<String>('type');
  }
}
