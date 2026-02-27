import 'package:pulumi/pulumi.dart' as pulumi;
import '../firewall_availability_zone_mapping/firewall_availability_zone_mapping.dart';
import '../firewall_encryption_configuration/firewall_encryption_configuration.dart';
import '../firewall_firewall_status/firewall_firewall_status.dart';
import '../firewall_subnet_mapping/firewall_subnet_mapping.dart';
import 'firewall_args.dart';

/// Provides an AWS Network Firewall Firewall Resource
///
/// ## Example Usage
///
///
///
/// ### Transit Gateway Attached Firewall
///
///
///
/// ### Transit Gateway Attached Firewall (Cross Account)
///
/// A full example of how to create a Transit Gateway in one AWS account, share it with a second AWS account, and create Network Firewall in the second account to the Transit Gateway via the `aws.networkfirewall.Firewall` and `aws_networkfirewall_network_firewall_transit_gateway_attachment_accepter` resources can be found in the `./examples/network-firewall-cross-account-transit-gateway` directory within the Github Repository
///
/// ## Import
///
/// Using `pulumi import`, import Network Firewall Firewalls using their `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:networkfirewall/firewall:Firewall example arn:aws:network-firewall:us-west-1:123456789012:firewall/example
/// ```
class Firewall extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) that identifies the firewall.
  late final pulumi.Output<String> arn;

  /// A setting indicating whether the firewall is protected against changes to its Availability Zone configuration. When set to `true`, you must first disable this protection before adding or removing Availability Zones.
  late final pulumi.Output<bool?> availabilityZoneChangeProtection;

  /// Required when creating a transit gateway-attached firewall. Set of configuration blocks describing the avaiability availability where you want to create firewall endpoints for a transit gateway-attached firewall.
  late final pulumi.Output<List<FirewallAvailabilityZoneMapping>>
      availabilityZoneMappings;

  /// A flag indicating whether the firewall is protected against deletion. Use this setting to protect against accidentally deleting a firewall that is in use. Defaults to `false`.
  late final pulumi.Output<bool?> deleteProtection;

  /// A friendly description of the firewall.
  late final pulumi.Output<String?> description;

  /// Set of types for which to collect analysis metrics. See [Reporting on network traffic in Network Firewall](https://docs.aws.amazon.com/network-firewall/latest/developerguide/reporting.html) for details on how to use the data. Valid values: `TLS_SNI`, `HTTP_HOST`. Defaults to `[]`.
  late final pulumi.Output<List<String>?> enabledAnalysisTypes;

  /// KMS encryption configuration settings. See Encryption Configuration below for details.
  late final pulumi.Output<FirewallEncryptionConfiguration?>
      encryptionConfiguration;

  /// The Amazon Resource Name (ARN) of the VPC Firewall policy.
  late final pulumi.Output<String> firewallPolicyArn;

  /// A flag indicating whether the firewall is protected against a change to the firewall policy association. Use this setting to protect against accidentally modifying the firewall policy for a firewall that is in use. Defaults to `false`.
  late final pulumi.Output<bool?> firewallPolicyChangeProtection;

  /// Nested list of information about the current status of the firewall.
  late final pulumi.Output<List<FirewallFirewallStatus>> firewallStatuses;

  /// A friendly name of the firewall.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A flag indicating whether the firewall is protected against changes to the subnet associations. Use this setting to protect against accidentally modifying the subnet associations for a firewall that is in use. Defaults to `false`.
  late final pulumi.Output<bool?> subnetChangeProtection;

  /// Required when creating a VPC attached firewall. Set of configuration blocks describing the public subnets. Each subnet must belong to a different Availability Zone in the VPC. AWS Network Firewall creates a firewall endpoint in each subnet. See Subnet Mapping below for details.
  late final pulumi.Output<List<FirewallSubnetMapping>?> subnetMappings;

  /// Map of resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// . Required when creating a transit gateway-attached firewall. The unique identifier of the transit gateway to attach to this firewall. You can provide either a transit gateway from your account or one that has been shared with you through AWS Resource Access Manager
  late final pulumi.Output<String?> transitGatewayId;

  /// The AWS account ID that owns the transit gateway.
  late final pulumi.Output<String> transitGatewayOwnerAccountId;

  /// A string token used when updating a firewall.
  late final pulumi.Output<String> updateToken;

  /// Required when creating a VPC attached firewall. The unique identifier of the VPC where AWS Network Firewall should create the firewall.
  late final pulumi.Output<String?> vpcId;

  Firewall(
    String name, {
    FirewallArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkfirewall/firewall:Firewall',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.availabilityZoneChangeProtection =
        registerOutput<bool?>('availabilityZoneChangeProtection');
    this.availabilityZoneMappings =
        registerOutput<List<FirewallAvailabilityZoneMapping>>(
            'availabilityZoneMappings');
    this.deleteProtection = registerOutput<bool?>('deleteProtection');
    this.description = registerOutput<String?>('description');
    this.enabledAnalysisTypes =
        registerOutput<List<String>?>('enabledAnalysisTypes');
    this.encryptionConfiguration =
        registerOutput<FirewallEncryptionConfiguration?>(
            'encryptionConfiguration');
    this.firewallPolicyArn = registerOutput<String>('firewallPolicyArn');
    this.firewallPolicyChangeProtection =
        registerOutput<bool?>('firewallPolicyChangeProtection');
    this.firewallStatuses =
        registerOutput<List<FirewallFirewallStatus>>('firewallStatuses');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.subnetChangeProtection =
        registerOutput<bool?>('subnetChangeProtection');
    this.subnetMappings =
        registerOutput<List<FirewallSubnetMapping>?>('subnetMappings');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitGatewayId = registerOutput<String?>('transitGatewayId');
    this.transitGatewayOwnerAccountId =
        registerOutput<String>('transitGatewayOwnerAccountId');
    this.updateToken = registerOutput<String>('updateToken');
    this.vpcId = registerOutput<String?>('vpcId');
  }
}
