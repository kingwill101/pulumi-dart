// ignore_for_file: unused_element, unnecessary_cast

import 'ownership_voucher_details.dart';
import 'provisioning_details.dart';
import 'site_details.dart';

/// Properties for edge machine.
class EdgeMachineProperties {
  /// Link to Arc Gateway ARM resource Id
  final String? arcGatewayResourceId;
  /// Optional property to create arc machine in custom resource group.
  final String? arcMachineResourceGroupId;
  /// Arc machine instance resource id.
  final String? arcMachineResourceId;
  /// Edge Machine type.
  final String? edgeMachineKind;
  /// Ownership voucher details for provisioned machine.
  final OwnershipVoucherDetails? ownershipVoucherDetails;
  /// Details for device provisioning.
  final ProvisioningDetails? provisioningDetails;
  /// Service fetches common configuration from site.
  final SiteDetails? siteDetails;

  /// Creates a new [EdgeMachineProperties].
  /// [arcGatewayResourceId] Link to Arc Gateway ARM resource Id
  /// [arcMachineResourceGroupId] Optional property to create arc machine in custom resource group.
  /// [arcMachineResourceId] Arc machine instance resource id.
  /// [edgeMachineKind] Edge Machine type.
  /// [ownershipVoucherDetails] Ownership voucher details for provisioned machine.
  /// [provisioningDetails] Details for device provisioning.
  /// [siteDetails] Service fetches common configuration from site.
  EdgeMachineProperties({
    this.arcGatewayResourceId,
    this.arcMachineResourceGroupId,
    this.arcMachineResourceId,
    this.edgeMachineKind,
    this.ownershipVoucherDetails,
    this.provisioningDetails,
    this.siteDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcGatewayResourceId': ?arcGatewayResourceId,
      'arcMachineResourceGroupId': ?arcMachineResourceGroupId,
      'arcMachineResourceId': ?arcMachineResourceId,
      'edgeMachineKind': ?edgeMachineKind,
      'ownershipVoucherDetails': ?ownershipVoucherDetails == null ? null : ownershipVoucherDetails!.toMap(),
      'provisioningDetails': ?provisioningDetails == null ? null : provisioningDetails!.toMap(),
      'siteDetails': ?siteDetails == null ? null : siteDetails!.toMap(),
    };
  }

  factory EdgeMachineProperties.fromMap(Map<String, dynamic> map) {
    return EdgeMachineProperties(
      arcGatewayResourceId: map['arcGatewayResourceId'] == null ? null : map['arcGatewayResourceId'] as String,
      arcMachineResourceGroupId: map['arcMachineResourceGroupId'] == null ? null : map['arcMachineResourceGroupId'] as String,
      arcMachineResourceId: map['arcMachineResourceId'] == null ? null : map['arcMachineResourceId'] as String,
      edgeMachineKind: map['edgeMachineKind'] == null ? null : map['edgeMachineKind'] as String,
      ownershipVoucherDetails: map['ownershipVoucherDetails'] == null ? null : OwnershipVoucherDetails.fromMap((map['ownershipVoucherDetails'] as Map).cast<String, dynamic>()),
      provisioningDetails: map['provisioningDetails'] == null ? null : ProvisioningDetails.fromMap((map['provisioningDetails'] as Map).cast<String, dynamic>()),
      siteDetails: map['siteDetails'] == null ? null : SiteDetails.fromMap((map['siteDetails'] as Map).cast<String, dynamic>()),
    );
  }
}

