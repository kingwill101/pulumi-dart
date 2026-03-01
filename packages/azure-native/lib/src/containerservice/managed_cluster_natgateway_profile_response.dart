// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_managed_outbound_ipprofile_response.dart';
import 'resource_reference_response.dart';

/// Profile of the managed cluster NAT gateway.
class ManagedClusterNATGatewayProfileResponse {
  /// The effective outbound IP resources of the cluster NAT gateway.
  final List<ResourceReferenceResponse> effectiveOutboundIPs;
  /// Desired outbound flow idle timeout in minutes. Allowed values are in the range of 4 to 120 (inclusive). The default value is 4 minutes.
  final int? idleTimeoutInMinutes;
  /// Profile of the managed outbound IP resources of the cluster NAT gateway.
  final ManagedClusterManagedOutboundIPProfileResponse? managedOutboundIPProfile;

  /// Creates a new [ManagedClusterNATGatewayProfileResponse].
  /// [effectiveOutboundIPs] The effective outbound IP resources of the cluster NAT gateway.
  /// [idleTimeoutInMinutes] Desired outbound flow idle timeout in minutes. Allowed values are in the range of 4 to 120 (inclusive). The default value is 4 minutes.
  /// [managedOutboundIPProfile] Profile of the managed outbound IP resources of the cluster NAT gateway.
  ManagedClusterNATGatewayProfileResponse({
    required this.effectiveOutboundIPs,
    this.idleTimeoutInMinutes,
    this.managedOutboundIPProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveOutboundIPs': pulumi.Input.encodeList<ResourceReferenceResponse, Map<String, dynamic>>(effectiveOutboundIPs, (value) => value.toMap()),
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'managedOutboundIPProfile': ?managedOutboundIPProfile == null ? null : managedOutboundIPProfile!.toMap(),
    };
  }

  factory ManagedClusterNATGatewayProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterNATGatewayProfileResponse(
      effectiveOutboundIPs: pulumi.Input.decodeList<ResourceReferenceResponse>(map['effectiveOutboundIPs'], (value) => ResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : map['idleTimeoutInMinutes'] as int,
      managedOutboundIPProfile: map['managedOutboundIPProfile'] == null ? null : ManagedClusterManagedOutboundIPProfileResponse.fromMap((map['managedOutboundIPProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

