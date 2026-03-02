// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_physical_connections_connection.dart';

/// Result data returned by getVirtualPhysicalConnections.
class GetVirtualPhysicalConnectionsResult {
  /// The commercial status of the physical line. Value:-**Normal**: activated.-**Financialized**: Arrears locked.-**SecurityLocked**: locked for security reasons.
  final String? businessStatus;
  /// A list of Virtual Physical Connection Entries. Each element contains the following attributes:
  final List<GetVirtualPhysicalConnectionsConnection> connections;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Virtual Physical Connection IDs.
  final List<String> ids;
  final bool? isConfirmed;
  final String? nameRegex;
  /// A list of name of Virtual Physical Connections.
  final List<String> names;
  final String? outputFile;
  /// The ID of the instance of the physical connection.
  final String? parentPhysicalConnectionId;
  final List<String>? virtualPhysicalConnectionIds;
  /// The business status of the shared line. Value:-**Confirmed**: The shared line has been Confirmed to receive.-**UnConfirmed**: The shared line has not been confirmed to be received.-**Deleted**: The shared line has been Deleted.
  final String? virtualPhysicalConnectionStatus;
  final List<int>? vlanIds;
  /// The ID of the Alibaba Cloud account (primary account) of the owner of the shared line.
  final String? vpconnAliUid;

  /// Creates a new [GetVirtualPhysicalConnectionsResult].
  /// [businessStatus] The commercial status of the physical line. Value:-**Normal**: activated.-**Financialized**: Arrears locked.-**SecurityLocked**: locked for security reasons.
  /// [connections] A list of Virtual Physical Connection Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Virtual Physical Connection IDs.
  /// [isConfirmed] Optional.
  /// [nameRegex] Optional.
  /// [names] A list of name of Virtual Physical Connections.
  /// [outputFile] Optional.
  /// [parentPhysicalConnectionId] The ID of the instance of the physical connection.
  /// [virtualPhysicalConnectionIds] Optional.
  /// [virtualPhysicalConnectionStatus] The business status of the shared line. Value:-**Confirmed**: The shared line has been Confirmed to receive.-**UnConfirmed**: The shared line has not been confirmed to be received.-**Deleted**: The shared line has been Deleted.
  /// [vlanIds] Optional.
  /// [vpconnAliUid] The ID of the Alibaba Cloud account (primary account) of the owner of the shared line.
  GetVirtualPhysicalConnectionsResult({
    this.businessStatus,
    required this.connections,
    required this.id,
    required this.ids,
    this.isConfirmed,
    this.nameRegex,
    required this.names,
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
      'connections': pulumi.Input.encodeList<GetVirtualPhysicalConnectionsConnection, Map<String, dynamic>>(connections, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'isConfirmed': ?isConfirmed,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'parentPhysicalConnectionId': ?parentPhysicalConnectionId,
      'virtualPhysicalConnectionIds': ?virtualPhysicalConnectionIds,
      'virtualPhysicalConnectionStatus': ?virtualPhysicalConnectionStatus,
      'vlanIds': ?vlanIds,
      'vpconnAliUid': ?vpconnAliUid,
    };
  }

  factory GetVirtualPhysicalConnectionsResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualPhysicalConnectionsResult(
      businessStatus: map['businessStatus'] == null ? null : map['businessStatus']! as String,
      connections: pulumi.Input.decodeList<GetVirtualPhysicalConnectionsConnection>(map['connections'], (value) => GetVirtualPhysicalConnectionsConnection.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      isConfirmed: map['isConfirmed'] == null ? null : map['isConfirmed']! as bool,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      parentPhysicalConnectionId: map['parentPhysicalConnectionId'] == null ? null : map['parentPhysicalConnectionId']! as String,
      virtualPhysicalConnectionIds: map['virtualPhysicalConnectionIds'] == null ? null : (map['virtualPhysicalConnectionIds']! as List).cast<String>(),
      virtualPhysicalConnectionStatus: map['virtualPhysicalConnectionStatus'] == null ? null : map['virtualPhysicalConnectionStatus']! as String,
      vlanIds: map['vlanIds'] == null ? null : (map['vlanIds']! as List).cast<int>(),
      vpconnAliUid: map['vpconnAliUid'] == null ? null : map['vpconnAliUid']! as String,
    );
  }
}

