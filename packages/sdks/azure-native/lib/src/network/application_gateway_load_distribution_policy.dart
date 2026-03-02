// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_load_distribution_target.dart';

/// Load Distribution Policy of an application gateway.
class ApplicationGatewayLoadDistributionPolicy {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Load Distribution Targets resource of an application gateway.
  final pulumi.Input<String>? loadDistributionAlgorithm;
  /// Load Distribution Targets resource of an application gateway.
  final pulumi.Input<List<ApplicationGatewayLoadDistributionTarget>>? loadDistributionTargets;
  /// Name of the load distribution policy that is unique within an Application Gateway.
  final pulumi.Input<String>? name;

  /// Creates a new [ApplicationGatewayLoadDistributionPolicy].
  /// [id] Resource ID.
  /// [loadDistributionAlgorithm] Load Distribution Targets resource of an application gateway.
  /// [loadDistributionTargets] Load Distribution Targets resource of an application gateway.
  /// [name] Name of the load distribution policy that is unique within an Application Gateway.
  ApplicationGatewayLoadDistributionPolicy({
    this.id,
    this.loadDistributionAlgorithm,
    this.loadDistributionTargets,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'loadDistributionAlgorithm': ?loadDistributionAlgorithm,
      'loadDistributionTargets': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayLoadDistributionTarget>, List<Map<String, dynamic>>>(loadDistributionTargets, (value) => pulumi.Input.encodeList<ApplicationGatewayLoadDistributionTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory ApplicationGatewayLoadDistributionPolicy.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayLoadDistributionPolicy(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      loadDistributionAlgorithm: map['loadDistributionAlgorithm'] == null ? null : (map['loadDistributionAlgorithm']! as String).input(),
      loadDistributionTargets: map['loadDistributionTargets'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayLoadDistributionTarget>(map['loadDistributionTargets']!, (value) => ApplicationGatewayLoadDistributionTarget.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

