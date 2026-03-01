// ignore_for_file: unused_element, unnecessary_cast

import 'integration_runtime_compute_properties_response.dart';
import 'integration_runtime_customer_virtual_network_response.dart';
import 'integration_runtime_ssis_properties_response.dart';
import 'interactive_query_properties_response.dart';
import 'managed_virtual_network_reference_response.dart';

/// Managed integration runtime, including managed elastic and managed dedicated integration runtimes.
class ManagedIntegrationRuntimeResponse {
  /// The compute resource for managed integration runtime.
  final IntegrationRuntimeComputePropertiesResponse? computeProperties;
  /// The name of virtual network to which Azure-SSIS integration runtime will join
  final IntegrationRuntimeCustomerVirtualNetworkResponse? customerVirtualNetwork;
  /// Integration runtime description.
  final String? description;
  /// Interactive authoring capability reference.
  final InteractiveQueryPropertiesResponse? interactiveQuery;
  /// Managed Virtual Network reference.
  final ManagedVirtualNetworkReferenceResponse? managedVirtualNetwork;
  /// SSIS properties for managed integration runtime.
  final IntegrationRuntimeSsisPropertiesResponse? ssisProperties;
  /// Integration runtime state, only valid for managed dedicated integration runtime.
  final String state;
  /// The type of integration runtime.
  /// Expected value is 'Managed'.
  final String type;

  /// Creates a new [ManagedIntegrationRuntimeResponse].
  /// [computeProperties] The compute resource for managed integration runtime.
  /// [customerVirtualNetwork] The name of virtual network to which Azure-SSIS integration runtime will join
  /// [description] Integration runtime description.
  /// [interactiveQuery] Interactive authoring capability reference.
  /// [managedVirtualNetwork] Managed Virtual Network reference.
  /// [ssisProperties] SSIS properties for managed integration runtime.
  /// [state] Integration runtime state, only valid for managed dedicated integration runtime.
  /// [type] The type of integration runtime.
  ManagedIntegrationRuntimeResponse({
    this.computeProperties,
    this.customerVirtualNetwork,
    this.description,
    this.interactiveQuery,
    this.managedVirtualNetwork,
    this.ssisProperties,
    required this.state,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeProperties': ?computeProperties == null ? null : computeProperties!.toMap(),
      'customerVirtualNetwork': ?customerVirtualNetwork == null ? null : customerVirtualNetwork!.toMap(),
      'description': ?description,
      'interactiveQuery': ?interactiveQuery == null ? null : interactiveQuery!.toMap(),
      'managedVirtualNetwork': ?managedVirtualNetwork == null ? null : managedVirtualNetwork!.toMap(),
      'ssisProperties': ?ssisProperties == null ? null : ssisProperties!.toMap(),
      'state': state,
      'type': type,
    };
  }

  factory ManagedIntegrationRuntimeResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIntegrationRuntimeResponse(
      computeProperties: map['computeProperties'] == null ? null : IntegrationRuntimeComputePropertiesResponse.fromMap((map['computeProperties'] as Map).cast<String, dynamic>()),
      customerVirtualNetwork: map['customerVirtualNetwork'] == null ? null : IntegrationRuntimeCustomerVirtualNetworkResponse.fromMap((map['customerVirtualNetwork'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      interactiveQuery: map['interactiveQuery'] == null ? null : InteractiveQueryPropertiesResponse.fromMap((map['interactiveQuery'] as Map).cast<String, dynamic>()),
      managedVirtualNetwork: map['managedVirtualNetwork'] == null ? null : ManagedVirtualNetworkReferenceResponse.fromMap((map['managedVirtualNetwork'] as Map).cast<String, dynamic>()),
      ssisProperties: map['ssisProperties'] == null ? null : IntegrationRuntimeSsisPropertiesResponse.fromMap((map['ssisProperties'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      type: map['type'] as String,
    );
  }
}

