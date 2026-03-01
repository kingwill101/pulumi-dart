// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_serverless_instances_instance.dart';

/// Result data returned by getServerlessInstances.
class GetServerlessInstancesResult {
  final String? dbInstanceClass;
  final String? dbInstanceDescription;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final List<GetServerlessInstancesInstance> instances;
  final String? networkType;
  final String? outputFile;
  final String? resourceGroupId;
  final String? status;
  final Map<String, String>? tags;
  final String? vpcId;
  final String? vswitchId;
  final String? zoneId;

  /// Creates a new [GetServerlessInstancesResult].
  /// [dbInstanceClass] Optional.
  /// [dbInstanceDescription] Optional.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instances] Required.
  /// [networkType] Optional.
  /// [outputFile] Optional.
  /// [resourceGroupId] Optional.
  /// [status] Optional.
  /// [tags] Optional.
  /// [vpcId] Optional.
  /// [vswitchId] Optional.
  /// [zoneId] Optional.
  GetServerlessInstancesResult({
    this.dbInstanceClass,
    this.dbInstanceDescription,
    this.enableDetails,
    required this.id,
    required this.ids,
    required this.instances,
    this.networkType,
    this.outputFile,
    this.resourceGroupId,
    this.status,
    this.tags,
    this.vpcId,
    this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceClass': ?dbInstanceClass,
      'dbInstanceDescription': ?dbInstanceDescription,
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'instances': pulumi.Input.encodeList<GetServerlessInstancesInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'networkType': ?networkType,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory GetServerlessInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetServerlessInstancesResult(
      dbInstanceClass: map['dbInstanceClass'] == null ? null : map['dbInstanceClass'] as String,
      dbInstanceDescription: map['dbInstanceDescription'] == null ? null : map['dbInstanceDescription'] as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instances: pulumi.Input.decodeList<GetServerlessInstancesInstance>(map['instances'], (value) => GetServerlessInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      networkType: map['networkType'] == null ? null : map['networkType'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId'] as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}

