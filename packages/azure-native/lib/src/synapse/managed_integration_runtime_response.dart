// ignore_for_file: unused_element, unnecessary_cast

import 'integration_runtime_compute_properties_response.dart';
import 'integration_runtime_customer_virtual_network_response.dart';
import 'integration_runtime_ssis_properties_response.dart';

/// Managed integration runtime, including managed elastic and managed dedicated integration runtimes.
class ManagedIntegrationRuntimeResponse {
  /// The compute resource for managed integration runtime.
  final IntegrationRuntimeComputePropertiesResponse? computeProperties;
  /// The name of virtual network to which Azure-SSIS integration runtime will join
  final IntegrationRuntimeCustomerVirtualNetworkResponse? customerVirtualNetwork;
  /// Integration runtime description.
  final String? description;
  /// The id of the managed virtual network.
  final String? id;
  /// Integration runtime state, only valid for managed dedicated integration runtime.
  final String provisioningState;
  /// The reference name of the managed virtual network
  final String? referenceName;
  /// SSIS properties for managed integration runtime.
  final IntegrationRuntimeSsisPropertiesResponse? ssisProperties;
  /// The type of integration runtime.
  /// Expected value is 'Managed'.
  final String type;

  /// Creates a new [ManagedIntegrationRuntimeResponse].
  /// [computeProperties] The compute resource for managed integration runtime.
  /// [customerVirtualNetwork] The name of virtual network to which Azure-SSIS integration runtime will join
  /// [description] Integration runtime description.
  /// [id] The id of the managed virtual network.
  /// [provisioningState] Integration runtime state, only valid for managed dedicated integration runtime.
  /// [referenceName] The reference name of the managed virtual network
  /// [ssisProperties] SSIS properties for managed integration runtime.
  /// [type] The type of integration runtime.
  ManagedIntegrationRuntimeResponse({
    this.computeProperties,
    this.customerVirtualNetwork,
    this.description,
    this.id,
    required this.provisioningState,
    this.referenceName,
    this.ssisProperties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeProperties': ?computeProperties == null ? null : computeProperties!.toMap(),
      'customerVirtualNetwork': ?customerVirtualNetwork == null ? null : customerVirtualNetwork!.toMap(),
      'description': ?description,
      'id': ?id,
      'provisioningState': provisioningState,
      'referenceName': ?referenceName,
      'ssisProperties': ?ssisProperties == null ? null : ssisProperties!.toMap(),
      'type': type,
    };
  }

  factory ManagedIntegrationRuntimeResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIntegrationRuntimeResponse(
      computeProperties: map['computeProperties'] == null ? null : IntegrationRuntimeComputePropertiesResponse.fromMap((map['computeProperties'] as Map).cast<String, dynamic>()),
      customerVirtualNetwork: map['customerVirtualNetwork'] == null ? null : IntegrationRuntimeCustomerVirtualNetworkResponse.fromMap((map['customerVirtualNetwork'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      provisioningState: map['provisioningState'] as String,
      referenceName: map['referenceName'] == null ? null : map['referenceName'] as String,
      ssisProperties: map['ssisProperties'] == null ? null : IntegrationRuntimeSsisPropertiesResponse.fromMap((map['ssisProperties'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

