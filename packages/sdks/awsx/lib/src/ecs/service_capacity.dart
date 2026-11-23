// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fargate_service_capacity.dart';
import 'service_capacity_provider.dart';

class ServiceCapacity {
  /// Select Fargate, overriding the cluster default.
  ///
  /// Default - Not explicitly selected.
  final pulumi.Input<FargateServiceCapacity?>? fargate;
  /// Select a nonempty list of existing Managed Instances or EC2 providers. Each must belong to this
  /// service's cluster. Duplicate providers are rejected. List order has no priority semantics.
  ///
  /// Default - Not explicitly selected.
  final pulumi.Input<List<ServiceCapacityProvider>?>? providers;

  /// Creates a new [ServiceCapacity].
  /// [fargate] Select Fargate, overriding the cluster default.
  /// [providers] Select a nonempty list of existing Managed Instances or EC2 providers. Each must belong to this
  const ServiceCapacity({
    this.fargate,
    this.providers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fargate': ?pulumi.Input.mapOptionalInputValue<FargateServiceCapacity, Map<String, dynamic>>(fargate, (value) => value.toMap()),
      'providers': ?pulumi.Input.mapOptionalInputValue<List<ServiceCapacityProvider>, List<Map<String, dynamic>>>(providers, (value) => pulumi.Input.encodeList<ServiceCapacityProvider, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServiceCapacity.fromMap(Map<String, dynamic> map) {
    return ServiceCapacity(
      fargate: (() { final guardedValue = map['fargate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FargateServiceCapacity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      providers: (() { final guardedValue = map['providers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceCapacityProvider>(guardedValue, (value) => ServiceCapacityProvider.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
