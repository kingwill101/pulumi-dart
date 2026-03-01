import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_args.dart';

/// ## Import
///
/// VPN gateway can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpn/gateway:Gateway example <id>
/// ```
class Gateway extends pulumi.CustomResource {
  /// Whether to pay automatically. Default value: `true`. Valid values:
  late final pulumi.Output<bool?> autoPay;
  /// Whether to automatically propagate the BGP route to the VPC. Value:  true: Propagate automatically.  false: does not propagate automatically.
  late final pulumi.Output<bool?> autoPropagate;
  /// The Bandwidth specification of the VPN gateway. Unit: Mbps.  If you want to create a public VPN gateway, the value is 5, 10, 20, 50, 100, 200, 500, or 1000. If you want to create a private VPN gateway, the value is 200 or 1000.
  late final pulumi.Output<int> bandwidth;
  /// The business status of the VPN gateway.
  late final pulumi.Output<String> businessStatus;
  /// The time when the VPN gateway was created.
  late final pulumi.Output<int> createTime;
  /// The description of the VPN gateway.
  late final pulumi.Output<String?> description;
  /// The backup public IP address of the VPN gateway. The second IP address assigned by the system to create an IPsec-VPN connection. This parameter is returned only when the VPN gateway supports the dual-tunnel mode.
  late final pulumi.Output<String> disasterRecoveryInternetIp;
  /// The ID of the backup VSwitch to which the VPN gateway is attached.
  late final pulumi.Output<String> disasterRecoveryVswitchId;
  /// Enable or Disable IPSec VPN. At least one type of VPN should be enabled.
  late final pulumi.Output<bool?> enableIpsec;
  /// Enable or Disable SSL VPN.  At least one type of VPN should be enabled.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<bool?> enableSsl;
  /// . Field 'instance_charge_type' has been deprecated from provider version 1.216.0. New field 'payment_type' instead.
  late final pulumi.Output<String> instanceChargeType;
  /// The internet ip of the VPN.
  late final pulumi.Output<String> internetIp;
  /// . Field 'name' has been deprecated from provider version 1.216.0. New field 'vpn_gateway_name' instead.
  late final pulumi.Output<String> name;
  /// The network type of the VPN gateway. Value:  public (default): public VPN gateway. private: private network VPN gateway.
  late final pulumi.Output<String> networkType;
  /// Type of payment. Value: Subscription: prepaid PayAsYouGo: Post-paid.
  late final pulumi.Output<String> paymentType;
  /// The filed is only required while the InstanceChargeType is PrePaid. Valid values: [1-9, 12, 24, 36]. Default to 1.
  late final pulumi.Output<int?> period;
  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// Maximum number of clients.
  late final pulumi.Output<int> sslConnections;
  /// The IP address of the SSL-VPN connection. This parameter is returned only when the VPN gateway is a public VPN gateway and supports only the single-tunnel mode. In addition, the VPN gateway must have the SSL-VPN feature enabled.
  late final pulumi.Output<String> sslVpnInternetIp;
  /// The status of the resource.
  late final pulumi.Output<String> status;
  /// The Tag of.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of the VPC to which the VPN gateway belongs.
  late final pulumi.Output<String> vpcId;
  /// The name of the VPN gateway.
  late final pulumi.Output<String> vpnGatewayName;
  /// The VPN gateway type. Value:  Normal (default): Normal type. NationalStandard: National Secret type.
  late final pulumi.Output<String> vpnType;
  /// The ID of the VSwitch to which the VPN gateway is attached.
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [Gateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Gateway]. {@macro pulumi_vpn_gateway_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Gateway(
    String name, {
    GatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpn/gateway:Gateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoPay = registerOutput<bool?>('autoPay');
    this.autoPropagate = registerOutput<bool?>('autoPropagate');
    this.bandwidth = registerOutput<int>('bandwidth');
    this.businessStatus = registerOutput<String>('businessStatus');
    this.createTime = registerOutput<int>('createTime');
    this.description = registerOutput<String?>('description');
    this.disasterRecoveryInternetIp = registerOutput<String>('disasterRecoveryInternetIp');
    this.disasterRecoveryVswitchId = registerOutput<String>('disasterRecoveryVswitchId');
    this.enableIpsec = registerOutput<bool?>('enableIpsec');
    this.enableSsl = registerOutput<bool?>('enableSsl');
    this.instanceChargeType = registerOutput<String>('instanceChargeType');
    this.internetIp = registerOutput<String>('internetIp');
    this.name = registerOutput<String>('name');
    this.networkType = registerOutput<String>('networkType');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<int?>('period');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.sslConnections = registerOutput<int>('sslConnections');
    this.sslVpnInternetIp = registerOutput<String>('sslVpnInternetIp');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vpcId = registerOutput<String>('vpcId');
    this.vpnGatewayName = registerOutput<String>('vpnGatewayName');
    this.vpnType = registerOutput<String>('vpnType');
    this.vswitchId = registerOutput<String>('vswitchId');
  }
}
