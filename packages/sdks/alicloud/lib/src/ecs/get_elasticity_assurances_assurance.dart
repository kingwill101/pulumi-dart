// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_elasticity_assurances_assurance_allocated_resource.dart';

class GetElasticityAssurancesAssurance {
  /// Details of resource allocation.
  final pulumi.Input<List<GetElasticityAssurancesAssuranceAllocatedResource>> allocatedResources;
  /// Description of flexible guarantee service.
  final pulumi.Input<String> description;
  /// The first ID of the resource
  final pulumi.Input<String> elasticityAssuranceId;
  /// Flexible guarantee service failure time.
  final pulumi.Input<String> endTime;
  /// ID of flexible guarantee service.
  final pulumi.Input<String> id;
  /// The billing method of the instance. Possible value: PostPaid. Currently, only pay-as-you-go is supported.
  final pulumi.Input<String> instanceChargeType;
  /// The ID of the elasticity assurance.
  final pulumi.Input<String> privatePoolOptionsId;
  /// The matching mode of flexible guarantee service. Possible values:-Open: flexible guarantee service for Open mode.-Target: specifies the flexible guarantee service of the mode.
  final pulumi.Input<String> privatePoolOptionsMatchCriteria;
  /// The name of the elasticity assurance.
  final pulumi.Input<String> privatePoolOptionsName;
  /// The ID of the resource group.
  final pulumi.Input<String> resourceGroupId;
  /// Flexible guarantee service effective time.
  final pulumi.Input<String> startTime;
  /// Flexible guarantee effective way. Possible values:-Now: Effective immediately.-Later: the specified time takes effect.
  final pulumi.Input<String> startTimeType;
  /// The status of flexible guarantee services. Possible values: `All`, `Preparing`, `Prepared`, `Active`, `Released`.
  final pulumi.Input<String> status;
  /// The tag key-value pair information bound by the elastic guarantee service.
  final pulumi.Input<Map<String, String>>? tags;
  /// The total number of flexible guarantee services.
  final pulumi.Input<String> totalAssuranceTimes;
  /// This parameter is not yet available.
  final pulumi.Input<int> usedAssuranceTimes;

  /// Creates a new [GetElasticityAssurancesAssurance].
  /// [allocatedResources] Details of resource allocation.
  /// [description] Description of flexible guarantee service.
  /// [elasticityAssuranceId] The first ID of the resource
  /// [endTime] Flexible guarantee service failure time.
  /// [id] ID of flexible guarantee service.
  /// [instanceChargeType] The billing method of the instance. Possible value: PostPaid. Currently, only pay-as-you-go is supported.
  /// [privatePoolOptionsId] The ID of the elasticity assurance.
  /// [privatePoolOptionsMatchCriteria] The matching mode of flexible guarantee service. Possible values:-Open: flexible guarantee service for Open mode.-Target: specifies the flexible guarantee service of the mode.
  /// [privatePoolOptionsName] The name of the elasticity assurance.
  /// [resourceGroupId] The ID of the resource group.
  /// [startTime] Flexible guarantee service effective time.
  /// [startTimeType] Flexible guarantee effective way. Possible values:-Now: Effective immediately.-Later: the specified time takes effect.
  /// [status] The status of flexible guarantee services. Possible values: `All`, `Preparing`, `Prepared`, `Active`, `Released`.
  /// [tags] The tag key-value pair information bound by the elastic guarantee service.
  /// [totalAssuranceTimes] The total number of flexible guarantee services.
  /// [usedAssuranceTimes] This parameter is not yet available.
  GetElasticityAssurancesAssurance({
    required this.allocatedResources,
    required this.description,
    required this.elasticityAssuranceId,
    required this.endTime,
    required this.id,
    required this.instanceChargeType,
    required this.privatePoolOptionsId,
    required this.privatePoolOptionsMatchCriteria,
    required this.privatePoolOptionsName,
    required this.resourceGroupId,
    required this.startTime,
    required this.startTimeType,
    required this.status,
    this.tags,
    required this.totalAssuranceTimes,
    required this.usedAssuranceTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedResources': pulumi.Input.mapInputValue<List<GetElasticityAssurancesAssuranceAllocatedResource>, List<Map<String, dynamic>>>(allocatedResources, (value) => pulumi.Input.encodeList<GetElasticityAssurancesAssuranceAllocatedResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': description,
      'elasticityAssuranceId': elasticityAssuranceId,
      'endTime': endTime,
      'id': id,
      'instanceChargeType': instanceChargeType,
      'privatePoolOptionsId': privatePoolOptionsId,
      'privatePoolOptionsMatchCriteria': privatePoolOptionsMatchCriteria,
      'privatePoolOptionsName': privatePoolOptionsName,
      'resourceGroupId': resourceGroupId,
      'startTime': startTime,
      'startTimeType': startTimeType,
      'status': status,
      'tags': ?tags,
      'totalAssuranceTimes': totalAssuranceTimes,
      'usedAssuranceTimes': usedAssuranceTimes,
    };
  }

  factory GetElasticityAssurancesAssurance.fromMap(Map<String, dynamic> map) {
    return GetElasticityAssurancesAssurance(
      allocatedResources: (pulumi.Input.decodeList<GetElasticityAssurancesAssuranceAllocatedResource>(map['allocatedResources'], (value) => GetElasticityAssurancesAssuranceAllocatedResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: (map['description'] as String).input(),
      elasticityAssuranceId: (map['elasticityAssuranceId'] as String).input(),
      endTime: (map['endTime'] as String).input(),
      id: (map['id'] as String).input(),
      instanceChargeType: (map['instanceChargeType'] as String).input(),
      privatePoolOptionsId: (map['privatePoolOptionsId'] as String).input(),
      privatePoolOptionsMatchCriteria: (map['privatePoolOptionsMatchCriteria'] as String).input(),
      privatePoolOptionsName: (map['privatePoolOptionsName'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      startTime: (map['startTime'] as String).input(),
      startTimeType: (map['startTimeType'] as String).input(),
      status: (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      totalAssuranceTimes: (map['totalAssuranceTimes'] as String).input(),
      usedAssuranceTimes: (map['usedAssuranceTimes'] as int).input(),
    );
  }
}

