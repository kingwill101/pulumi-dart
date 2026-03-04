// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';

/// Specifies the guest agent settings for the virtual machine.
class GuestAgentProfileResponse {
  /// The hybrid machine agent full version.
  final pulumi.Input<String> agentVersion;

  /// Gets or sets the Public Key provided by the client for enabling guest management.
  final pulumi.Input<String>? clientPublicKey;

  /// Details about the error state.
  final pulumi.Input<List<ErrorDetailResponse>> errorDetails;

  /// The time of the last status change.
  final pulumi.Input<String> lastStatusChange;

  /// Specifies whether any MS SQL instance is discovered on the machine.
  final pulumi.Input<String> mssqlDiscovered;

  /// The status of the hybrid machine agent.
  final pulumi.Input<String> status;

  /// Specifies the VM's unique SMBIOS ID.
  final pulumi.Input<String> vmUuid;

  /// Creates a new [GuestAgentProfileResponse].
  /// [agentVersion] The hybrid machine agent full version.
  /// [clientPublicKey] Gets or sets the Public Key provided by the client for enabling guest management.
  /// [errorDetails] Details about the error state.
  /// [lastStatusChange] The time of the last status change.
  /// [mssqlDiscovered] Specifies whether any MS SQL instance is discovered on the machine.
  /// [status] The status of the hybrid machine agent.
  /// [vmUuid] Specifies the VM's unique SMBIOS ID.
  GuestAgentProfileResponse({
    required this.agentVersion,
    this.clientPublicKey,
    required this.errorDetails,
    required this.lastStatusChange,
    required this.mssqlDiscovered,
    required this.status,
    required this.vmUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentVersion': agentVersion,
      'clientPublicKey': ?clientPublicKey,
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
      'mssqlDiscovered': mssqlDiscovered,
      'status': status,
      'vmUuid': vmUuid,
    };
  }

  factory GuestAgentProfileResponse.fromMap(Map<String, dynamic> map) {
    return GuestAgentProfileResponse(
      agentVersion: pulumi.Input.fromValue(map['agentVersion'] as String),
      clientPublicKey: (() {
        final guardedValue = map['clientPublicKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
      mssqlDiscovered: pulumi.Input.fromValue(map['mssqlDiscovered'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      vmUuid: pulumi.Input.fromValue(map['vmUuid'] as String),
    );
  }
}
