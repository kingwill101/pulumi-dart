// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_expressconnect_get_virtual_physical_connections_get_virtual_physical_connections_args_doc}
/// Arguments for getVirtualPhysicalConnections.
/// {@endtemplate}
/// {@macro pulumi_expressconnect_get_virtual_physical_connections_get_virtual_physical_connections_args_doc}
class GetVirtualPhysicalConnectionsArgs {
  /// The commercial status of the physical line. Value:
  /// - **Normal**: activated.
  /// - **Financialized**: Arrears locked.
  /// - **SecurityLocked**: locked for security reasons.
  final pulumi.Input<String>? businessStatus;
  /// A list of Virtual Physical Connection IDs.
  final pulumi.Input<List<String>>? ids;
  final pulumi.Input<bool>? isConfirmed;
  /// A regex string to filter results by Group Metric Rule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the instance of the physical connection.
  final pulumi.Input<String>? parentPhysicalConnectionId;
  /// The ID of the hosted connection. You can specify multiple hosted connection IDs.
  final pulumi.Input<List<String>>? virtualPhysicalConnectionIds;
  /// The business status of the shared line. Value:
  /// - **Confirmed**: The shared line has been Confirmed to receive.
  /// - **UnConfirmed**: The shared line has not been confirmed to be received.
  /// - **Deleted**: The shared line has been Deleted.
  final pulumi.Input<String>? virtualPhysicalConnectionStatus;
  /// The VLAN ID of the hosted connection. You can specify multiple VLAN IDs.
  final pulumi.Input<List<int>>? vlanIds;
  /// The ID of the Alibaba Cloud account (primary account) of the owner of the shared line.
  final pulumi.Input<String>? vpconnAliUid;

  /// Creates a new [GetVirtualPhysicalConnectionsArgs].
  /// [businessStatus] The commercial status of the physical line. Value:
  /// [ids] A list of Virtual Physical Connection IDs.
  /// [isConfirmed] Optional.
  /// [nameRegex] A regex string to filter results by Group Metric Rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [parentPhysicalConnectionId] The ID of the instance of the physical connection.
  /// [virtualPhysicalConnectionIds] The ID of the hosted connection. You can specify multiple hosted connection IDs.
  /// [virtualPhysicalConnectionStatus] The business status of the shared line. Value:
  /// [vlanIds] The VLAN ID of the hosted connection. You can specify multiple VLAN IDs.
  /// [vpconnAliUid] The ID of the Alibaba Cloud account (primary account) of the owner of the shared line.
  GetVirtualPhysicalConnectionsArgs({
    this.businessStatus,
    this.ids,
    this.isConfirmed,
    this.nameRegex,
    this.outputFile,
    this.parentPhysicalConnectionId,
    this.virtualPhysicalConnectionIds,
    this.virtualPhysicalConnectionStatus,
    this.vlanIds,
    this.vpconnAliUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessStatus': ?businessStatus,
      'ids': ?ids,
      'isConfirmed': ?isConfirmed,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'parentPhysicalConnectionId': ?parentPhysicalConnectionId,
      'virtualPhysicalConnectionIds': ?virtualPhysicalConnectionIds,
      'virtualPhysicalConnectionStatus': ?virtualPhysicalConnectionStatus,
      'vlanIds': ?vlanIds,
      'vpconnAliUid': ?vpconnAliUid,
    };
  }

  factory GetVirtualPhysicalConnectionsArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualPhysicalConnectionsArgs(
      businessStatus: map['businessStatus'] == null ? null : (map['businessStatus'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      isConfirmed: map['isConfirmed'] == null ? null : (map['isConfirmed'] as bool).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      parentPhysicalConnectionId: map['parentPhysicalConnectionId'] == null ? null : (map['parentPhysicalConnectionId'] as String).input(),
      virtualPhysicalConnectionIds: map['virtualPhysicalConnectionIds'] == null ? null : ((map['virtualPhysicalConnectionIds'] as List).cast<String>()).input(),
      virtualPhysicalConnectionStatus: map['virtualPhysicalConnectionStatus'] == null ? null : (map['virtualPhysicalConnectionStatus'] as String).input(),
      vlanIds: map['vlanIds'] == null ? null : ((map['vlanIds'] as List).cast<int>()).input(),
      vpconnAliUid: map['vpconnAliUid'] == null ? null : (map['vpconnAliUid'] as String).input(),
    );
  }
}

