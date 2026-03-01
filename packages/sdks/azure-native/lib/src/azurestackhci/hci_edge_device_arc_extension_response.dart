// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_validation_failure_detail_response.dart';

/// Arc extension installed on edge device.
class HciEdgeDeviceArcExtensionResponse {
  /// Error details while installing Arc extension.
  final List<HciValidationFailureDetailResponse> errorDetails;
  /// Arc extension name installed on edge device.
  final String extensionName;
  /// Arc Extension Azure resource id.
  final String extensionResourceId;
  /// Indicates whether the extension is managed by the user or by Azure.
  final String managedBy;
  /// Arc extension state from arc machine extension.
  final String state;
  /// Extension version installed.
  final String typeHandlerVersion;

  /// Creates a new [HciEdgeDeviceArcExtensionResponse].
  /// [errorDetails] Error details while installing Arc extension.
  /// [extensionName] Arc extension name installed on edge device.
  /// [extensionResourceId] Arc Extension Azure resource id.
  /// [managedBy] Indicates whether the extension is managed by the user or by Azure.
  /// [state] Arc extension state from arc machine extension.
  /// [typeHandlerVersion] Extension version installed.
  HciEdgeDeviceArcExtensionResponse({
    required this.errorDetails,
    required this.extensionName,
    required this.extensionResourceId,
    required this.managedBy,
    required this.state,
    required this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDetails': pulumi.Input.encodeList<HciValidationFailureDetailResponse, Map<String, dynamic>>(errorDetails, (value) => value.toMap()),
      'extensionName': extensionName,
      'extensionResourceId': extensionResourceId,
      'managedBy': managedBy,
      'state': state,
      'typeHandlerVersion': typeHandlerVersion,
    };
  }

  factory HciEdgeDeviceArcExtensionResponse.fromMap(Map<String, dynamic> map) {
    return HciEdgeDeviceArcExtensionResponse(
      errorDetails: pulumi.Input.decodeList<HciValidationFailureDetailResponse>(map['errorDetails'], (value) => HciValidationFailureDetailResponse.fromMap((value as Map).cast<String, dynamic>())),
      extensionName: map['extensionName'] as String,
      extensionResourceId: map['extensionResourceId'] as String,
      managedBy: map['managedBy'] as String,
      state: map['state'] as String,
      typeHandlerVersion: map['typeHandlerVersion'] as String,
    );
  }
}

