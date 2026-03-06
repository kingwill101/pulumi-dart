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
  const ManagedIntegrationRuntime({
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
      computeProperties: (() { final guardedValue = map['computeProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeComputeProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customerVirtualNetwork: (() { final guardedValue = map['customerVirtualNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeCustomerVirtualNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedVirtualNetwork: (() { final guardedValue = map['managedVirtualNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedVirtualNetworkReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ssisProperties: (() { final guardedValue = map['ssisProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeSsisProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

