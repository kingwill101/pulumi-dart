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
    required String accessProtocol,
    AzureContainerInfo? azureContainerInfo,
    List<ClientAccessRight>? clientAccessRights,
    String? dataPolicy,
    String? description,
    required String deviceName,
    required String monitoringStatus,
    String? name,
    RefreshDetails? refreshDetails,
    required String resourceGroupName,
    required String shareStatus,
    List<UserAccessRight>? userAccessRights,
  }) :
      accessProtocol = pulumi.Input.asInput<String>(accessProtocol),
      azureContainerInfo = pulumi.Input.asOptionalInput<AzureContainerInfo>(azureContainerInfo),
      clientAccessRights = pulumi.Input.asOptionalInput<List<ClientAccessRight>>(clientAccessRights),
      dataPolicy = pulumi.Input.asOptionalInput<String>(dataPolicy),
      description = pulumi.Input.asOptionalInput<String>(description),
      deviceName = pulumi.Input.asInput<String>(deviceName),
      monitoringStatus = pulumi.Input.asInput<String>(monitoringStatus),
      name = pulumi.Input.asOptionalInput<String>(name),
      refreshDetails = pulumi.Input.asOptionalInput<RefreshDetails>(refreshDetails),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shareStatus = pulumi.Input.asInput<String>(shareStatus),
      userAccessRights = pulumi.Input.asOptionalInput<List<UserAccessRight>>(userAccessRights);

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
      accessProtocol: map['accessProtocol'] as String,
      azureContainerInfo: map['azureContainerInfo'] == null ? null : AzureContainerInfo.fromMap((map['azureContainerInfo'] as Map).cast<String, dynamic>()),
      clientAccessRights: map['clientAccessRights'] == null ? null : pulumi.Input.decodeList<ClientAccessRight>(map['clientAccessRights'], (value) => ClientAccessRight.fromMap((value as Map).cast<String, dynamic>())),
      dataPolicy: map['dataPolicy'] == null ? null : map['dataPolicy'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      deviceName: map['deviceName'] as String,
      monitoringStatus: map['monitoringStatus'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      refreshDetails: map['refreshDetails'] == null ? null : RefreshDetails.fromMap((map['refreshDetails'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      shareStatus: map['shareStatus'] as String,
      userAccessRights: map['userAccessRights'] == null ? null : pulumi.Input.decodeList<UserAccessRight>(map['userAccessRights'], (value) => UserAccessRight.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

