// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_managed_outbound_ipprofile_response.dart';
import 'resource_reference_response.dart';

/// Profile of the managed cluster NAT gateway.
class ManagedClusterNATGatewayProfileResponse {
  /// The effective outbound IP resources of the cluster NAT gateway.
  final pulumi.Input<List<ResourceReferenceResponse>> effectiveOutboundIPs;
  /// Desired outbound flow idle timeout in minutes. Allowed values are in the range of 4 to 120 (inclusive). The default value is 4 minutes.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// Profile of the managed outbound IP resources of the cluster NAT gateway.
  final pulumi.Input<ManagedClusterManagedOutboundIPProfileResponse>? managedOutboundIPProfile;

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
      'effectiveOutboundIPs': pulumi.Input.mapInputValue<List<ResourceReferenceResponse>, List<Map<String, dynamic>>>(effectiveOutboundIPs, (value) => pulumi.Input.encodeList<ResourceReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'managedOutboundIPProfile': ?pulumi.Input.mapOptionalInputValue<ManagedClusterManagedOutboundIPProfileResponse, Map<String, dynamic>>(managedOutboundIPProfile, (value) => value.toMap()),
    };
  }

  factory ManagedClusterNATGatewayProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterNATGatewayProfileResponse(
      effectiveOutboundIPs: pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceReferenceResponse>(map['effectiveOutboundIPs']!, (value) => ResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      idleTimeoutInMinutes: (() { final guardedValue = map['idleTimeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      managedOutboundIPProfile: (() { final guardedValue = map['managedOutboundIPProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterManagedOutboundIPProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

