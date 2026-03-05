// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'desired_configuration_response.dart';
import 'policy_assignment_properties_response.dart';
import 'service_information_response.dart';
import 'sku_response.dart';

/// Properties of the ManagedOps resource.
class ManagedOpsPropertiesResponse {
  /// Desired configuration input by the user.
  final pulumi.Input<DesiredConfigurationResponse> desiredConfiguration;
  /// Policy assignments created for managing services.
  final pulumi.Input<PolicyAssignmentPropertiesResponse> policyAssignmentProperties;
  /// Provisioning state of the resource.
  final pulumi.Input<String> provisioningState;
  /// Services provisioned by this resource.
  final pulumi.Input<ServiceInformationResponse> services;
  /// Product plan details of this resource.
  final pulumi.Input<SkuResponse> sku;

  /// Creates a new [ManagedOpsPropertiesResponse].
  /// [desiredConfiguration] Desired configuration input by the user.
  /// [policyAssignmentProperties] Policy assignments created for managing services.
  /// [provisioningState] Provisioning state of the resource.
  /// [services] Services provisioned by this resource.
  /// [sku] Product plan details of this resource.
  ManagedOpsPropertiesResponse({
    required this.desiredConfiguration,
    required this.policyAssignmentProperties,
    required this.provisioningState,
    required this.services,
    required this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredConfiguration': pulumi.Input.mapInputValue<DesiredConfigurationResponse, Map<String, dynamic>>(desiredConfiguration, (value) => value.toMap()),
      'policyAssignmentProperties': pulumi.Input.mapInputValue<PolicyAssignmentPropertiesResponse, Map<String, dynamic>>(policyAssignmentProperties, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'services': pulumi.Input.mapInputValue<ServiceInformationResponse, Map<String, dynamic>>(services, (value) => value.toMap()),
      'sku': pulumi.Input.mapInputValue<SkuResponse, Map<String, dynamic>>(sku, (value) => value.toMap()),
    };
  }

  factory ManagedOpsPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ManagedOpsPropertiesResponse(
      desiredConfiguration: pulumi.Input.fromValue(DesiredConfigurationResponse.fromMap((map['desiredConfiguration']! as Map).cast<String, dynamic>())),
      policyAssignmentProperties: pulumi.Input.fromValue(PolicyAssignmentPropertiesResponse.fromMap((map['policyAssignmentProperties']! as Map).cast<String, dynamic>())),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      services: pulumi.Input.fromValue(ServiceInformationResponse.fromMap((map['services']! as Map).cast<String, dynamic>())),
      sku: pulumi.Input.fromValue(SkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>())),
    );
  }
}

