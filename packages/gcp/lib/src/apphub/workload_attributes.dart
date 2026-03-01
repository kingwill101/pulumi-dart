// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_attributes_business_owner.dart';
import 'workload_attributes_criticality.dart';
import 'workload_attributes_developer_owner.dart';
import 'workload_attributes_environment.dart';
import 'workload_attributes_operator_owner.dart';

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

  /// Creates a new [WorkloadAttributes].
  /// [businessOwners] Business team that ensures user needs are met and value is delivered
  /// [criticality] Criticality of the Application, Service, or Workload
  /// [developerOwners] Developer team that owns development and coding.
  /// [environment] Environment of the Application, Service, or Workload
  /// [operatorOwners] Operator team that ensures runtime and operations.
  WorkloadAttributes({
    this.businessOwners,
    this.criticality,
    this.developerOwners,
    this.environment,
    this.operatorOwners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessOwners': ?businessOwners == null
          ? null
          : pulumi.Input.encodeList<
              WorkloadAttributesBusinessOwner,
              Map<String, dynamic>
            >(businessOwners!, (value) => value.toMap()),
      'criticality': ?criticality == null ? null : criticality!.toMap(),
      'developerOwners': ?developerOwners == null
          ? null
          : pulumi.Input.encodeList<
              WorkloadAttributesDeveloperOwner,
              Map<String, dynamic>
            >(developerOwners!, (value) => value.toMap()),
      'environment': ?environment == null ? null : environment!.toMap(),
      'operatorOwners': ?operatorOwners == null
          ? null
          : pulumi.Input.encodeList<
              WorkloadAttributesOperatorOwner,
              Map<String, dynamic>
            >(operatorOwners!, (value) => value.toMap()),
    };
  }

  factory WorkloadAttributes.fromMap(Map<String, dynamic> map) {
    return WorkloadAttributes(
      businessOwners: map['businessOwners'] == null
          ? null
          : pulumi.Input.decodeList<WorkloadAttributesBusinessOwner>(
              map['businessOwners'],
              (value) => WorkloadAttributesBusinessOwner.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      criticality: map['criticality'] == null
          ? null
          : WorkloadAttributesCriticality.fromMap(
              (map['criticality'] as Map).cast<String, dynamic>(),
            ),
      developerOwners: map['developerOwners'] == null
          ? null
          : pulumi.Input.decodeList<WorkloadAttributesDeveloperOwner>(
              map['developerOwners'],
              (value) => WorkloadAttributesDeveloperOwner.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      environment: map['environment'] == null
          ? null
          : WorkloadAttributesEnvironment.fromMap(
              (map['environment'] as Map).cast<String, dynamic>(),
            ),
      operatorOwners: map['operatorOwners'] == null
          ? null
          : pulumi.Input.decodeList<WorkloadAttributesOperatorOwner>(
              map['operatorOwners'],
              (value) => WorkloadAttributesOperatorOwner.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
