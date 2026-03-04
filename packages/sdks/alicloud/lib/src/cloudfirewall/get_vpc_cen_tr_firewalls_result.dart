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

  /// The status of the VPC boundary firewall. Value:-**opened**: opened-**closed**: closed-**notconfigured**: indicates that the VPC boundary firewall has not been configured yet.-**configured**: indicates that the VPC boundary firewall has been configured.-**creating**: indicates that a VPC boundary firewall is being created.-**opening**: indicates that the VPC border firewall is being enabled.-**deleting**: indicates that the VPC boundary firewall is being deleted.&gt; If this parameter is not set, the VPC boundary firewall in all states is queried.
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
  /// [firewallSwitchStatus] The status of the VPC boundary firewall. Value:-**opened**: opened-**closed**: closed-**notconfigured**: indicates that the VPC boundary firewall has not been configured yet.-**configured**: indicates that the VPC boundary firewall has been configured.-**creating**: indicates that a VPC boundary firewall is being created.-**opening**: indicates that the VPC border firewall is being enabled.-**deleting**: indicates that the VPC boundary firewall is being deleted.&gt; If this parameter is not set, the VPC boundary firewall in all states is queried.
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
      'firewalls':
          pulumi.Input.encodeList<
            GetVpcCenTrFirewallsFirewall,
            Map<String, dynamic>
          >(firewalls, (value) => value.toMap()),
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
      cenId: (() {
        final guardedValue = map['cenId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      currentPage: (() {
        final guardedValue = map['currentPage'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      firewallId: (() {
        final guardedValue = map['firewallId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      firewallName: (() {
        final guardedValue = map['firewallName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      firewallSwitchStatus: (() {
        final guardedValue = map['firewallSwitchStatus'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      firewalls: pulumi.Input.decodeList<GetVpcCenTrFirewallsFirewall>(
        map['firewalls']!,
        (value) => GetVpcCenTrFirewallsFirewall.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      pageNumber: (() {
        final guardedValue = map['pageNumber'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      pageSize: (() {
        final guardedValue = map['pageSize'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      regionNo: (() {
        final guardedValue = map['regionNo'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      routeMode: (() {
        final guardedValue = map['routeMode'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      transitRouterId: (() {
        final guardedValue = map['transitRouterId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
