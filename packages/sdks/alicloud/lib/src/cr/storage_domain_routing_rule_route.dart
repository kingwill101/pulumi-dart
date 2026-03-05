// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageDomainRoutingRuleRoute {
  /// Endpoint Type.
  final pulumi.Input<String> endpointType;
  /// Instance domain name.
  final pulumi.Input<String> instanceDomain;
  /// Storage domain name.
  final pulumi.Input<String> storageDomain;

  /// Creates a new [StorageDomainRoutingRuleRoute].
  /// [endpointType] Endpoint Type.
  /// [instanceDomain] Instance domain name.
  /// [storageDomain] Storage domain name.
  StorageDomainRoutingRuleRoute({
    required this.endpointType,
    required this.instanceDomain,
    required this.storageDomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointType': endpointType,
      'instanceDomain': instanceDomain,
      'storageDomain': storageDomain,
    };
  }

  factory StorageDomainRoutingRuleRoute.fromMap(Map<String, dynamic> map) {
    return StorageDomainRoutingRuleRoute(
      endpointType: pulumi.Input.fromValue(map['endpointType'] as String),
      instanceDomain: pulumi.Input.fromValue(map['instanceDomain'] as String),
      storageDomain: pulumi.Input.fromValue(map['storageDomain'] as String),
    );
  }
}

