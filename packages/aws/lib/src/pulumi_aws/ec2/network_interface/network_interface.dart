import 'package:pulumi/pulumi.dart';
import '../network_interface_attachment/network_interface_attachment.dart';
import 'network_interface_args.dart';

/// Provides an Elastic network interface (ENI) resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ec2.NetworkInterface("test", {
/// subnetId: publicA.id,
/// privateIps: ["10.0.0.50"],
/// securityGroups: [web.id],
/// attachments: [{
/// instance: testAwsInstance.id,
/// deviceIndex: 1,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.NetworkInterface("test",
/// subnet_id=public_a["id"],
/// private_ips=["10.0.0.50"],
/// security_groups=[web["id"]],
/// attachments=[{
/// "instance": test_aws_instance["id"],
/// "device_index": 1,
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Ec2.NetworkInterface("test", new()
/// {
/// SubnetId = publicA.Id,
/// PrivateIps = new[]
/// {
/// "10.0.0.50",
/// },
/// SecurityGroups = new[]
/// {
/// web.Id,
/// },
/// Attachments = new[]
/// {
/// new Aws.Ec2.Inputs.NetworkInterfaceAttachmentArgs
/// {
/// Instance = testAwsInstance.Id,
/// DeviceIndex = 1,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.NewNetworkInterface(ctx, "test", &ec2.NetworkInterfaceArgs{
/// SubnetId: pulumi.Any(publicA.Id),
/// PrivateIps: pulumi.StringArray{
/// pulumi.String("10.0.0.50"),
/// },
/// SecurityGroups: pulumi.StringArray{
/// web.Id,
/// },
/// Attachments: ec2.NetworkInterfaceAttachmentTypeArray{
/// &ec2.NetworkInterfaceAttachmentTypeArgs{
/// Instance:    pulumi.Any(testAwsInstance.Id),
/// DeviceIndex: pulumi.Int(1),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.NetworkInterface;
/// import com.pulumi.aws.ec2.NetworkInterfaceArgs;
/// import com.pulumi.aws.ec2.inputs.NetworkInterfaceAttachmentArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new NetworkInterface("test", NetworkInterfaceArgs.builder()
/// .subnetId(publicA.id())
/// .privateIps("10.0.0.50")
/// .securityGroups(web.id())
/// .attachments(NetworkInterfaceAttachmentArgs.builder()
/// .instance(testAwsInstance.id())
/// .deviceIndex(1)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:ec2:NetworkInterface
/// properties:
/// subnetId: ${publicA.id}
/// privateIps:
/// - 10.0.0.50
/// securityGroups:
/// - ${web.id}
/// attachments:
/// - instance: ${testAwsInstance.id}
/// deviceIndex: 1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Example of Managing Multiple IPs on a Network Interface
///
/// By default, private IPs are managed through the <span pulumi-lang-nodejs="`privateIps`" pulumi-lang-dotnet="`PrivateIps`" pulumi-lang-go="`privateIps`" pulumi-lang-python="`private_ips`" pulumi-lang-yaml="`privateIps`" pulumi-lang-java="`privateIps`">`private_ips`</span> and <span pulumi-lang-nodejs="`privateIpsCount`" pulumi-lang-dotnet="`PrivateIpsCount`" pulumi-lang-go="`privateIpsCount`" pulumi-lang-python="`private_ips_count`" pulumi-lang-yaml="`privateIpsCount`" pulumi-lang-java="`privateIpsCount`">`private_ips_count`</span> arguments which manage IPs as a set of IPs that are configured without regard to order. For a new network interface, the same primary IP address is consistently selected from a given set of addresses, regardless of the order provided. However, modifications of the set of addresses of an existing interface will not alter the current primary IP address unless it has been removed from the set.
///
/// In order to manage the private IPs as a sequentially ordered list, configure <span pulumi-lang-nodejs="`privateIpListEnabled`" pulumi-lang-dotnet="`PrivateIpListEnabled`" pulumi-lang-go="`privateIpListEnabled`" pulumi-lang-python="`private_ip_list_enabled`" pulumi-lang-yaml="`privateIpListEnabled`" pulumi-lang-java="`privateIpListEnabled`">`private_ip_list_enabled`</span> to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> and use <span pulumi-lang-nodejs="`privateIpList`" pulumi-lang-dotnet="`PrivateIpList`" pulumi-lang-go="`privateIpList`" pulumi-lang-python="`private_ip_list`" pulumi-lang-yaml="`privateIpList`" pulumi-lang-java="`privateIpList`">`private_ip_list`</span> to manage the IPs. This will disable the <span pulumi-lang-nodejs="`privateIps`" pulumi-lang-dotnet="`PrivateIps`" pulumi-lang-go="`privateIps`" pulumi-lang-python="`private_ips`" pulumi-lang-yaml="`privateIps`" pulumi-lang-java="`privateIps`">`private_ips`</span> and <span pulumi-lang-nodejs="`privateIpsCount`" pulumi-lang-dotnet="`PrivateIpsCount`" pulumi-lang-go="`privateIpsCount`" pulumi-lang-python="`private_ips_count`" pulumi-lang-yaml="`privateIpsCount`" pulumi-lang-java="`privateIpsCount`">`private_ips_count`</span> settings, which must be removed from the config file but are still exported. Note that changing the first address of <span pulumi-lang-nodejs="`privateIpList`" pulumi-lang-dotnet="`PrivateIpList`" pulumi-lang-go="`privateIpList`" pulumi-lang-python="`private_ip_list`" pulumi-lang-yaml="`privateIpList`" pulumi-lang-java="`privateIpList`">`private_ip_list`</span>, which is the primary, always requires a new interface.
///
/// If you are managing a specific set or list of IPs, instead of just using <span pulumi-lang-nodejs="`privateIpsCount`" pulumi-lang-dotnet="`PrivateIpsCount`" pulumi-lang-go="`privateIpsCount`" pulumi-lang-python="`private_ips_count`" pulumi-lang-yaml="`privateIpsCount`" pulumi-lang-java="`privateIpsCount`">`private_ips_count`</span>, this is a potential workflow for also leveraging <span pulumi-lang-nodejs="`privateIpsCount`" pulumi-lang-dotnet="`PrivateIpsCount`" pulumi-lang-go="`privateIpsCount`" pulumi-lang-python="`private_ips_count`" pulumi-lang-yaml="`privateIpsCount`" pulumi-lang-java="`privateIpsCount`">`private_ips_count`</span> to have AWS automatically assign additional IP addresses:
///
/// 1. Comment out <span pulumi-lang-nodejs="`privateIps`" pulumi-lang-dotnet="`PrivateIps`" pulumi-lang-go="`privateIps`" pulumi-lang-python="`private_ips`" pulumi-lang-yaml="`privateIps`" pulumi-lang-java="`privateIps`">`private_ips`</span>, <span pulumi-lang-nodejs="`privateIpList`" pulumi-lang-dotnet="`PrivateIpList`" pulumi-lang-go="`privateIpList`" pulumi-lang-python="`private_ip_list`" pulumi-lang-yaml="`privateIpList`" pulumi-lang-java="`privateIpList`">`private_ip_list`</span>, <span pulumi-lang-nodejs="`privateIpListEnabled`" pulumi-lang-dotnet="`PrivateIpListEnabled`" pulumi-lang-go="`privateIpListEnabled`" pulumi-lang-python="`private_ip_list_enabled`" pulumi-lang-yaml="`privateIpListEnabled`" pulumi-lang-java="`privateIpListEnabled`">`private_ip_list_enabled`</span> in your configuration
/// 2. Set the desired <span pulumi-lang-nodejs="`privateIpsCount`" pulumi-lang-dotnet="`PrivateIpsCount`" pulumi-lang-go="`privateIpsCount`" pulumi-lang-python="`private_ips_count`" pulumi-lang-yaml="`privateIpsCount`" pulumi-lang-java="`privateIpsCount`">`private_ips_count`</span> (count of the number of secondaries, the primary is not included)
/// 3. Apply to assign the extra IPs
/// 4. Remove <span pulumi-lang-nodejs="`privateIpsCount`" pulumi-lang-dotnet="`PrivateIpsCount`" pulumi-lang-go="`privateIpsCount`" pulumi-lang-python="`private_ips_count`" pulumi-lang-yaml="`privateIpsCount`" pulumi-lang-java="`privateIpsCount`">`private_ips_count`</span> and restore your settings from the first step
/// 5. Add the new IPs to your current settings
/// 6. Apply again to update the stored state
///
/// This process can also be used to remove IP addresses in addition to the option of manually removing them. Adding IP addresses in a manually is more difficult because it requires knowledge of which addresses are available.
///
/// ## Import
///
/// Using `pulumi import`, import Network Interfaces using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/networkInterface:NetworkInterface test eni-e5aa89a3
/// ```
class NetworkInterface extends CustomResource {
  /// ARN of the network interface.
  late final Output<String> arn;

  /// Configuration block to define the attachment of the ENI. See Attachment below for more details!
  late final Output<List<NetworkInterfaceAttachment>> attachments;

  /// Description for the network interface.
  late final Output<String?> description;

  /// Enables assigning a primary IPv6 Global Unicast Address (GUA) to the network interface (ENI) in dual-stack or IPv6-only subnets. This ensures the instance attached to the ENI retains a consistent IPv6 address. Once enabled, the first IPv6 GUA becomes the primary IPv6 address and cannot be disabled. The primary IPv6 address remains assigned until the instance is terminated or the ENI is detached. Enabling and subsequent disabling forces recreation of the ENI.
  late final Output<bool> enablePrimaryIpv6;

  /// Type of network interface to create. Set to <span pulumi-lang-nodejs="`efa`" pulumi-lang-dotnet="`Efa`" pulumi-lang-go="`efa`" pulumi-lang-python="`efa`" pulumi-lang-yaml="`efa`" pulumi-lang-java="`efa`">`efa`</span> for Elastic Fabric Adapter. Changing <span pulumi-lang-nodejs="`interfaceType`" pulumi-lang-dotnet="`InterfaceType`" pulumi-lang-go="`interfaceType`" pulumi-lang-python="`interface_type`" pulumi-lang-yaml="`interfaceType`" pulumi-lang-java="`interfaceType`">`interface_type`</span> will cause the resource to be destroyed and re-created.
  late final Output<String> interfaceType;

  /// Number of IPv4 prefixes that AWS automatically assigns to the network interface.
  late final Output<int> ipv4PrefixCount;

  /// One or more IPv4 prefixes assigned to the network interface.
  late final Output<List<String>> ipv4Prefixes;

  /// Number of IPv6 addresses to assign to a network interface. You can't use this option if specifying specific <span pulumi-lang-nodejs="`ipv6Addresses`" pulumi-lang-dotnet="`Ipv6Addresses`" pulumi-lang-go="`ipv6Addresses`" pulumi-lang-python="`ipv6_addresses`" pulumi-lang-yaml="`ipv6Addresses`" pulumi-lang-java="`ipv6Addresses`">`ipv6_addresses`</span>. If your subnet has the AssignIpv6AddressOnCreation attribute set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, you can specify <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> to override this setting.
  late final Output<int> ipv6AddressCount;

  /// Whether <span pulumi-lang-nodejs="`ipv6AddressList`" pulumi-lang-dotnet="`Ipv6AddressList`" pulumi-lang-go="`ipv6AddressList`" pulumi-lang-python="`ipv6_address_list`" pulumi-lang-yaml="`ipv6AddressList`" pulumi-lang-java="`ipv6AddressList`">`ipv6_address_list`</span> is allowed and controls the IPs to assign to the ENI and <span pulumi-lang-nodejs="`ipv6Addresses`" pulumi-lang-dotnet="`Ipv6Addresses`" pulumi-lang-go="`ipv6Addresses`" pulumi-lang-python="`ipv6_addresses`" pulumi-lang-yaml="`ipv6Addresses`" pulumi-lang-java="`ipv6Addresses`">`ipv6_addresses`</span> and <span pulumi-lang-nodejs="`ipv6AddressCount`" pulumi-lang-dotnet="`Ipv6AddressCount`" pulumi-lang-go="`ipv6AddressCount`" pulumi-lang-python="`ipv6_address_count`" pulumi-lang-yaml="`ipv6AddressCount`" pulumi-lang-java="`ipv6AddressCount`">`ipv6_address_count`</span> become read-only. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> ipv6AddressListEnabled;

  /// List of private IPs to assign to the ENI in sequential order.
  late final Output<List<String>> ipv6AddressLists;

  /// One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet. Addresses are assigned without regard to order. You can't use this option if you're specifying <span pulumi-lang-nodejs="`ipv6AddressCount`" pulumi-lang-dotnet="`Ipv6AddressCount`" pulumi-lang-go="`ipv6AddressCount`" pulumi-lang-python="`ipv6_address_count`" pulumi-lang-yaml="`ipv6AddressCount`" pulumi-lang-java="`ipv6AddressCount`">`ipv6_address_count`</span>.
  late final Output<List<String>> ipv6Addresses;

  /// Number of IPv6 prefixes that AWS automatically assigns to the network interface.
  late final Output<int> ipv6PrefixCount;

  /// One or more IPv6 prefixes assigned to the network interface.
  late final Output<List<String>> ipv6Prefixes;

  /// MAC address of the network interface.
  late final Output<String> macAddress;
  late final Output<String> outpostArn;

  /// AWS account ID of the owner of the network interface.
  late final Output<String> ownerId;

  /// Private DNS name of the network interface (IPv4).
  late final Output<String> privateDnsName;
  late final Output<String> privateIp;

  /// Whether <span pulumi-lang-nodejs="`privateIpList`" pulumi-lang-dotnet="`PrivateIpList`" pulumi-lang-go="`privateIpList`" pulumi-lang-python="`private_ip_list`" pulumi-lang-yaml="`privateIpList`" pulumi-lang-java="`privateIpList`">`private_ip_list`</span> is allowed and controls the IPs to assign to the ENI and <span pulumi-lang-nodejs="`privateIps`" pulumi-lang-dotnet="`PrivateIps`" pulumi-lang-go="`privateIps`" pulumi-lang-python="`private_ips`" pulumi-lang-yaml="`privateIps`" pulumi-lang-java="`privateIps`">`private_ips`</span> and <span pulumi-lang-nodejs="`privateIpsCount`" pulumi-lang-dotnet="`PrivateIpsCount`" pulumi-lang-go="`privateIpsCount`" pulumi-lang-python="`private_ips_count`" pulumi-lang-yaml="`privateIpsCount`" pulumi-lang-java="`privateIpsCount`">`private_ips_count`</span> become read-only. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> privateIpListEnabled;

  /// List of private IPs to assign to the ENI in sequential order. Requires setting <span pulumi-lang-nodejs="`privateIpListEnabled`" pulumi-lang-dotnet="`PrivateIpListEnabled`" pulumi-lang-go="`privateIpListEnabled`" pulumi-lang-python="`private_ip_list_enabled`" pulumi-lang-yaml="`privateIpListEnabled`" pulumi-lang-java="`privateIpListEnabled`">`private_ip_list_enabled`</span> to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<List<String>> privateIpLists;

  /// List of private IPs to assign to the ENI without regard to order.
  late final Output<List<String>> privateIps;

  /// Number of secondary private IPs to assign to the ENI. The total number of private IPs will be 1 + <span pulumi-lang-nodejs="`privateIpsCount`" pulumi-lang-dotnet="`PrivateIpsCount`" pulumi-lang-go="`privateIpsCount`" pulumi-lang-python="`private_ips_count`" pulumi-lang-yaml="`privateIpsCount`" pulumi-lang-java="`privateIpsCount`">`private_ips_count`</span>, as a primary private IP will be assiged to an ENI by default.
  late final Output<int> privateIpsCount;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// List of security group IDs to assign to the ENI.
  late final Output<List<String>> securityGroups;

  /// Whether to enable source destination checking for the ENI. Default true.
  late final Output<bool?> sourceDestCheck;

  /// Subnet ID to create the ENI in.
  ///
  /// The following arguments are optional:
  late final Output<String> subnetId;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  NetworkInterface(
    String name, {
    NetworkInterfaceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/networkInterface:NetworkInterface',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.attachments =
        registerOutput<List<NetworkInterfaceAttachment>>('attachments');
    this.description = registerOutput<String?>('description');
    this.enablePrimaryIpv6 = registerOutput<bool>('enablePrimaryIpv6');
    this.interfaceType = registerOutput<String>('interfaceType');
    this.ipv4PrefixCount = registerOutput<int>('ipv4PrefixCount');
    this.ipv4Prefixes = registerOutput<List<String>>('ipv4Prefixes');
    this.ipv6AddressCount = registerOutput<int>('ipv6AddressCount');
    this.ipv6AddressListEnabled =
        registerOutput<bool?>('ipv6AddressListEnabled');
    this.ipv6AddressLists = registerOutput<List<String>>('ipv6AddressLists');
    this.ipv6Addresses = registerOutput<List<String>>('ipv6Addresses');
    this.ipv6PrefixCount = registerOutput<int>('ipv6PrefixCount');
    this.ipv6Prefixes = registerOutput<List<String>>('ipv6Prefixes');
    this.macAddress = registerOutput<String>('macAddress');
    this.outpostArn = registerOutput<String>('outpostArn');
    this.ownerId = registerOutput<String>('ownerId');
    this.privateDnsName = registerOutput<String>('privateDnsName');
    this.privateIp = registerOutput<String>('privateIp');
    this.privateIpListEnabled = registerOutput<bool?>('privateIpListEnabled');
    this.privateIpLists = registerOutput<List<String>>('privateIpLists');
    this.privateIps = registerOutput<List<String>>('privateIps');
    this.privateIpsCount = registerOutput<int>('privateIpsCount');
    this.region = registerOutput<String>('region');
    this.securityGroups = registerOutput<List<String>>('securityGroups');
    this.sourceDestCheck = registerOutput<bool?>('sourceDestCheck');
    this.subnetId = registerOutput<String>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
