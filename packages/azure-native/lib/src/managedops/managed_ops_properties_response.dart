// ignore_for_file: unused_element, unnecessary_cast

import 'desired_configuration_response.dart';
import 'policy_assignment_properties_response.dart';
import 'service_information_response.dart';
import 'sku_response.dart';

/// Properties of the ManagedOps resource.
class ManagedOpsPropertiesResponse {
  /// Desired configuration input by the user.
  final DesiredConfigurationResponse desiredConfiguration;
  /// Policy assignments created for managing services.
  final PolicyAssignmentPropertiesResponse policyAssignmentProperties;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// Services provisioned by this resource.
  final ServiceInformationResponse services;
  /// Product plan details of this resource.
  final SkuResponse sku;

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
      'desiredConfiguration': desiredConfiguration.toMap(),
      'policyAssignmentProperties': policyAssignmentProperties.toMap(),
      'provisioningState': provisioningState,
      'services': services.toMap(),
      'sku': sku.toMap(),
    };
  }

  factory ManagedOpsPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ManagedOpsPropertiesResponse(
      desiredConfiguration: DesiredConfigurationResponse.fromMap((map['desiredConfiguration'] as Map).cast<String, dynamic>()),
      policyAssignmentProperties: PolicyAssignmentPropertiesResponse.fromMap((map['policyAssignmentProperties'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      services: ServiceInformationResponse.fromMap((map['services'] as Map).cast<String, dynamic>()),
      sku: SkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
    );
  }
}

