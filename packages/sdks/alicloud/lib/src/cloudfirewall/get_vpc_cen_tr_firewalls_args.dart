// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfirewall_get_vpc_cen_tr_firewalls_get_vpc_cen_tr_firewalls_args_doc}
/// Arguments for getVpcCenTrFirewalls.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_get_vpc_cen_tr_firewalls_get_vpc_cen_tr_firewalls_args_doc}
class GetVpcCenTrFirewallsArgs {
  /// The ID of the CEN instance.
  final pulumi.Input<String>? cenId;
  /// The page number of the pagination query. The default value is 1.
  final pulumi.Input<int>? currentPage;
  /// Firewall ID
  final pulumi.Input<String>? firewallId;
  /// The name of Cloud Firewall.
  final pulumi.Input<String>? firewallName;
  /// The status of the VPC boundary firewall. Value:-**opened**: opened-**closed**: closed-**notconfigured**: indicates that the VPC boundary firewall has not been configured yet.-**configured**: indicates that the VPC boundary firewall has been configured.-**creating**: indicates that a VPC boundary firewall is being created.-**opening**: indicates that the VPC border firewall is being enabled.-**deleting**: indicates that the VPC boundary firewall is being deleted.&gt; If this parameter is not set, the VPC boundary firewall in all states is queried.
  final pulumi.Input<String>? firewallSwitchStatus;
  /// A list of Vpc Cen Tr Firewall IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Current page number.
  final pulumi.Input<int>? pageNumber;
  /// The maximum number of pieces of data per page that are displayed during a paged query. The default value is 10.
  final pulumi.Input<int>? pageSize;
  /// The region ID of the transit router instance.
  final pulumi.Input<String>? regionNo;
  /// The routing pattern. Value: managed: indicates automatic mode
  final pulumi.Input<String>? routeMode;
  /// The ID of the transit router instance.
  final pulumi.Input<String>? transitRouterId;

  /// Creates a new [GetVpcCenTrFirewallsArgs].
  /// [cenId] The ID of the CEN instance.
  /// [currentPage] The page number of the pagination query. The default value is 1.
  /// [firewallId] Firewall ID
  /// [firewallName] The name of Cloud Firewall.
  /// [firewallSwitchStatus] The status of the VPC boundary firewall. Value:-**opened**: opened-**closed**: closed-**notconfigured**: indicates that the VPC boundary firewall has not been configured yet.-**configured**: indicates that the VPC boundary firewall has been configured.-**creating**: indicates that a VPC boundary firewall is being created.-**opening**: indicates that the VPC border firewall is being enabled.-**deleting**: indicates that the VPC boundary firewall is being deleted.&gt; If this parameter is not set, the VPC boundary firewall in all states is queried.
  /// [ids] A list of Vpc Cen Tr Firewall IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Current page number.
  /// [pageSize] The maximum number of pieces of data per page that are displayed during a paged query. The default value is 10.
  /// [regionNo] The region ID of the transit router instance.
  /// [routeMode] The routing pattern. Value: managed: indicates automatic mode
  /// [transitRouterId] The ID of the transit router instance.
  const GetVpcCenTrFirewallsArgs({
    this.cenId,
    this.currentPage,
    this.firewallId,
    this.firewallName,
    this.firewallSwitchStatus,
    this.ids,
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
      'ids': ?ids,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'regionNo': ?regionNo,
      'routeMode': ?routeMode,
      'transitRouterId': ?transitRouterId,
    };
  }

  factory GetVpcCenTrFirewallsArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcCenTrFirewallsArgs(
      cenId: (() { final guardedValue = map['cenId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      currentPage: (() { final guardedValue = map['currentPage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      firewallId: (() { final guardedValue = map['firewallId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallName: (() { final guardedValue = map['firewallName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallSwitchStatus: (() { final guardedValue = map['firewallSwitchStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      regionNo: (() { final guardedValue = map['regionNo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeMode: (() { final guardedValue = map['routeMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterId: (() { final guardedValue = map['transitRouterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

