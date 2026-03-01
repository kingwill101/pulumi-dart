// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_attribute_business_owner.dart';
import 'get_application_attribute_criticality.dart';
import 'get_application_attribute_developer_owner.dart';
import 'get_application_attribute_environment.dart';
import 'get_application_attribute_operator_owner.dart';

class GetApplicationAttribute {
  /// Optional. Business team that ensures user needs are met and value is delivered
  final List<GetApplicationAttributeBusinessOwner> businessOwners;

  /// Criticality of the Application, Service, or Workload
  final List<GetApplicationAttributeCriticality> criticalities;

  /// Optional. Developer team that owns development and coding.
  final List<GetApplicationAttributeDeveloperOwner> developerOwners;

  /// Environment of the Application, Service, or Workload
  final List<GetApplicationAttributeEnvironment> environments;

  /// Optional. Operator team that ensures runtime and operations.
  final List<GetApplicationAttributeOperatorOwner> operatorOwners;

  /// Creates a new [GetApplicationAttribute].
  /// [businessOwners] Optional. Business team that ensures user needs are met and value is delivered
  /// [criticalities] Criticality of the Application, Service, or Workload
  /// [developerOwners] Optional. Developer team that owns development and coding.
  /// [environments] Environment of the Application, Service, or Workload
  /// [operatorOwners] Optional. Operator team that ensures runtime and operations.
  GetApplicationAttribute({
    required this.businessOwners,
    required this.criticalities,
    required this.developerOwners,
    required this.environments,
    required this.operatorOwners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessOwners':
          pulumi.Input.encodeList<
            GetApplicationAttributeBusinessOwner,
            Map<String, dynamic>
          >(businessOwners, (value) => value.toMap()),
      'criticalities':
          pulumi.Input.encodeList<
            GetApplicationAttributeCriticality,
            Map<String, dynamic>
          >(criticalities, (value) => value.toMap()),
      'developerOwners':
          pulumi.Input.encodeList<
            GetApplicationAttributeDeveloperOwner,
            Map<String, dynamic>
          >(developerOwners, (value) => value.toMap()),
      'environments':
          pulumi.Input.encodeList<
            GetApplicationAttributeEnvironment,
            Map<String, dynamic>
          >(environments, (value) => value.toMap()),
      'operatorOwners':
          pulumi.Input.encodeList<
            GetApplicationAttributeOperatorOwner,
            Map<String, dynamic>
          >(operatorOwners, (value) => value.toMap()),
    };
  }

  factory GetApplicationAttribute.fromMap(Map<String, dynamic> map) {
    return GetApplicationAttribute(
      businessOwners:
          pulumi.Input.decodeList<GetApplicationAttributeBusinessOwner>(
            map['businessOwners'],
            (value) => GetApplicationAttributeBusinessOwner.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      criticalities:
          pulumi.Input.decodeList<GetApplicationAttributeCriticality>(
            map['criticalities'],
            (value) => GetApplicationAttributeCriticality.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      developerOwners:
          pulumi.Input.decodeList<GetApplicationAttributeDeveloperOwner>(
            map['developerOwners'],
            (value) => GetApplicationAttributeDeveloperOwner.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      environments: pulumi.Input.decodeList<GetApplicationAttributeEnvironment>(
        map['environments'],
        (value) => GetApplicationAttributeEnvironment.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      operatorOwners:
          pulumi.Input.decodeList<GetApplicationAttributeOperatorOwner>(
            map['operatorOwners'],
            (value) => GetApplicationAttributeOperatorOwner.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
