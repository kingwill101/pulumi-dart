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
  const GetVirtualPhysicalConnectionsArgs({
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
      businessStatus: (() { final guardedValue = map['businessStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      isConfirmed: (() { final guardedValue = map['isConfirmed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentPhysicalConnectionId: (() { final guardedValue = map['parentPhysicalConnectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualPhysicalConnectionIds: (() { final guardedValue = map['virtualPhysicalConnectionIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      virtualPhysicalConnectionStatus: (() { final guardedValue = map['virtualPhysicalConnectionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vlanIds: (() { final guardedValue = map['vlanIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      vpconnAliUid: (() { final guardedValue = map['vpconnAliUid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

