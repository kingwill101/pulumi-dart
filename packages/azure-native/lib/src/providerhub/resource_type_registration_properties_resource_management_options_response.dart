// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delete_dependency_response.dart';
import 'resource_type_registration_properties_resource_management_options_batch_provisioning_support_response.dart';
import 'resource_type_registration_properties_resource_management_options_nested_provisioning_support_response.dart';

/// Resource management options.
class ResourceTypeRegistrationPropertiesResourceManagementOptionsResponse {
  /// Batch provisioning support.
  final ResourceTypeRegistrationPropertiesResourceManagementOptionsBatchProvisioningSupportResponse? batchProvisioningSupport;
  /// Delete dependencies.
  final List<DeleteDependencyResponse>? deleteDependencies;
  /// Nested provisioning support.
  final ResourceTypeRegistrationPropertiesResourceManagementOptionsNestedProvisioningSupportResponse? nestedProvisioningSupport;

  /// Creates a new [ResourceTypeRegistrationPropertiesResourceManagementOptionsResponse].
  /// [batchProvisioningSupport] Batch provisioning support.
  /// [deleteDependencies] Delete dependencies.
  /// [nestedProvisioningSupport] Nested provisioning support.
  ResourceTypeRegistrationPropertiesResourceManagementOptionsResponse({
    this.batchProvisioningSupport,
    this.deleteDependencies,
    this.nestedProvisioningSupport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchProvisioningSupport': ?batchProvisioningSupport == null ? null : batchProvisioningSupport!.toMap(),
      'deleteDependencies': ?deleteDependencies == null ? null : pulumi.Input.encodeList<DeleteDependencyResponse, Map<String, dynamic>>(deleteDependencies!, (value) => value.toMap()),
      'nestedProvisioningSupport': ?nestedProvisioningSupport == null ? null : nestedProvisioningSupport!.toMap(),
    };
  }

  factory ResourceTypeRegistrationPropertiesResourceManagementOptionsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesResourceManagementOptionsResponse(
      batchProvisioningSupport: map['batchProvisioningSupport'] == null ? null : ResourceTypeRegistrationPropertiesResourceManagementOptionsBatchProvisioningSupportResponse.fromMap((map['batchProvisioningSupport'] as Map).cast<String, dynamic>()),
      deleteDependencies: map['deleteDependencies'] == null ? null : pulumi.Input.decodeList<DeleteDependencyResponse>(map['deleteDependencies'], (value) => DeleteDependencyResponse.fromMap((value as Map).cast<String, dynamic>())),
      nestedProvisioningSupport: map['nestedProvisioningSupport'] == null ? null : ResourceTypeRegistrationPropertiesResourceManagementOptionsNestedProvisioningSupportResponse.fromMap((map['nestedProvisioningSupport'] as Map).cast<String, dynamic>()),
    );
  }
}

