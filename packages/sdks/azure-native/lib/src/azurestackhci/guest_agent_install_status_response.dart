// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';

/// Defines the status of a guest agent installation.
class GuestAgentInstallStatusResponse {
  /// The hybrid machine agent full version.
  final pulumi.Input<String> agentVersion;

  /// Details about the error state.
  final pulumi.Input<List<ErrorDetailResponse>> errorDetails;

  /// The time of the last status change.
  final pulumi.Input<String> lastStatusChange;

  /// The installation status of the hybrid machine agent installation.
  final pulumi.Input<String> status;

  /// Specifies the VM's unique SMBIOS ID.
  final pulumi.Input<String> vmUuid;

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
      'errorDetails':
          pulumi.Input.mapInputValue<
            List<ErrorDetailResponse>,
            List<Map<String, dynamic>>
          >(
            errorDetails,
            (value) =>
                pulumi.Input.encodeList<
                  ErrorDetailResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'lastStatusChange': lastStatusChange,
      'status': status,
      'vmUuid': vmUuid,
    };
  }

  factory GuestAgentInstallStatusResponse.fromMap(Map<String, dynamic> map) {
    return GuestAgentInstallStatusResponse(
      agentVersion: pulumi.Input.fromValue(map['agentVersion'] as String),
      errorDetails: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ErrorDetailResponse>(
          map['errorDetails']!,
          (value) => ErrorDetailResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      lastStatusChange: pulumi.Input.fromValue(
        map['lastStatusChange'] as String,
      ),
      status: pulumi.Input.fromValue(map['status'] as String),
      vmUuid: pulumi.Input.fromValue(map['vmUuid'] as String),
    );
  }
}
