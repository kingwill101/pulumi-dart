// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_elasticity_assurances_assurance_allocated_resource.dart';

class GetElasticityAssurancesAssurance {
  /// Details of resource allocation.
  final List<GetElasticityAssurancesAssuranceAllocatedResource> allocatedResources;
  /// Description of flexible guarantee service.
  final String description;
  /// The first ID of the resource
  final String elasticityAssuranceId;
  /// Flexible guarantee service failure time.
  final String endTime;
  /// ID of flexible guarantee service.
  final String id;
  /// The billing method of the instance. Possible value: PostPaid. Currently, only pay-as-you-go is supported.
  final String instanceChargeType;
  /// The ID of the elasticity assurance.
  final String privatePoolOptionsId;
  /// The matching mode of flexible guarantee service. Possible values:-Open: flexible guarantee service for Open mode.-Target: specifies the flexible guarantee service of the mode.
  final String privatePoolOptionsMatchCriteria;
  /// The name of the elasticity assurance.
  final String privatePoolOptionsName;
  /// The ID of the resource group.
  final String resourceGroupId;
  /// Flexible guarantee service effective time.
  final String startTime;
  /// Flexible guarantee effective way. Possible values:-Now: Effective immediately.-Later: the specified time takes effect.
  final String startTimeType;
  /// The status of flexible guarantee services. Possible values: `All`, `Preparing`, `Prepared`, `Active`, `Released`.
  final String status;
  /// The tag key-value pair information bound by the elastic guarantee service.
  final Map<String, String>? tags;
  /// The total number of flexible guarantee services.
  final String totalAssuranceTimes;
  /// This parameter is not yet available.
  final int usedAssuranceTimes;

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
      'allocatedResources': pulumi.Input.encodeList<GetElasticityAssurancesAssuranceAllocatedResource, Map<String, dynamic>>(allocatedResources, (value) => value.toMap()),
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
      allocatedResources: pulumi.Input.decodeList<GetElasticityAssurancesAssuranceAllocatedResource>(map['allocatedResources'], (value) => GetElasticityAssurancesAssuranceAllocatedResource.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      elasticityAssuranceId: map['elasticityAssuranceId'] as String,
      endTime: map['endTime'] as String,
      id: map['id'] as String,
      instanceChargeType: map['instanceChargeType'] as String,
      privatePoolOptionsId: map['privatePoolOptionsId'] as String,
      privatePoolOptionsMatchCriteria: map['privatePoolOptionsMatchCriteria'] as String,
      privatePoolOptionsName: map['privatePoolOptionsName'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      startTime: map['startTime'] as String,
      startTimeType: map['startTimeType'] as String,
      status: map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      totalAssuranceTimes: map['totalAssuranceTimes'] as String,
      usedAssuranceTimes: map['usedAssuranceTimes'] as int,
    );
  }
}

