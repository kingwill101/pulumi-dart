// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_configuration.dart';

/// Properties of the ConnectionPolicy resource.
class ConnectionPolicyProperties {
  /// Enable internet security.
  final pulumi.Input<bool?>? enableInternetSecurity;
  /// The Routing Configuration indicating the associated and propagated route tables on this connection.
  final pulumi.Input<RoutingConfiguration?>? routingConfiguration;

  /// Creates a new [ConnectionPolicyProperties].
  /// [enableInternetSecurity] Enable internet security.
  /// [routingConfiguration] The Routing Configuration indicating the associated and propagated route tables on this connection.
  const ConnectionPolicyProperties({
    this.enableInternetSecurity,
    this.routingConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableInternetSecurity': ?enableInternetSecurity,
      'routingConfiguration': ?pulumi.Input.mapOptionalInputValue<RoutingConfiguration, Map<String, dynamic>>(routingConfiguration, (value) => value.toMap()),
    };
  }

  factory ConnectionPolicyProperties.fromMap(Map<String, dynamic> map) {
    return ConnectionPolicyProperties(
      enableInternetSecurity: (() { final guardedValue = map['enableInternetSecurity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      routingConfiguration: (() { final guardedValue = map['routingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoutingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
