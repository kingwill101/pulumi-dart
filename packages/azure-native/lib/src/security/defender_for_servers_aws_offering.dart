// ignore_for_file: unused_element, unnecessary_cast

import 'defender_for_servers_aws_offering_arc_auto_provisioning.dart';
import 'defender_for_servers_aws_offering_defender_for_servers.dart';
import 'defender_for_servers_aws_offering_mde_auto_provisioning.dart';
import 'defender_for_servers_aws_offering_sub_plan.dart';
import 'defender_for_servers_aws_offering_va_auto_provisioning.dart';
import 'defender_for_servers_aws_offering_vm_scanners.dart';

/// The Defender for Servers AWS offering
class DefenderForServersAwsOffering {
  /// The ARC autoprovisioning configuration
  final DefenderForServersAwsOfferingArcAutoProvisioning? arcAutoProvisioning;
  /// The Defender for servers connection configuration
  final DefenderForServersAwsOfferingDefenderForServers? defenderForServers;
  /// The Microsoft Defender for Endpoint autoprovisioning configuration
  final DefenderForServersAwsOfferingMdeAutoProvisioning? mdeAutoProvisioning;
  /// The type of the security offering.
  /// Expected value is 'DefenderForServersAws'.
  final String offeringType;
  /// configuration for the servers offering subPlan
  final DefenderForServersAwsOfferingSubPlan? subPlan;
  /// The Vulnerability Assessment autoprovisioning configuration
  final DefenderForServersAwsOfferingVaAutoProvisioning? vaAutoProvisioning;
  /// The Microsoft Defender for Server VM scanning configuration
  final DefenderForServersAwsOfferingVmScanners? vmScanners;

  /// Creates a new [DefenderForServersAwsOffering].
  /// [arcAutoProvisioning] The ARC autoprovisioning configuration
  /// [defenderForServers] The Defender for servers connection configuration
  /// [mdeAutoProvisioning] The Microsoft Defender for Endpoint autoprovisioning configuration
  /// [offeringType] The type of the security offering.
  /// [subPlan] configuration for the servers offering subPlan
  /// [vaAutoProvisioning] The Vulnerability Assessment autoprovisioning configuration
  /// [vmScanners] The Microsoft Defender for Server VM scanning configuration
  DefenderForServersAwsOffering({
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

  factory DefenderForServersAwsOffering.fromMap(Map<String, dynamic> map) {
    return DefenderForServersAwsOffering(
      arcAutoProvisioning: map['arcAutoProvisioning'] == null ? null : DefenderForServersAwsOfferingArcAutoProvisioning.fromMap((map['arcAutoProvisioning'] as Map).cast<String, dynamic>()),
      defenderForServers: map['defenderForServers'] == null ? null : DefenderForServersAwsOfferingDefenderForServers.fromMap((map['defenderForServers'] as Map).cast<String, dynamic>()),
      mdeAutoProvisioning: map['mdeAutoProvisioning'] == null ? null : DefenderForServersAwsOfferingMdeAutoProvisioning.fromMap((map['mdeAutoProvisioning'] as Map).cast<String, dynamic>()),
      offeringType: map['offeringType'] as String,
      subPlan: map['subPlan'] == null ? null : DefenderForServersAwsOfferingSubPlan.fromMap((map['subPlan'] as Map).cast<String, dynamic>()),
      vaAutoProvisioning: map['vaAutoProvisioning'] == null ? null : DefenderForServersAwsOfferingVaAutoProvisioning.fromMap((map['vaAutoProvisioning'] as Map).cast<String, dynamic>()),
      vmScanners: map['vmScanners'] == null ? null : DefenderForServersAwsOfferingVmScanners.fromMap((map['vmScanners'] as Map).cast<String, dynamic>()),
    );
  }
}

