// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_machine_reported_properties_response.dart';
import 'operation_detail_response.dart';
import 'ownership_voucher_details_response.dart';
import 'provisioning_details_response.dart';
import 'site_details_response.dart';

/// Properties for edge machine.
class EdgeMachinePropertiesResponse {
  /// Link to Arc Gateway ARM resource Id
  final String? arcGatewayResourceId;
  /// Optional property to create arc machine in custom resource group.
  final String? arcMachineResourceGroupId;
  /// Arc machine instance resource id.
  final String? arcMachineResourceId;
  /// Tracks the ID of the consuming resource, setting the machine as in-use.
  final String claimedBy;
  /// Unique, immutable resource id.
  final String cloudId;
  /// machine connectivity status
  final String connectivityStatus;
  /// A machine can only be assigned to single device pool
  final String devicePoolResourceId;
  /// Edge Machine type.
  final String? edgeMachineKind;
  /// Last time data updated to service.
  final String lastSyncTimestamp;
  /// OS configuration status details
  final String machineState;
  /// operation status details for edge machine.
  final List<OperationDetailResponse> operationDetails;
  /// Ownership voucher details for provisioned machine.
  final OwnershipVoucherDetailsResponse? ownershipVoucherDetails;
  /// Details for device provisioning.
  final ProvisioningDetailsResponse? provisioningDetails;
  /// The provisioning state of a resource.
  final String provisioningState;
  /// Reported properties for edge machine.
  final EdgeMachineReportedPropertiesResponse reportedProperties;
  /// Service fetches common configuration from site.
  final SiteDetailsResponse? siteDetails;

  /// Creates a new [EdgeMachinePropertiesResponse].
  /// [arcGatewayResourceId] Link to Arc Gateway ARM resource Id
  /// [arcMachineResourceGroupId] Optional property to create arc machine in custom resource group.
  /// [arcMachineResourceId] Arc machine instance resource id.
  /// [claimedBy] Tracks the ID of the consuming resource, setting the machine as in-use.
  /// [cloudId] Unique, immutable resource id.
  /// [connectivityStatus] machine connectivity status
  /// [devicePoolResourceId] A machine can only be assigned to single device pool
  /// [edgeMachineKind] Edge Machine type.
  /// [lastSyncTimestamp] Last time data updated to service.
  /// [machineState] OS configuration status details
  /// [operationDetails] operation status details for edge machine.
  /// [ownershipVoucherDetails] Ownership voucher details for provisioned machine.
  /// [provisioningDetails] Details for device provisioning.
  /// [provisioningState] The provisioning state of a resource.
  /// [reportedProperties] Reported properties for edge machine.
  /// [siteDetails] Service fetches common configuration from site.
  EdgeMachinePropertiesResponse({
    this.arcGatewayResourceId,
    this.arcMachineResourceGroupId,
    this.arcMachineResourceId,
    required this.claimedBy,
    required this.cloudId,
    required this.connectivityStatus,
    required this.devicePoolResourceId,
    this.edgeMachineKind,
    required this.lastSyncTimestamp,
    required this.machineState,
    required this.operationDetails,
    this.ownershipVoucherDetails,
    this.provisioningDetails,
    required this.provisioningState,
    required this.reportedProperties,
    this.siteDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcGatewayResourceId': ?arcGatewayResourceId,
      'arcMachineResourceGroupId': ?arcMachineResourceGroupId,
      'arcMachineResourceId': ?arcMachineResourceId,
      'claimedBy': claimedBy,
      'cloudId': cloudId,
      'connectivityStatus': connectivityStatus,
      'devicePoolResourceId': devicePoolResourceId,
      'edgeMachineKind': ?edgeMachineKind,
      'lastSyncTimestamp': lastSyncTimestamp,
      'machineState': machineState,
      'operationDetails': pulumi.Input.encodeList<OperationDetailResponse, Map<String, dynamic>>(operationDetails, (value) => value.toMap()),
      'ownershipVoucherDetails': ?ownershipVoucherDetails == null ? null : ownershipVoucherDetails!.toMap(),
      'provisioningDetails': ?provisioningDetails == null ? null : provisioningDetails!.toMap(),
      'provisioningState': provisioningState,
      'reportedProperties': reportedProperties.toMap(),
      'siteDetails': ?siteDetails == null ? null : siteDetails!.toMap(),
    };
  }

  factory EdgeMachinePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EdgeMachinePropertiesResponse(
      arcGatewayResourceId: map['arcGatewayResourceId'] == null ? null : map['arcGatewayResourceId'] as String,
      arcMachineResourceGroupId: map['arcMachineResourceGroupId'] == null ? null : map['arcMachineResourceGroupId'] as String,
      arcMachineResourceId: map['arcMachineResourceId'] == null ? null : map['arcMachineResourceId'] as String,
      claimedBy: map['claimedBy'] as String,
      cloudId: map['cloudId'] as String,
      connectivityStatus: map['connectivityStatus'] as String,
      devicePoolResourceId: map['devicePoolResourceId'] as String,
      edgeMachineKind: map['edgeMachineKind'] == null ? null : map['edgeMachineKind'] as String,
      lastSyncTimestamp: map['lastSyncTimestamp'] as String,
      machineState: map['machineState'] as String,
      operationDetails: pulumi.Input.decodeList<OperationDetailResponse>(map['operationDetails'], (value) => OperationDetailResponse.fromMap((value as Map).cast<String, dynamic>())),
      ownershipVoucherDetails: map['ownershipVoucherDetails'] == null ? null : OwnershipVoucherDetailsResponse.fromMap((map['ownershipVoucherDetails'] as Map).cast<String, dynamic>()),
      provisioningDetails: map['provisioningDetails'] == null ? null : ProvisioningDetailsResponse.fromMap((map['provisioningDetails'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      reportedProperties: EdgeMachineReportedPropertiesResponse.fromMap((map['reportedProperties'] as Map).cast<String, dynamic>()),
      siteDetails: map['siteDetails'] == null ? null : SiteDetailsResponse.fromMap((map['siteDetails'] as Map).cast<String, dynamic>()),
    );
  }
}

