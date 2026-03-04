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
      'instances':
          pulumi.Input.encodeList<GetInstancesInstance, Map<String, dynamic>>(
            instances,
            (value) => value.toMap(),
          ),
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
      availabilityZone: (() {
        final guardedValue = map['availabilityZone'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      imageId: (() {
        final guardedValue = map['imageId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      instanceName: (() {
        final guardedValue = map['instanceName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      instances: pulumi.Input.decodeList<GetInstancesInstance>(
        map['instances']!,
        (value) => GetInstancesInstance.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      pageNumber: (() {
        final guardedValue = map['pageNumber'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      pageSize: (() {
        final guardedValue = map['pageSize'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      ramRoleName: (() {
        final guardedValue = map['ramRoleName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      totalCount: map['totalCount'] as int,
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
