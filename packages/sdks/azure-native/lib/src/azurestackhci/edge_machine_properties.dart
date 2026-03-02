// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ownership_voucher_details.dart';
import 'provisioning_details.dart';
import 'site_details.dart';

/// Properties for edge machine.
class EdgeMachineProperties {
  /// Link to Arc Gateway ARM resource Id
  final pulumi.Input<String>? arcGatewayResourceId;
  /// Optional property to create arc machine in custom resource group.
  final pulumi.Input<String>? arcMachineResourceGroupId;
  /// Arc machine instance resource id.
  final pulumi.Input<String>? arcMachineResourceId;
  /// Edge Machine type.
  final pulumi.Input<String>? edgeMachineKind;
  /// Ownership voucher details for provisioned machine.
  final pulumi.Input<OwnershipVoucherDetails>? ownershipVoucherDetails;
  /// Details for device provisioning.
  final pulumi.Input<ProvisioningDetails>? provisioningDetails;
  /// Service fetches common configuration from site.
  final pulumi.Input<SiteDetails>? siteDetails;

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
      'ownershipVoucherDetails': ?pulumi.Input.mapOptionalInputValue<OwnershipVoucherDetails, Map<String, dynamic>>(ownershipVoucherDetails, (value) => value.toMap()),
      'provisioningDetails': ?pulumi.Input.mapOptionalInputValue<ProvisioningDetails, Map<String, dynamic>>(provisioningDetails, (value) => value.toMap()),
      'siteDetails': ?pulumi.Input.mapOptionalInputValue<SiteDetails, Map<String, dynamic>>(siteDetails, (value) => value.toMap()),
    };
  }

  factory EdgeMachineProperties.fromMap(Map<String, dynamic> map) {
    return EdgeMachineProperties(
      arcGatewayResourceId: map['arcGatewayResourceId'] == null ? null : (map['arcGatewayResourceId'] as String).input(),
      arcMachineResourceGroupId: map['arcMachineResourceGroupId'] == null ? null : (map['arcMachineResourceGroupId'] as String).input(),
      arcMachineResourceId: map['arcMachineResourceId'] == null ? null : (map['arcMachineResourceId'] as String).input(),
      edgeMachineKind: map['edgeMachineKind'] == null ? null : (map['edgeMachineKind'] as String).input(),
      ownershipVoucherDetails: map['ownershipVoucherDetails'] == null ? null : (OwnershipVoucherDetails.fromMap((map['ownershipVoucherDetails'] as Map).cast<String, dynamic>())).input(),
      provisioningDetails: map['provisioningDetails'] == null ? null : (ProvisioningDetails.fromMap((map['provisioningDetails'] as Map).cast<String, dynamic>())).input(),
      siteDetails: map['siteDetails'] == null ? null : (SiteDetails.fromMap((map['siteDetails'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

