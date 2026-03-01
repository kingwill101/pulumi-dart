// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';

/// Defines the status of a guest agent installation.
class GuestAgentInstallStatusResponse {
  /// The hybrid machine agent full version.
  final String agentVersion;
  /// Details about the error state.
  final List<ErrorDetailResponse> errorDetails;
  /// The time of the last status change.
  final String lastStatusChange;
  /// The installation status of the hybrid machine agent installation.
  final String status;
  /// Specifies the VM's unique SMBIOS ID.
  final String vmUuid;

  /// Creates a new [GuestAgentInstallStatusResponse].
  /// [agentVersion] The hybrid machine agent full version.
  /// [errorDetails] Details about the error state.
  /// [lastStatusChange] The time of the last status change.
  /// [status] The installation status of the hybrid machine agent installation.
  /// [vmUuid] Specifies the VM's unique SMBIOS ID.
  GuestAgentInstallStatusResponse({
    required this.agentVersion,
    required this.errorDetails,
    required this.lastStatusChange,
    required this.status,
    required this.vmUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentVersion': agentVersion,
      'errorDetails': pulumi.Input.encodeList<ErrorDetailResponse, Map<String, dynamic>>(errorDetails, (value) => value.toMap()),
      'lastStatusChange': lastStatusChange,
      'status': status,
      'vmUuid': vmUuid,
    };
  }

  factory GuestAgentInstallStatusResponse.fromMap(Map<String, dynamic> map) {
    return GuestAgentInstallStatusResponse(
      agentVersion: map['agentVersion'] as String,
      errorDetails: pulumi.Input.decodeList<ErrorDetailResponse>(map['errorDetails'], (value) => ErrorDetailResponse.fromMap((value as Map).cast<String, dynamic>())),
      lastStatusChange: map['lastStatusChange'] as String,
      status: map['status'] as String,
      vmUuid: map['vmUuid'] as String,
    );
  }
}

