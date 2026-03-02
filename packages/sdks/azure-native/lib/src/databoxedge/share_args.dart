// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_container_info.dart';
import 'client_access_right.dart';
import 'refresh_details.dart';
import 'user_access_right.dart';

/// {@template pulumi_databoxedge_share_args_doc}
/// The set of arguments for Share.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_share_args_doc}
class ShareArgs {
  /// Access protocol to be used by the share.
  final pulumi.Input<String> accessProtocol;
  /// Azure container mapping for the share.
  final pulumi.Input<AzureContainerInfo>? azureContainerInfo;
  /// List of IP addresses and corresponding access rights on the share(required for NFS protocol).
  final pulumi.Input<List<ClientAccessRight>>? clientAccessRights;
  /// Data policy of the share.
  final pulumi.Input<String>? dataPolicy;
  /// Description for the share.
  final pulumi.Input<String>? description;
  /// The device name.
  final pulumi.Input<String> deviceName;
  /// Current monitoring status of the share.
  final pulumi.Input<String> monitoringStatus;
  /// The share name.
  final pulumi.Input<String>? name;
  /// Details of the refresh job on this share.
  final pulumi.Input<RefreshDetails>? refreshDetails;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// Current status of the share.
  final pulumi.Input<String> shareStatus;
  /// Mapping of users and corresponding access rights on the share (required for SMB protocol).
  final pulumi.Input<List<UserAccessRight>>? userAccessRights;

  /// Creates a new [ShareArgs].
  /// [accessProtocol] Access protocol to be used by the share.
  /// [azureContainerInfo] Azure container mapping for the share.
  /// [clientAccessRights] List of IP addresses and corresponding access rights on the share(required for NFS protocol).
  /// [dataPolicy] Data policy of the share.
  /// [description] Description for the share.
  /// [deviceName] The device name.
  /// [monitoringStatus] Current monitoring status of the share.
  /// [name] The share name.
  /// [refreshDetails] Details of the refresh job on this share.
  /// [resourceGroupName] The resource group name.
  /// [shareStatus] Current status of the share.
  /// [userAccessRights] Mapping of users and corresponding access rights on the share (required for SMB protocol).
  ShareArgs({
    required this.accessProtocol,
    this.azureContainerInfo,
    this.clientAccessRights,
    this.dataPolicy,
    this.description,
    required this.deviceName,
    required this.monitoringStatus,
    this.name,
    this.refreshDetails,
    required this.resourceGroupName,
    required this.shareStatus,
    this.userAccessRights,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessProtocol': accessProtocol,
      'azureContainerInfo': ?pulumi.Input.mapOptionalInputValue<AzureContainerInfo, Map<String, dynamic>>(azureContainerInfo, (value) => value.toMap()),
      'clientAccessRights': ?pulumi.Input.mapOptionalInputValue<List<ClientAccessRight>, List<Map<String, dynamic>>>(clientAccessRights, (value) => pulumi.Input.encodeList<ClientAccessRight, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataPolicy': ?dataPolicy,
      'description': ?description,
      'deviceName': deviceName,
      'monitoringStatus': monitoringStatus,
      'name': ?name,
      'refreshDetails': ?pulumi.Input.mapOptionalInputValue<RefreshDetails, Map<String, dynamic>>(refreshDetails, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'shareStatus': shareStatus,
      'userAccessRights': ?pulumi.Input.mapOptionalInputValue<List<UserAccessRight>, List<Map<String, dynamic>>>(userAccessRights, (value) => pulumi.Input.encodeList<UserAccessRight, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ShareArgs.fromMap(Map<String, dynamic> map) {
    return ShareArgs(
      accessProtocol: (map['accessProtocol'] as String).input(),
      azureContainerInfo: map['azureContainerInfo'] == null ? null : (AzureContainerInfo.fromMap((map['azureContainerInfo'] as Map).cast<String, dynamic>())).input(),
      clientAccessRights: map['clientAccessRights'] == null ? null : (pulumi.Input.decodeList<ClientAccessRight>(map['clientAccessRights'], (value) => ClientAccessRight.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dataPolicy: map['dataPolicy'] == null ? null : (map['dataPolicy'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      deviceName: (map['deviceName'] as String).input(),
      monitoringStatus: (map['monitoringStatus'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      refreshDetails: map['refreshDetails'] == null ? null : (RefreshDetails.fromMap((map['refreshDetails'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      shareStatus: (map['shareStatus'] as String).input(),
      userAccessRights: map['userAccessRights'] == null ? null : (pulumi.Input.decodeList<UserAccessRight>(map['userAccessRights'], (value) => UserAccessRight.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

