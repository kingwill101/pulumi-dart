// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../service_attributes_business_owner/service_attributes_business_owner.dart';
import '../service_attributes_criticality/service_attributes_criticality.dart';
import '../service_attributes_developer_owner/service_attributes_developer_owner.dart';
import '../service_attributes_environment/service_attributes_environment.dart';
import '../service_attributes_operator_owner/service_attributes_operator_owner.dart';

class ServiceAttributes {
  /// Business team that ensures user needs are met and value is delivered
  /// Structure is documented below.
  final List<ServiceAttributesBusinessOwner>? businessOwners;

  /// Criticality of the Application, Service, or Workload
  /// Structure is documented below.
  final ServiceAttributesCriticality? criticality;

  /// Developer team that owns development and coding.
  /// Structure is documented below.
  final List<ServiceAttributesDeveloperOwner>? developerOwners;

  /// Environment of the Application, Service, or Workload
  /// Structure is documented below.
  final ServiceAttributesEnvironment? environment;

  /// Operator team that ensures runtime and operations.
  /// Structure is documented below.
  final List<ServiceAttributesOperatorOwner>? operatorOwners;

  ServiceAttributes({
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
      map['businessOwners'] = Input.encodeList<ServiceAttributesBusinessOwner,
          Map<String, dynamic>>(businessOwnersValue, (value) => value.toMap());
    }
    final criticalityValue = criticality;
    if (criticalityValue != null) {
      map['criticality'] = criticalityValue.toMap();
    }
    final developerOwnersValue = developerOwners;
    if (developerOwnersValue != null) {
      map['developerOwners'] = Input.encodeList<ServiceAttributesDeveloperOwner,
          Map<String, dynamic>>(developerOwnersValue, (value) => value.toMap());
    }
    final environmentValue = environment;
    if (environmentValue != null) {
      map['environment'] = environmentValue.toMap();
    }
    final operatorOwnersValue = operatorOwners;
    if (operatorOwnersValue != null) {
      map['operatorOwners'] = Input.encodeList<ServiceAttributesOperatorOwner,
          Map<String, dynamic>>(operatorOwnersValue, (value) => value.toMap());
    }
    return map;
  }

  factory ServiceAttributes.fromMap(Map<String, dynamic> map) {
    return ServiceAttributes(
      businessOwners: map['businessOwners'] == null
          ? null
          : Input.decodeList<ServiceAttributesBusinessOwner>(
              map['businessOwners'],
              (value) => ServiceAttributesBusinessOwner.fromMap(
                  (value as Map).cast<String, dynamic>())),
      criticality: map['criticality'] == null
          ? null
          : ServiceAttributesCriticality.fromMap(
              (map['criticality'] as Map).cast<String, dynamic>()),
      developerOwners: map['developerOwners'] == null
          ? null
          : Input.decodeList<ServiceAttributesDeveloperOwner>(
              map['developerOwners'],
              (value) => ServiceAttributesDeveloperOwner.fromMap(
                  (value as Map).cast<String, dynamic>())),
      environment: map['environment'] == null
          ? null
          : ServiceAttributesEnvironment.fromMap(
              (map['environment'] as Map).cast<String, dynamic>()),
      operatorOwners: map['operatorOwners'] == null
          ? null
          : Input.decodeList<ServiceAttributesOperatorOwner>(
              map['operatorOwners'],
              (value) => ServiceAttributesOperatorOwner.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
