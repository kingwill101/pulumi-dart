// ignore_for_file: unused_element, unnecessary_cast

import 'integration_runtime_compute_properties.dart';
import 'integration_runtime_customer_virtual_network.dart';
import 'integration_runtime_ssis_properties.dart';
import 'managed_virtual_network_reference.dart';

/// Managed integration runtime, including managed elastic and managed dedicated integration runtimes.
class ManagedIntegrationRuntime {
  /// The compute resource for managed integration runtime.
  final IntegrationRuntimeComputeProperties? computeProperties;
  /// The name of virtual network to which Azure-SSIS integration runtime will join
  final IntegrationRuntimeCustomerVirtualNetwork? customerVirtualNetwork;
  /// Integration runtime description.
  final String? description;
  /// Managed Virtual Network reference.
  final ManagedVirtualNetworkReference? managedVirtualNetwork;
  /// SSIS properties for managed integration runtime.
  final IntegrationRuntimeSsisProperties? ssisProperties;
  /// The type of integration runtime.
  /// Expected value is 'Managed'.
  final String type;

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
      'computeProperties': ?computeProperties == null ? null : computeProperties!.toMap(),
      'customerVirtualNetwork': ?customerVirtualNetwork == null ? null : customerVirtualNetwork!.toMap(),
      'description': ?description,
      'managedVirtualNetwork': ?managedVirtualNetwork == null ? null : managedVirtualNetwork!.toMap(),
      'ssisProperties': ?ssisProperties == null ? null : ssisProperties!.toMap(),
      'type': type,
    };
  }

  factory ManagedIntegrationRuntime.fromMap(Map<String, dynamic> map) {
    return ManagedIntegrationRuntime(
      computeProperties: map['computeProperties'] == null ? null : IntegrationRuntimeComputeProperties.fromMap((map['computeProperties'] as Map).cast<String, dynamic>()),
      customerVirtualNetwork: map['customerVirtualNetwork'] == null ? null : IntegrationRuntimeCustomerVirtualNetwork.fromMap((map['customerVirtualNetwork'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      managedVirtualNetwork: map['managedVirtualNetwork'] == null ? null : ManagedVirtualNetworkReference.fromMap((map['managedVirtualNetwork'] as Map).cast<String, dynamic>()),
      ssisProperties: map['ssisProperties'] == null ? null : IntegrationRuntimeSsisProperties.fromMap((map['ssisProperties'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

