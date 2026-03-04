// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_cen_tr_firewalls_firewall_ips_config.dart';

class GetVpcCenTrFirewallsFirewall {
  /// The ID of the CEN instance.
  final pulumi.Input<String> cenId;

  /// The name of the CEN instance.
  final pulumi.Input<String> cenName;

  /// Firewall ID
  final pulumi.Input<String> firewallId;

  /// The name of Cloud Firewall.
  final pulumi.Input<String> firewallName;

  /// The status of the VPC boundary firewall. Value:-**opened**: opened-**closed**: closed-**notconfigured**: indicates that the VPC boundary firewall has not been configured yet.-**configured**: indicates that the VPC boundary firewall has been configured.-**creating**: indicates that a VPC boundary firewall is being created.-**opening**: indicates that the VPC border firewall is being enabled.-**deleting**: indicates that the VPC boundary firewall is being deleted.&gt; If this parameter is not set, the VPC boundary firewall in all states is queried.
  final pulumi.Input<String> firewallSwitchStatus;

  /// The ID of the resource supplied above.
  final pulumi.Input<String> id;

  /// IPS configuration information.
  final pulumi.Input<GetVpcCenTrFirewallsFirewallIpsConfig> ipsConfig;

  /// Whether the wall can be opened automatically. Value:-**passed**: can automatically open the wall-**failed**: The wall cannot be opened automatically-**unknown**: unknown status
  final pulumi.Input<String> precheckStatus;

  /// The region ID of the transit router instance.
  final pulumi.Input<String> regionNo;

  /// Geographically open. Value:-**enable**: enabled, indicating that the VPC border firewall can be configured for the region.-**disable**: Not enabled, indicating that the VPC boundary firewall is not allowed for the region.
  final pulumi.Input<String> regionStatus;

  /// The operation result code of creating the VPC boundary firewall. Value:-**RegionDisable**: indicates that the region where the network instance is located is not supported by the VPC border firewall. You cannot create a VPC border firewall.-**Empty string**, indicating that the network instance can create a VPC firewall.
  final pulumi.Input<String> resultCode;

  /// The routing pattern. Value: managed: indicates automatic mode
  final pulumi.Input<String> routeMode;

  /// The ID of the transit router instance.
  final pulumi.Input<String> transitRouterId;

  /// Creates a new [GetVpcCenTrFirewallsFirewall].
  /// [cenId] The ID of the CEN instance.
  /// [cenName] The name of the CEN instance.
  /// [firewallId] Firewall ID
  /// [firewallName] The name of Cloud Firewall.
  /// [firewallSwitchStatus] The status of the VPC boundary firewall. Value:-**opened**: opened-**closed**: closed-**notconfigured**: indicates that the VPC boundary firewall has not been configured yet.-**configured**: indicates that the VPC boundary firewall has been configured.-**creating**: indicates that a VPC boundary firewall is being created.-**opening**: indicates that the VPC border firewall is being enabled.-**deleting**: indicates that the VPC boundary firewall is being deleted.&gt; If this parameter is not set, the VPC boundary firewall in all states is queried.
  /// [id] The ID of the resource supplied above.
  /// [ipsConfig] IPS configuration information.
  /// [precheckStatus] Whether the wall can be opened automatically. Value:-**passed**: can automatically open the wall-**failed**: The wall cannot be opened automatically-**unknown**: unknown status
  /// [regionNo] The region ID of the transit router instance.
  /// [regionStatus] Geographically open. Value:-**enable**: enabled, indicating that the VPC border firewall can be configured for the region.-**disable**: Not enabled, indicating that the VPC boundary firewall is not allowed for the region.
  /// [resultCode] The operation result code of creating the VPC boundary firewall. Value:-**RegionDisable**: indicates that the region where the network instance is located is not supported by the VPC border firewall. You cannot create a VPC border firewall.-**Empty string**, indicating that the network instance can create a VPC firewall.
  /// [routeMode] The routing pattern. Value: managed: indicates automatic mode
  /// [transitRouterId] The ID of the transit router instance.
  GetVpcCenTrFirewallsFirewall({
    required this.cenId,
    required this.cenName,
    required this.firewallId,
    required this.firewallName,
    required this.firewallSwitchStatus,
    required this.id,
    required this.ipsConfig,
    required this.precheckStatus,
    required this.regionNo,
    required this.regionStatus,
    required this.resultCode,
    required this.routeMode,
    required this.transitRouterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': cenId,
      'cenName': cenName,
      'firewallId': firewallId,
      'firewallName': firewallName,
      'firewallSwitchStatus': firewallSwitchStatus,
      'id': id,
      'ipsConfig':
          pulumi.Input.mapInputValue<
            GetVpcCenTrFirewallsFirewallIpsConfig,
            Map<String, dynamic>
          >(ipsConfig, (value) => value.toMap()),
      'precheckStatus': precheckStatus,
      'regionNo': regionNo,
      'regionStatus': regionStatus,
      'resultCode': resultCode,
      'routeMode': routeMode,
      'transitRouterId': transitRouterId,
    };
  }

  factory GetVpcCenTrFirewallsFirewall.fromMap(Map<String, dynamic> map) {
    return GetVpcCenTrFirewallsFirewall(
      cenId: pulumi.Input.fromValue(map['cenId'] as String),
      cenName: pulumi.Input.fromValue(map['cenName'] as String),
      firewallId: pulumi.Input.fromValue(map['firewallId'] as String),
      firewallName: pulumi.Input.fromValue(map['firewallName'] as String),
      firewallSwitchStatus: pulumi.Input.fromValue(
        map['firewallSwitchStatus'] as String,
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      ipsConfig: pulumi.Input.fromValue(
        GetVpcCenTrFirewallsFirewallIpsConfig.fromMap(
          (map['ipsConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      precheckStatus: pulumi.Input.fromValue(map['precheckStatus'] as String),
      regionNo: pulumi.Input.fromValue(map['regionNo'] as String),
      regionStatus: pulumi.Input.fromValue(map['regionStatus'] as String),
      resultCode: pulumi.Input.fromValue(map['resultCode'] as String),
      routeMode: pulumi.Input.fromValue(map['routeMode'] as String),
      transitRouterId: pulumi.Input.fromValue(map['transitRouterId'] as String),
    );
  }
}
