// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_compute_properties.dart';
import 'integration_runtime_customer_virtual_network.dart';
import 'integration_runtime_ssis_properties.dart';
import 'managed_virtual_network_reference.dart';

/// Managed integration runtime, including managed elastic and managed dedicated integration runtimes.
class ManagedIntegrationRuntime {
  /// The compute resource for managed integration runtime.
  final pulumi.Input<IntegrationRuntimeComputeProperties>? computeProperties;
  /// The name of virtual network to which Azure-SSIS integration runtime will join
  final pulumi.Input<IntegrationRuntimeCustomerVirtualNetwork>? customerVirtualNetwork;
  /// Integration runtime description.
  final pulumi.Input<String>? description;
  /// Managed Virtual Network reference.
  final pulumi.Input<ManagedVirtualNetworkReference>? managedVirtualNetwork;
  /// SSIS properties for managed integration runtime.
  final pulumi.Input<IntegrationRuntimeSsisProperties>? ssisProperties;
  /// The type of integration runtime.
  /// Expected value is 'Managed'.
  final pulumi.Input<String> type;

  /// Creates a new [ManagedIntegrationRuntime].
  /// [computeProperties] The compute resource for managed integration runtime.
  /// [customerVirtualNetwork] The name of virtual network to which Azure-SSIS integration runtime will join
  /// [description] Integration runtime description.
  /// [managedVirtualNetwork] Managed Virtual Network reference.
  /// [ssisProperties] SSIS properties for managed integration runtime.
  /// [type] The type of integration runtime.
  ManagedIntegrationRuntime({
    this.computeProperties,
    this.customerVirtualNetwork,
    this.description,
    this.managedVirtualNetwork,
    this.ssisProperties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeProperties': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeComputeProperties, Map<String, dynamic>>(computeProperties, (value) => value.toMap()),
      'customerVirtualNetwork': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeCustomerVirtualNetwork, Map<String, dynamic>>(customerVirtualNetwork, (value) => value.toMap()),
      'description': ?description,
      'managedVirtualNetwork': ?pulumi.Input.mapOptionalInputValue<ManagedVirtualNetworkReference, Map<String, dynamic>>(managedVirtualNetwork, (value) => value.toMap()),
      'ssisProperties': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeSsisProperties, Map<String, dynamic>>(ssisProperties, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ManagedIntegrationRuntime.fromMap(Map<String, dynamic> map) {
    return ManagedIntegrationRuntime(
      computeProperties: map['computeProperties'] == null ? null : (IntegrationRuntimeComputeProperties.fromMap((map['computeProperties'] as Map).cast<String, dynamic>())).input(),
      customerVirtualNetwork: map['customerVirtualNetwork'] == null ? null : (IntegrationRuntimeCustomerVirtualNetwork.fromMap((map['customerVirtualNetwork'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      managedVirtualNetwork: map['managedVirtualNetwork'] == null ? null : (ManagedVirtualNetworkReference.fromMap((map['managedVirtualNetwork'] as Map).cast<String, dynamic>())).input(),
      ssisProperties: map['ssisProperties'] == null ? null : (IntegrationRuntimeSsisProperties.fromMap((map['ssisProperties'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

