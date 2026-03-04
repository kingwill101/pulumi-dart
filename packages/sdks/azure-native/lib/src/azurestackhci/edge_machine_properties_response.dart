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
  final pulumi.Input<String>? arcGatewayResourceId;

  /// Optional property to create arc machine in custom resource group.
  final pulumi.Input<String>? arcMachineResourceGroupId;

  /// Arc machine instance resource id.
  final pulumi.Input<String>? arcMachineResourceId;

  /// Tracks the ID of the consuming resource, setting the machine as in-use.
  final pulumi.Input<String> claimedBy;

  /// Unique, immutable resource id.
  final pulumi.Input<String> cloudId;

  /// machine connectivity status
  final pulumi.Input<String> connectivityStatus;

  /// A machine can only be assigned to single device pool
  final pulumi.Input<String> devicePoolResourceId;

  /// Edge Machine type.
  final pulumi.Input<String>? edgeMachineKind;

  /// Last time data updated to service.
  final pulumi.Input<String> lastSyncTimestamp;

  /// OS configuration status details
  final pulumi.Input<String> machineState;

  /// operation status details for edge machine.
  final pulumi.Input<List<OperationDetailResponse>> operationDetails;

  /// Ownership voucher details for provisioned machine.
  final pulumi.Input<OwnershipVoucherDetailsResponse>? ownershipVoucherDetails;

  /// Details for device provisioning.
  final pulumi.Input<ProvisioningDetailsResponse>? provisioningDetails;

  /// The provisioning state of a resource.
  final pulumi.Input<String> provisioningState;

  /// Reported properties for edge machine.
  final pulumi.Input<EdgeMachineReportedPropertiesResponse> reportedProperties;

  /// Service fetches common configuration from site.
  final pulumi.Input<SiteDetailsResponse>? siteDetails;

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
      'operationDetails':
          pulumi.Input.mapInputValue<
            List<OperationDetailResponse>,
            List<Map<String, dynamic>>
          >(
            operationDetails,
            (value) =>
                pulumi.Input.encodeList<
                  OperationDetailResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ownershipVoucherDetails':
          ?pulumi.Input.mapOptionalInputValue<
            OwnershipVoucherDetailsResponse,
            Map<String, dynamic>
          >(ownershipVoucherDetails, (value) => value.toMap()),
      'provisioningDetails':
          ?pulumi.Input.mapOptionalInputValue<
            ProvisioningDetailsResponse,
            Map<String, dynamic>
          >(provisioningDetails, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'reportedProperties':
          pulumi.Input.mapInputValue<
            EdgeMachineReportedPropertiesResponse,
            Map<String, dynamic>
          >(reportedProperties, (value) => value.toMap()),
      'siteDetails':
          ?pulumi.Input.mapOptionalInputValue<
            SiteDetailsResponse,
            Map<String, dynamic>
          >(siteDetails, (value) => value.toMap()),
    };
  }

  factory EdgeMachinePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EdgeMachinePropertiesResponse(
      arcGatewayResourceId: (() {
        final guardedValue = map['arcGatewayResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      arcMachineResourceGroupId: (() {
        final guardedValue = map['arcMachineResourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      arcMachineResourceId: (() {
        final guardedValue = map['arcMachineResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      claimedBy: pulumi.Input.fromValue(map['claimedBy'] as String),
      cloudId: pulumi.Input.fromValue(map['cloudId'] as String),
      connectivityStatus: pulumi.Input.fromValue(
        map['connectivityStatus'] as String,
      ),
      devicePoolResourceId: pulumi.Input.fromValue(
        map['devicePoolResourceId'] as String,
      ),
      edgeMachineKind: (() {
        final guardedValue = map['edgeMachineKind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastSyncTimestamp: pulumi.Input.fromValue(
        map['lastSyncTimestamp'] as String,
      ),
      machineState: pulumi.Input.fromValue(map['machineState'] as String),
      operationDetails: pulumi.Input.fromValue(
        pulumi.Input.decodeList<OperationDetailResponse>(
          map['operationDetails']!,
          (value) => OperationDetailResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      ownershipVoucherDetails: (() {
        final guardedValue = map['ownershipVoucherDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OwnershipVoucherDetailsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      provisioningDetails: (() {
        final guardedValue = map['provisioningDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ProvisioningDetailsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      reportedProperties: pulumi.Input.fromValue(
        EdgeMachineReportedPropertiesResponse.fromMap(
          (map['reportedProperties']! as Map).cast<String, dynamic>(),
        ),
      ),
      siteDetails: (() {
        final guardedValue = map['siteDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SiteDetailsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
