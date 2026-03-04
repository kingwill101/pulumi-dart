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
    this.enableDetails,
    this.ids,
    this.instanceId,
    this.instanceName,
    this.nameRegex,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.resourceGroupId,
    this.searchKey,
    this.status,
  });

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
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceName: (() {
        final guardedValue = map['instanceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pageNumber: (() {
        final guardedValue = map['pageNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      pageSize: (() {
        final guardedValue = map['pageSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      searchKey: (() {
        final guardedValue = map['searchKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
