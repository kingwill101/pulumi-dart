// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ocean_get_base_instances_get_base_instances_args_doc}
/// Arguments for getBaseInstances.
/// {@endtemplate}
/// {@macro pulumi_ocean_get_base_instances_get_base_instances_args_doc}
class GetBaseInstancesArgs {
  final pulumi.Input<bool>? enableDetails;
  /// A list of Instance IDs.
  final pulumi.Input<List<String>>? ids;
  /// OceanBase cluster ID.
  final pulumi.Input<String>? instanceId;
  /// OceanBase cluster name. The length is 1 to 20 English or Chinese characters. If this parameter is not specified, the default value is the InstanceId of the cluster.
  final pulumi.Input<String>? instanceName;
  /// A regex string to filter results by Instance name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The ID of the enterprise resource group to which the instance resides.
  final pulumi.Input<String>? resourceGroupId;
  /// The filter keyword for the query list.
  final pulumi.Input<String>? searchKey;
  /// The status of the Instance. Value range: `PENDING_CREATE`, `ONLINE`, `TENANT_CREATING`, `TENANT_SPEC_MODIFYING`, `EXPANDING`, `REDUCING`, `SPEC_UPGRADING`, `DISK_UPGRADING`, `WHITE_LIST_MODIFYING`, `PARAMETER_MODIFYING`, `SSL_MODIFYING`, `PREPAID_EXPIRE_CLOSED`, `ARREARS_CLOSED`, `PENDING_DELETE`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetBaseInstancesArgs].
  /// [enableDetails] Optional.
  /// [ids] A list of Instance IDs.
  /// [instanceId] OceanBase cluster ID.
  /// [instanceName] OceanBase cluster name. The length is 1 to 20 English or Chinese characters. If this parameter is not specified, the default value is the InstanceId of the cluster.
  /// [nameRegex] A regex string to filter results by Instance name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [resourceGroupId] The ID of the enterprise resource group to which the instance resides.
  /// [searchKey] The filter keyword for the query list.
  /// [status] The status of the Instance. Value range: `PENDING_CREATE`, `ONLINE`, `TENANT_CREATING`, `TENANT_SPEC_MODIFYING`, `EXPANDING`, `REDUCING`, `SPEC_UPGRADING`, `DISK_UPGRADING`, `WHITE_LIST_MODIFYING`, `PARAMETER_MODIFYING`, `SSL_MODIFYING`, `PREPAID_EXPIRE_CLOSED`, `ARREARS_CLOSED`, `PENDING_DELETE`.
  GetBaseInstancesArgs({
    bool? enableDetails,
    List<String>? ids,
    String? instanceId,
    String? instanceName,
    String? nameRegex,
    String? outputFile,
    int? pageNumber,
    int? pageSize,
    String? resourceGroupId,
    String? searchKey,
    String? status,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      searchKey = pulumi.Input.asOptionalInput<String>(searchKey),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'instanceId': ?instanceId,
      'instanceName': ?instanceName,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'resourceGroupId': ?resourceGroupId,
      'searchKey': ?searchKey,
      'status': ?status,
    };
  }

  factory GetBaseInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetBaseInstancesArgs(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] == null ? null : map['instanceId'] as String,
      instanceName: map['instanceName'] == null ? null : map['instanceName'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      searchKey: map['searchKey'] == null ? null : map['searchKey'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

