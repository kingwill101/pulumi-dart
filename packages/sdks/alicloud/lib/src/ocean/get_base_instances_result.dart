// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_base_instances_instance.dart';

/// Result data returned by getBaseInstances.
class GetBaseInstancesResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? instanceId;
  final String? instanceName;
  final List<GetBaseInstancesInstance> instances;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  final String? resourceGroupId;
  final String? searchKey;
  final String? status;

  /// Creates a new [GetBaseInstancesResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] Optional.
  /// [instanceName] Optional.
  /// [instances] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [resourceGroupId] Optional.
  /// [searchKey] Optional.
  /// [status] Optional.
  GetBaseInstancesResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    this.instanceId,
    this.instanceName,
    required this.instances,
    this.nameRegex,
    required this.names,
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
      'id': id,
      'ids': ids,
      'instanceId': ?instanceId,
      'instanceName': ?instanceName,
      'instances': pulumi.Input.encodeList<GetBaseInstancesInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'resourceGroupId': ?resourceGroupId,
      'searchKey': ?searchKey,
      'status': ?status,
    };
  }

  factory GetBaseInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetBaseInstancesResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] == null ? null : map['instanceId']! as String,
      instanceName: map['instanceName'] == null ? null : map['instanceName']! as String,
      instances: pulumi.Input.decodeList<GetBaseInstancesInstance>(map['instances'], (value) => GetBaseInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber']! as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize']! as int,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId']! as String,
      searchKey: map['searchKey'] == null ? null : map['searchKey']! as String,
      status: map['status'] == null ? null : map['status']! as String,
    );
  }
}

