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
  const EdgeMachineProperties({
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
      arcGatewayResourceId: (() { final guardedValue = map['arcGatewayResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arcMachineResourceGroupId: (() { final guardedValue = map['arcMachineResourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arcMachineResourceId: (() { final guardedValue = map['arcMachineResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      edgeMachineKind: (() { final guardedValue = map['edgeMachineKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownershipVoucherDetails: (() { final guardedValue = map['ownershipVoucherDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OwnershipVoucherDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningDetails: (() { final guardedValue = map['provisioningDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProvisioningDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      siteDetails: (() { final guardedValue = map['siteDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SiteDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

