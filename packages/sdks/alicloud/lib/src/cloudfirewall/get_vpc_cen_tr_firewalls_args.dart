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
  /// The status of the VPC boundary firewall. Value:-**opened**: opened-**closed**: closed-**notconfigured**: indicates that the VPC boundary firewall has not been configured yet.-**configured**: indicates that the VPC boundary firewall has been configured.-**creating**: indicates that a VPC boundary firewall is being created.-**opening**: indicates that the VPC border firewall is being enabled.-**deleting**: indicates that the VPC boundary firewall is being deleted.> If this parameter is not set, the VPC boundary firewall in all states is queried.
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
  /// [firewallSwitchStatus] The status of the VPC boundary firewall. Value:-**opened**: opened-**closed**: closed-**notconfigured**: indicates that the VPC boundary firewall has not been configured yet.-**configured**: indicates that the VPC boundary firewall has been configured.-**creating**: indicates that a VPC boundary firewall is being created.-**opening**: indicates that the VPC border firewall is being enabled.-**deleting**: indicates that the VPC boundary firewall is being deleted.> If this parameter is not set, the VPC boundary firewall in all states is queried.
  /// [ids] A list of Vpc Cen Tr Firewall IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Current page number.
  /// [pageSize] The maximum number of pieces of data per page that are displayed during a paged query. The default value is 10.
  /// [regionNo] The region ID of the transit router instance.
  /// [routeMode] The routing pattern. Value: managed: indicates automatic mode
  /// [transitRouterId] The ID of the transit router instance.
  GetVpcCenTrFirewallsArgs({
    pulumi.Output<String>? cenId,
    pulumi.Output<int>? currentPage,
    pulumi.Output<String>? firewallId,
    pulumi.Output<String>? firewallName,
    pulumi.Output<String>? firewallSwitchStatus,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<String>? regionNo,
    pulumi.Output<String>? routeMode,
    pulumi.Output<String>? transitRouterId,
  }) :
      cenId = pulumi.Input.asOptionalInput<String>(cenId),
      currentPage = pulumi.Input.asOptionalInput<int>(currentPage),
      firewallId = pulumi.Input.asOptionalInput<String>(firewallId),
      firewallName = pulumi.Input.asOptionalInput<String>(firewallName),
      firewallSwitchStatus = pulumi.Input.asOptionalInput<String>(firewallSwitchStatus),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      regionNo = pulumi.Input.asOptionalInput<String>(regionNo),
      routeMode = pulumi.Input.asOptionalInput<String>(routeMode),
      transitRouterId = pulumi.Input.asOptionalInput<String>(transitRouterId);

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
      cenId: map['cenId'] == null ? null : pulumi.Output.create<String>(map['cenId'] as String),
      currentPage: map['currentPage'] == null ? null : pulumi.Output.create<int>(map['currentPage'] as int),
      firewallId: map['firewallId'] == null ? null : pulumi.Output.create<String>(map['firewallId'] as String),
      firewallName: map['firewallName'] == null ? null : pulumi.Output.create<String>(map['firewallName'] as String),
      firewallSwitchStatus: map['firewallSwitchStatus'] == null ? null : pulumi.Output.create<String>(map['firewallSwitchStatus'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      regionNo: map['regionNo'] == null ? null : pulumi.Output.create<String>(map['regionNo'] as String),
      routeMode: map['routeMode'] == null ? null : pulumi.Output.create<String>(map['routeMode'] as String),
      transitRouterId: map['transitRouterId'] == null ? null : pulumi.Output.create<String>(map['transitRouterId'] as String),
    );
  }
}

