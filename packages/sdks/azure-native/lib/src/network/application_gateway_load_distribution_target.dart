// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// Load Distribution Target of an application gateway.
class ApplicationGatewayLoadDistributionTarget {
  /// Backend address pool resource of the application gateway.
  final pulumi.Input<SubResource>? backendAddressPool;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the load distribution policy that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// Weight per server. Range between 1 and 100.
  final pulumi.Input<int>? weightPerServer;

  /// Creates a new [ApplicationGatewayLoadDistributionTarget].
  /// [backendAddressPool] Backend address pool resource of the application gateway.
  /// [id] Resource ID.
  /// [name] Name of the load distribution policy that is unique within an Application Gateway.
  /// [weightPerServer] Weight per server. Range between 1 and 100.
  const ApplicationGatewayLoadDistributionTarget({
    this.backendAddressPool,
    this.id,
    this.name,
    this.weightPerServer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPool': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(backendAddressPool, (value) => value.toMap()),
      'id': ?id,
      'name': ?name,
      'weightPerServer': ?weightPerServer,
    };
  }

  factory ApplicationGatewayLoadDistributionTarget.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayLoadDistributionTarget(
      backendAddressPool: (() { final guardedValue = map['backendAddressPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weightPerServer: (() { final guardedValue = map['weightPerServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

