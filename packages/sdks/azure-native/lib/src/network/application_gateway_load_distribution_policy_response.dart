// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_load_distribution_target_response.dart';

/// Load Distribution Policy of an application gateway.
class ApplicationGatewayLoadDistributionPolicyResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Load Distribution Targets resource of an application gateway.
  final pulumi.Input<String>? loadDistributionAlgorithm;
  /// Load Distribution Targets resource of an application gateway.
  final pulumi.Input<List<ApplicationGatewayLoadDistributionTargetResponse>>? loadDistributionTargets;
  /// Name of the load distribution policy that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// The provisioning state of the Load Distribution Policy resource.
  final pulumi.Input<String> provisioningState;
  /// Type of the resource.
  final pulumi.Input<String> type;

  /// Creates a new [ApplicationGatewayLoadDistributionPolicyResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [loadDistributionAlgorithm] Load Distribution Targets resource of an application gateway.
  /// [loadDistributionTargets] Load Distribution Targets resource of an application gateway.
  /// [name] Name of the load distribution policy that is unique within an Application Gateway.
  /// [provisioningState] The provisioning state of the Load Distribution Policy resource.
  /// [type] Type of the resource.
  ApplicationGatewayLoadDistributionPolicyResponse({
    required this.etag,
    this.id,
    this.loadDistributionAlgorithm,
    this.loadDistributionTargets,
    this.name,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'loadDistributionAlgorithm': ?loadDistributionAlgorithm,
      'loadDistributionTargets': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayLoadDistributionTargetResponse>, List<Map<String, dynamic>>>(loadDistributionTargets, (value) => pulumi.Input.encodeList<ApplicationGatewayLoadDistributionTargetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory ApplicationGatewayLoadDistributionPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayLoadDistributionPolicyResponse(
      etag: (map['etag'] as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      loadDistributionAlgorithm: map['loadDistributionAlgorithm'] == null ? null : (map['loadDistributionAlgorithm']! as String).input(),
      loadDistributionTargets: map['loadDistributionTargets'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayLoadDistributionTargetResponse>(map['loadDistributionTargets']!, (value) => ApplicationGatewayLoadDistributionTargetResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

