// ignore_for_file: unused_element, unnecessary_cast

import 'defender_for_servers_gcp_offering_arc_auto_provisioning.dart';
import 'defender_for_servers_gcp_offering_defender_for_servers.dart';
import 'defender_for_servers_gcp_offering_mde_auto_provisioning.dart';
import 'defender_for_servers_gcp_offering_sub_plan.dart';
import 'defender_for_servers_gcp_offering_va_auto_provisioning.dart';
import 'defender_for_servers_gcp_offering_vm_scanners.dart';

/// The Defender for Servers GCP offering configurations
class DefenderForServersGcpOffering {
  /// The ARC autoprovisioning configuration
  final DefenderForServersGcpOfferingArcAutoProvisioning? arcAutoProvisioning;
  /// The Defender for servers connection configuration
  final DefenderForServersGcpOfferingDefenderForServers? defenderForServers;
  /// The Microsoft Defender for Endpoint autoprovisioning configuration
  final DefenderForServersGcpOfferingMdeAutoProvisioning? mdeAutoProvisioning;
  /// The type of the security offering.
  /// Expected value is 'DefenderForServersGcp'.
  final String offeringType;
  /// configuration for the servers offering subPlan
  final DefenderForServersGcpOfferingSubPlan? subPlan;
  /// The Vulnerability Assessment autoprovisioning configuration
  final DefenderForServersGcpOfferingVaAutoProvisioning? vaAutoProvisioning;
  /// The Microsoft Defender for Server VM scanning configuration
  final DefenderForServersGcpOfferingVmScanners? vmScanners;

  /// Creates a new [DefenderForServersGcpOffering].
  /// [arcAutoProvisioning] The ARC autoprovisioning configuration
  /// [defenderForServers] The Defender for servers connection configuration
  /// [mdeAutoProvisioning] The Microsoft Defender for Endpoint autoprovisioning configuration
  /// [offeringType] The type of the security offering.
  /// [subPlan] configuration for the servers offering subPlan
  /// [vaAutoProvisioning] The Vulnerability Assessment autoprovisioning configuration
  /// [vmScanners] The Microsoft Defender for Server VM scanning configuration
  DefenderForServersGcpOffering({
    this.arcAutoProvisioning,
    this.defenderForServers,
    this.mdeAutoProvisioning,
    required this.offeringType,
    this.subPlan,
    this.vaAutoProvisioning,
    this.vmScanners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcAutoProvisioning': ?arcAutoProvisioning == null ? null : arcAutoProvisioning!.toMap(),
      'defenderForServers': ?defenderForServers == null ? null : defenderForServers!.toMap(),
      'mdeAutoProvisioning': ?mdeAutoProvisioning == null ? null : mdeAutoProvisioning!.toMap(),
      'offeringType': offeringType,
      'subPlan': ?subPlan == null ? null : subPlan!.toMap(),
      'vaAutoProvisioning': ?vaAutoProvisioning == null ? null : vaAutoProvisioning!.toMap(),
      'vmScanners': ?vmScanners == null ? null : vmScanners!.toMap(),
    };
  }

  factory DefenderForServersGcpOffering.fromMap(Map<String, dynamic> map) {
    return DefenderForServersGcpOffering(
      arcAutoProvisioning: map['arcAutoProvisioning'] == null ? null : DefenderForServersGcpOfferingArcAutoProvisioning.fromMap((map['arcAutoProvisioning'] as Map).cast<String, dynamic>()),
      defenderForServers: map['defenderForServers'] == null ? null : DefenderForServersGcpOfferingDefenderForServers.fromMap((map['defenderForServers'] as Map).cast<String, dynamic>()),
      mdeAutoProvisioning: map['mdeAutoProvisioning'] == null ? null : DefenderForServersGcpOfferingMdeAutoProvisioning.fromMap((map['mdeAutoProvisioning'] as Map).cast<String, dynamic>()),
      offeringType: map['offeringType'] as String,
      subPlan: map['subPlan'] == null ? null : DefenderForServersGcpOfferingSubPlan.fromMap((map['subPlan'] as Map).cast<String, dynamic>()),
      vaAutoProvisioning: map['vaAutoProvisioning'] == null ? null : DefenderForServersGcpOfferingVaAutoProvisioning.fromMap((map['vaAutoProvisioning'] as Map).cast<String, dynamic>()),
      vmScanners: map['vmScanners'] == null ? null : DefenderForServersGcpOfferingVmScanners.fromMap((map['vmScanners'] as Map).cast<String, dynamic>()),
    );
  }
}

