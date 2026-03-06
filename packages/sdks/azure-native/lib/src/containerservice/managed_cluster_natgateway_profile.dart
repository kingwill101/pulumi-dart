// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_managed_outbound_ipprofile.dart';

/// Profile of the managed cluster NAT gateway.
class ManagedClusterNATGatewayProfile {
  /// Desired outbound flow idle timeout in minutes. Allowed values are in the range of 4 to 120 (inclusive). The default value is 4 minutes.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// Profile of the managed outbound IP resources of the cluster NAT gateway.
  final pulumi.Input<ManagedClusterManagedOutboundIPProfile>? managedOutboundIPProfile;

  /// Creates a new [ManagedClusterNATGatewayProfile].
  /// [idleTimeoutInMinutes] Desired outbound flow idle timeout in minutes. Allowed values are in the range of 4 to 120 (inclusive). The default value is 4 minutes.
  /// [managedOutboundIPProfile] Profile of the managed outbound IP resources of the cluster NAT gateway.
  const ManagedClusterNATGatewayProfile({
    this.idleTimeoutInMinutes,
    this.managedOutboundIPProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'managedOutboundIPProfile': ?pulumi.Input.mapOptionalInputValue<ManagedClusterManagedOutboundIPProfile, Map<String, dynamic>>(managedOutboundIPProfile, (value) => value.toMap()),
    };
  }

  factory ManagedClusterNATGatewayProfile.fromMap(Map<String, dynamic> map) {
    return ManagedClusterNATGatewayProfile(
      idleTimeoutInMinutes: (() { final guardedValue = map['idleTimeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      managedOutboundIPProfile: (() { final guardedValue = map['managedOutboundIPProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterManagedOutboundIPProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

