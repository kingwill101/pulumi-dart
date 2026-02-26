// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../application_attributes_business_owner/application_attributes_business_owner.dart';
import '../application_attributes_criticality/application_attributes_criticality.dart';
import '../application_attributes_developer_owner/application_attributes_developer_owner.dart';
import '../application_attributes_environment/application_attributes_environment.dart';
import '../application_attributes_operator_owner/application_attributes_operator_owner.dart';

class ApplicationAttributes {
  /// Optional. Business team that ensures user needs are met and value is delivered
  /// Structure is documented below.
  final List<ApplicationAttributesBusinessOwner>? businessOwners;

  /// Criticality of the Application, Service, or Workload
  /// Structure is documented below.
  final ApplicationAttributesCriticality? criticality;

  /// Optional. Developer team that owns development and coding.
  /// Structure is documented below.
  final List<ApplicationAttributesDeveloperOwner>? developerOwners;

  /// Environment of the Application, Service, or Workload
  /// Structure is documented below.
  final ApplicationAttributesEnvironment? environment;

  /// Optional. Operator team that ensures runtime and operations.
  /// Structure is documented below.
  final List<ApplicationAttributesOperatorOwner>? operatorOwners;

  ApplicationAttributes({
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
      map['businessOwners'] = Input.encodeList<
          ApplicationAttributesBusinessOwner,
          Map<String, dynamic>>(businessOwnersValue, (value) => value.toMap());
    }
    final criticalityValue = criticality;
    if (criticalityValue != null) {
      map['criticality'] = criticalityValue.toMap();
    }
    final developerOwnersValue = developerOwners;
    if (developerOwnersValue != null) {
      map['developerOwners'] = Input.encodeList<
          ApplicationAttributesDeveloperOwner,
          Map<String, dynamic>>(developerOwnersValue, (value) => value.toMap());
    }
    final environmentValue = environment;
    if (environmentValue != null) {
      map['environment'] = environmentValue.toMap();
    }
    final operatorOwnersValue = operatorOwners;
    if (operatorOwnersValue != null) {
      map['operatorOwners'] = Input.encodeList<
          ApplicationAttributesOperatorOwner,
          Map<String, dynamic>>(operatorOwnersValue, (value) => value.toMap());
    }
    return map;
  }

  factory ApplicationAttributes.fromMap(Map<String, dynamic> map) {
    return ApplicationAttributes(
      businessOwners: map['businessOwners'] == null
          ? null
          : Input.decodeList<ApplicationAttributesBusinessOwner>(
              map['businessOwners'],
              (value) => ApplicationAttributesBusinessOwner.fromMap(
                  (value as Map).cast<String, dynamic>())),
      criticality: map['criticality'] == null
          ? null
          : ApplicationAttributesCriticality.fromMap(
              (map['criticality'] as Map).cast<String, dynamic>()),
      developerOwners: map['developerOwners'] == null
          ? null
          : Input.decodeList<ApplicationAttributesDeveloperOwner>(
              map['developerOwners'],
              (value) => ApplicationAttributesDeveloperOwner.fromMap(
                  (value as Map).cast<String, dynamic>())),
      environment: map['environment'] == null
          ? null
          : ApplicationAttributesEnvironment.fromMap(
              (map['environment'] as Map).cast<String, dynamic>()),
      operatorOwners: map['operatorOwners'] == null
          ? null
          : Input.decodeList<ApplicationAttributesOperatorOwner>(
              map['operatorOwners'],
              (value) => ApplicationAttributesOperatorOwner.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
