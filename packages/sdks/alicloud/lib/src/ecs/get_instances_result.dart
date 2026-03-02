// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance.dart';

/// Result data returned by getInstances.
class GetInstancesResult {
  /// Availability zone the instance belongs to.
  final String? availabilityZone;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// Image ID the instance is using.
  final String? imageId;
  final String? instanceName;
  /// A list of instances. Each element contains the following attributes:
  final List<GetInstancesInstance> instances;
  final String? nameRegex;
  /// A list of instances names.
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// The Ram role name.
  final String? ramRoleName;
  /// The Id of resource group.
  final String? resourceGroupId;
  /// Instance current status.
  final String? status;
  /// A map of tags assigned to the ECS instance.
  final Map<String, String>? tags;
  final int totalCount;
  /// ID of the VPC the instance belongs to.
  final String? vpcId;
  /// ID of the vSwitch the instance belongs to.
  final String? vswitchId;

  /// Creates a new [GetInstancesResult].
  /// [availabilityZone] Availability zone the instance belongs to.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [imageId] Image ID the instance is using.
  /// [instanceName] Optional.
  /// [instances] A list of instances. Each element contains the following attributes:
  /// [nameRegex] Optional.
  /// [names] A list of instances names.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [ramRoleName] The Ram role name.
  /// [resourceGroupId] The Id of resource group.
  /// [status] Instance current status.
  /// [tags] A map of tags assigned to the ECS instance.
  /// [totalCount] Required.
  /// [vpcId] ID of the VPC the instance belongs to.
  /// [vswitchId] ID of the vSwitch the instance belongs to.
  GetInstancesResult({
    this.availabilityZone,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.imageId,
    this.instanceName,
    required this.instances,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.ramRoleName,
    this.resourceGroupId,
    this.status,
    this.tags,
    required this.totalCount,
    this.vpcId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'imageId': ?imageId,
      'instanceName': ?instanceName,
      'instances': pulumi.Input.encodeList<GetInstancesInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'ramRoleName': ?ramRoleName,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'totalCount': totalCount,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory GetInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetInstancesResult(
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone']! as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      imageId: map['imageId'] == null ? null : map['imageId']! as String,
      instanceName: map['instanceName'] == null ? null : map['instanceName']! as String,
      instances: pulumi.Input.decodeList<GetInstancesInstance>(map['instances'], (value) => GetInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber']! as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize']! as int,
      ramRoleName: map['ramRoleName'] == null ? null : map['ramRoleName']! as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      totalCount: map['totalCount'] as int,
      vpcId: map['vpcId'] == null ? null : map['vpcId']! as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId']! as String,
    );
  }
}

