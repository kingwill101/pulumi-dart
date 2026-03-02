// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_cen_tr_firewalls_firewall.dart';

/// Result data returned by getVpcCenTrFirewalls.
class GetVpcCenTrFirewallsResult {
  /// The ID of the CEN instance.
  final String? cenId;
  final int? currentPage;
  /// Firewall ID
  final String? firewallId;
  /// The name of Cloud Firewall.
  final String? firewallName;
  /// The status of the VPC boundary firewall. Value:-**opened**: opened-**closed**: closed-**notconfigured**: indicates that the VPC boundary firewall has not been configured yet.-**configured**: indicates that the VPC boundary firewall has been configured.-**creating**: indicates that a VPC boundary firewall is being created.-**opening**: indicates that the VPC border firewall is being enabled.-**deleting**: indicates that the VPC boundary firewall is being deleted.> If this parameter is not set, the VPC boundary firewall in all states is queried.
  final String? firewallSwitchStatus;
  /// A list of Vpc Cen Tr Firewall Entries. Each element contains the following attributes:
  final List<GetVpcCenTrFirewallsFirewall> firewalls;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Vpc Cen Tr Firewall IDs.
  final List<String> ids;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// The region ID of the transit router instance.
  final String? regionNo;
  /// The routing pattern. Value: managed: indicates automatic mode
  final String? routeMode;
  /// The ID of the transit router instance.
  final String? transitRouterId;

  /// Creates a new [GetVpcCenTrFirewallsResult].
  /// [cenId] The ID of the CEN instance.
  /// [currentPage] Optional.
  /// [firewallId] Firewall ID
  /// [firewallName] The name of Cloud Firewall.
  /// [firewallSwitchStatus] The status of the VPC boundary firewall. Value:-**opened**: opened-**closed**: closed-**notconfigured**: indicates that the VPC boundary firewall has not been configured yet.-**configured**: indicates that the VPC boundary firewall has been configured.-**creating**: indicates that a VPC boundary firewall is being created.-**opening**: indicates that the VPC border firewall is being enabled.-**deleting**: indicates that the VPC boundary firewall is being deleted.> If this parameter is not set, the VPC boundary firewall in all states is queried.
  /// [firewalls] A list of Vpc Cen Tr Firewall Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Vpc Cen Tr Firewall IDs.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [regionNo] The region ID of the transit router instance.
  /// [routeMode] The routing pattern. Value: managed: indicates automatic mode
  /// [transitRouterId] The ID of the transit router instance.
  GetVpcCenTrFirewallsResult({
    this.cenId,
    this.currentPage,
    this.firewallId,
    this.firewallName,
    this.firewallSwitchStatus,
    required this.firewalls,
    required this.id,
    required this.ids,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.regionNo,
    this.routeMode,
    this.transitRouterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': ?cenId,
      'currentPage': ?currentPage,
      'firewallId': ?firewallId,
      'firewallName': ?firewallName,
      'firewallSwitchStatus': ?firewallSwitchStatus,
      'firewalls': pulumi.Input.encodeList<GetVpcCenTrFirewallsFirewall, Map<String, dynamic>>(firewalls, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'regionNo': ?regionNo,
      'routeMode': ?routeMode,
      'transitRouterId': ?transitRouterId,
    };
  }

  factory GetVpcCenTrFirewallsResult.fromMap(Map<String, dynamic> map) {
    return GetVpcCenTrFirewallsResult(
      cenId: map['cenId'] == null ? null : map['cenId']! as String,
      currentPage: map['currentPage'] == null ? null : map['currentPage']! as int,
      firewallId: map['firewallId'] == null ? null : map['firewallId']! as String,
      firewallName: map['firewallName'] == null ? null : map['firewallName']! as String,
      firewallSwitchStatus: map['firewallSwitchStatus'] == null ? null : map['firewallSwitchStatus']! as String,
      firewalls: pulumi.Input.decodeList<GetVpcCenTrFirewallsFirewall>(map['firewalls'], (value) => GetVpcCenTrFirewallsFirewall.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber']! as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize']! as int,
      regionNo: map['regionNo'] == null ? null : map['regionNo']! as String,
      routeMode: map['routeMode'] == null ? null : map['routeMode']! as String,
      transitRouterId: map['transitRouterId'] == null ? null : map['transitRouterId']! as String,
    );
  }
}

