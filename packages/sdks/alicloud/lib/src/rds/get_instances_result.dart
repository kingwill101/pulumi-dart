// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance.dart';

/// Result data returned by getInstances.
class GetInstancesResult {
  /// `Standard` for standard access mode and `Safe` for high security access mode.
  final String? connectionMode;
  /// `Primary` for primary instance, `Readonly` for read-only instance, `Guard` for disaster recovery instance, and `Temp` for temporary instance.
  final String? dbType;
  final bool? enableDetails;
  /// Database type. Options are `MySQL`, `SQLServer`, `PostgreSQL`, `MariaDB`. If no value is specified, all types are returned.
  final String? engine;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of RDS instance IDs.
  final List<String> ids;
  /// A list of RDS instances. Each element contains the following attributes:
  final List<GetInstancesInstance> instances;
  final String? nameRegex;
  /// A list of RDS instance names.
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// Status of the instance.
  final String? status;
  final Map<String, String>? tags;
  final int totalCount;
  /// ID of the VPC the instance belongs to.
  final String? vpcId;
  /// ID of the vSwitch the instance belongs to.
  final String? vswitchId;

  /// Creates a new [GetInstancesResult].
  /// [connectionMode] `Standard` for standard access mode and `Safe` for high security access mode.
  /// [dbType] `Primary` for primary instance, `Readonly` for read-only instance, `Guard` for disaster recovery instance, and `Temp` for temporary instance.
  /// [enableDetails] Optional.
  /// [engine] Database type. Options are `MySQL`, `SQLServer`, `PostgreSQL`, `MariaDB`. If no value is specified, all types are returned.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of RDS instance IDs.
  /// [instances] A list of RDS instances. Each element contains the following attributes:
  /// [nameRegex] Optional.
  /// [names] A list of RDS instance names.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [status] Status of the instance.
  /// [tags] Optional.
  /// [totalCount] Required.
  /// [vpcId] ID of the VPC the instance belongs to.
  /// [vswitchId] ID of the vSwitch the instance belongs to.
  GetInstancesResult({
    this.connectionMode,
    this.dbType,
    this.enableDetails,
    this.engine,
    required this.id,
    required this.ids,
    required this.instances,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.status,
    this.tags,
    required this.totalCount,
    this.vpcId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionMode': ?connectionMode,
      'dbType': ?dbType,
      'enableDetails': ?enableDetails,
      'engine': ?engine,
      'id': id,
      'ids': ids,
      'instances': pulumi.Input.encodeList<GetInstancesInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'status': ?status,
      'tags': ?tags,
      'totalCount': totalCount,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory GetInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetInstancesResult(
      connectionMode: map['connectionMode'] == null ? null : map['connectionMode']! as String,
      dbType: map['dbType'] == null ? null : map['dbType']! as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      engine: map['engine'] == null ? null : map['engine']! as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instances: pulumi.Input.decodeList<GetInstancesInstance>(map['instances'], (value) => GetInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber']! as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize']! as int,
      status: map['status'] == null ? null : map['status']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      totalCount: map['totalCount'] as int,
      vpcId: map['vpcId'] == null ? null : map['vpcId']! as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId']! as String,
    );
  }
}

