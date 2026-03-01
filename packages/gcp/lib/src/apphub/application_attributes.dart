// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_attributes_business_owner.dart';
import 'application_attributes_criticality.dart';
import 'application_attributes_developer_owner.dart';
import 'application_attributes_environment.dart';
import 'application_attributes_operator_owner.dart';

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

  /// Creates a new [ApplicationAttributes].
  /// [businessOwners] Optional. Business team that ensures user needs are met and value is delivered
  /// [criticality] Criticality of the Application, Service, or Workload
  /// [developerOwners] Optional. Developer team that owns development and coding.
  /// [environment] Environment of the Application, Service, or Workload
  /// [operatorOwners] Optional. Operator team that ensures runtime and operations.
  ApplicationAttributes({
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
              ApplicationAttributesBusinessOwner,
              Map<String, dynamic>
            >(businessOwners!, (value) => value.toMap()),
      'criticality': ?criticality == null ? null : criticality!.toMap(),
      'developerOwners': ?developerOwners == null
          ? null
          : pulumi.Input.encodeList<
              ApplicationAttributesDeveloperOwner,
              Map<String, dynamic>
            >(developerOwners!, (value) => value.toMap()),
      'environment': ?environment == null ? null : environment!.toMap(),
      'operatorOwners': ?operatorOwners == null
          ? null
          : pulumi.Input.encodeList<
              ApplicationAttributesOperatorOwner,
              Map<String, dynamic>
            >(operatorOwners!, (value) => value.toMap()),
    };
  }

  factory ApplicationAttributes.fromMap(Map<String, dynamic> map) {
    return ApplicationAttributes(
      businessOwners: map['businessOwners'] == null
          ? null
          : pulumi.Input.decodeList<ApplicationAttributesBusinessOwner>(
              map['businessOwners'],
              (value) => ApplicationAttributesBusinessOwner.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      criticality: map['criticality'] == null
          ? null
          : ApplicationAttributesCriticality.fromMap(
              (map['criticality'] as Map).cast<String, dynamic>(),
            ),
      developerOwners: map['developerOwners'] == null
          ? null
          : pulumi.Input.decodeList<ApplicationAttributesDeveloperOwner>(
              map['developerOwners'],
              (value) => ApplicationAttributesDeveloperOwner.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      environment: map['environment'] == null
          ? null
          : ApplicationAttributesEnvironment.fromMap(
              (map['environment'] as Map).cast<String, dynamic>(),
            ),
      operatorOwners: map['operatorOwners'] == null
          ? null
          : pulumi.Input.decodeList<ApplicationAttributesOperatorOwner>(
              map['operatorOwners'],
              (value) => ApplicationAttributesOperatorOwner.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
