// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../workload_attributes_business_owner/workload_attributes_business_owner.dart';
import '../workload_attributes_criticality/workload_attributes_criticality.dart';
import '../workload_attributes_developer_owner/workload_attributes_developer_owner.dart';
import '../workload_attributes_environment/workload_attributes_environment.dart';
import '../workload_attributes_operator_owner/workload_attributes_operator_owner.dart';

class WorkloadAttributes {
  /// Business team that ensures user needs are met and value is delivered
  /// Structure is documented below.
  final List<WorkloadAttributesBusinessOwner>? businessOwners;

  /// Criticality of the Application, Service, or Workload
  /// Structure is documented below.
  final WorkloadAttributesCriticality? criticality;

  /// Developer team that owns development and coding.
  /// Structure is documented below.
  final List<WorkloadAttributesDeveloperOwner>? developerOwners;

  /// Environment of the Application, Service, or Workload
  /// Structure is documented below.
  final WorkloadAttributesEnvironment? environment;

  /// Operator team that ensures runtime and operations.
  /// Structure is documented below.
  final List<WorkloadAttributesOperatorOwner>? operatorOwners;

  WorkloadAttributes({
    this.businessOwners,
    this.criticality,
    this.developerOwners,
    this.environment,
    this.operatorOwners,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final businessOwnersValue = businessOwners;
    if (businessOwnersValue != null) {
      map['businessOwners'] = Input.encodeList<WorkloadAttributesBusinessOwner,
          Map<String, dynamic>>(businessOwnersValue, (value) => value.toMap());
    }
    final criticalityValue = criticality;
    if (criticalityValue != null) {
      map['criticality'] = criticalityValue.toMap();
    }
    final developerOwnersValue = developerOwners;
    if (developerOwnersValue != null) {
      map['developerOwners'] = Input.encodeList<
          WorkloadAttributesDeveloperOwner,
          Map<String, dynamic>>(developerOwnersValue, (value) => value.toMap());
    }
    final environmentValue = environment;
    if (environmentValue != null) {
      map['environment'] = environmentValue.toMap();
    }
    final operatorOwnersValue = operatorOwners;
    if (operatorOwnersValue != null) {
      map['operatorOwners'] = Input.encodeList<WorkloadAttributesOperatorOwner,
          Map<String, dynamic>>(operatorOwnersValue, (value) => value.toMap());
    }
    return map;
  }

  factory WorkloadAttributes.fromMap(Map<String, dynamic> map) {
    return WorkloadAttributes(
      businessOwners: map['businessOwners'] == null
          ? null
          : Input.decodeList<WorkloadAttributesBusinessOwner>(
              map['businessOwners'],
              (value) => WorkloadAttributesBusinessOwner.fromMap(
                  (value as Map).cast<String, dynamic>())),
      criticality: map['criticality'] == null
          ? null
          : WorkloadAttributesCriticality.fromMap(
              (map['criticality'] as Map).cast<String, dynamic>()),
      developerOwners: map['developerOwners'] == null
          ? null
          : Input.decodeList<WorkloadAttributesDeveloperOwner>(
              map['developerOwners'],
              (value) => WorkloadAttributesDeveloperOwner.fromMap(
                  (value as Map).cast<String, dynamic>())),
      environment: map['environment'] == null
          ? null
          : WorkloadAttributesEnvironment.fromMap(
              (map['environment'] as Map).cast<String, dynamic>()),
      operatorOwners: map['operatorOwners'] == null
          ? null
          : Input.decodeList<WorkloadAttributesOperatorOwner>(
              map['operatorOwners'],
              (value) => WorkloadAttributesOperatorOwner.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
