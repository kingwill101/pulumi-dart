// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_load_distribution_target_response.dart';

/// Load Distribution Policy of an application gateway.
class ApplicationGatewayLoadDistributionPolicyResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Load Distribution Targets resource of an application gateway.
  final String? loadDistributionAlgorithm;
  /// Load Distribution Targets resource of an application gateway.
  final List<ApplicationGatewayLoadDistributionTargetResponse>? loadDistributionTargets;
  /// Name of the load distribution policy that is unique within an Application Gateway.
  final String? name;
  /// The provisioning state of the Load Distribution Policy resource.
  final String provisioningState;
  /// Type of the resource.
  final String type;

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
      'loadDistributionTargets': ?loadDistributionTargets == null ? null : pulumi.Input.encodeList<ApplicationGatewayLoadDistributionTargetResponse, Map<String, dynamic>>(loadDistributionTargets!, (value) => value.toMap()),
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory ApplicationGatewayLoadDistributionPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayLoadDistributionPolicyResponse(
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      loadDistributionAlgorithm: map['loadDistributionAlgorithm'] == null ? null : map['loadDistributionAlgorithm'] as String,
      loadDistributionTargets: map['loadDistributionTargets'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayLoadDistributionTargetResponse>(map['loadDistributionTargets'], (value) => ApplicationGatewayLoadDistributionTargetResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}

