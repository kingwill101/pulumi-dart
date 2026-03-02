// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_compute_properties_response.dart';
import 'integration_runtime_customer_virtual_network_response.dart';
import 'integration_runtime_ssis_properties_response.dart';
import 'interactive_query_properties_response.dart';
import 'managed_virtual_network_reference_response.dart';

/// Managed integration runtime, including managed elastic and managed dedicated integration runtimes.
class ManagedIntegrationRuntimeResponse {
  /// The compute resource for managed integration runtime.
  final pulumi.Input<IntegrationRuntimeComputePropertiesResponse>? computeProperties;
  /// The name of virtual network to which Azure-SSIS integration runtime will join
  final pulumi.Input<IntegrationRuntimeCustomerVirtualNetworkResponse>? customerVirtualNetwork;
  /// Integration runtime description.
  final pulumi.Input<String>? description;
  /// Interactive authoring capability reference.
  final pulumi.Input<InteractiveQueryPropertiesResponse>? interactiveQuery;
  /// Managed Virtual Network reference.
  final pulumi.Input<ManagedVirtualNetworkReferenceResponse>? managedVirtualNetwork;
  /// SSIS properties for managed integration runtime.
  final pulumi.Input<IntegrationRuntimeSsisPropertiesResponse>? ssisProperties;
  /// Integration runtime state, only valid for managed dedicated integration runtime.
  final pulumi.Input<String> state;
  /// The type of integration runtime.
  /// Expected value is 'Managed'.
  final pulumi.Input<String> type;

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
      'computeProperties': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeComputePropertiesResponse, Map<String, dynamic>>(computeProperties, (value) => value.toMap()),
      'customerVirtualNetwork': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeCustomerVirtualNetworkResponse, Map<String, dynamic>>(customerVirtualNetwork, (value) => value.toMap()),
      'description': ?description,
      'interactiveQuery': ?pulumi.Input.mapOptionalInputValue<InteractiveQueryPropertiesResponse, Map<String, dynamic>>(interactiveQuery, (value) => value.toMap()),
      'managedVirtualNetwork': ?pulumi.Input.mapOptionalInputValue<ManagedVirtualNetworkReferenceResponse, Map<String, dynamic>>(managedVirtualNetwork, (value) => value.toMap()),
      'ssisProperties': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeSsisPropertiesResponse, Map<String, dynamic>>(ssisProperties, (value) => value.toMap()),
      'state': state,
      'type': type,
    };
  }

  factory ManagedIntegrationRuntimeResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIntegrationRuntimeResponse(
      computeProperties: map['computeProperties'] == null ? null : (IntegrationRuntimeComputePropertiesResponse.fromMap((map['computeProperties'] as Map).cast<String, dynamic>())).input(),
      customerVirtualNetwork: map['customerVirtualNetwork'] == null ? null : (IntegrationRuntimeCustomerVirtualNetworkResponse.fromMap((map['customerVirtualNetwork'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      interactiveQuery: map['interactiveQuery'] == null ? null : (InteractiveQueryPropertiesResponse.fromMap((map['interactiveQuery'] as Map).cast<String, dynamic>())).input(),
      managedVirtualNetwork: map['managedVirtualNetwork'] == null ? null : (ManagedVirtualNetworkReferenceResponse.fromMap((map['managedVirtualNetwork'] as Map).cast<String, dynamic>())).input(),
      ssisProperties: map['ssisProperties'] == null ? null : (IntegrationRuntimeSsisPropertiesResponse.fromMap((map['ssisProperties'] as Map).cast<String, dynamic>())).input(),
      state: (map['state'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

