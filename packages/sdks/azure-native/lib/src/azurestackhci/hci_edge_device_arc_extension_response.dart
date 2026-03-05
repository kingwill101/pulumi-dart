// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_validation_failure_detail_response.dart';

/// Arc extension installed on edge device.
class HciEdgeDeviceArcExtensionResponse {
  /// Error details while installing Arc extension.
  final pulumi.Input<List<HciValidationFailureDetailResponse>> errorDetails;
  /// Arc extension name installed on edge device.
  final pulumi.Input<String> extensionName;
  /// Arc Extension Azure resource id.
  final pulumi.Input<String> extensionResourceId;
  /// Indicates whether the extension is managed by the user or by Azure.
  final pulumi.Input<String> managedBy;
  /// Arc extension state from arc machine extension.
  final pulumi.Input<String> state;
  /// Extension version installed.
  final pulumi.Input<String> typeHandlerVersion;

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
      'errorDetails': pulumi.Input.mapInputValue<List<HciValidationFailureDetailResponse>, List<Map<String, dynamic>>>(errorDetails, (value) => pulumi.Input.encodeList<HciValidationFailureDetailResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extensionName': extensionName,
      'extensionResourceId': extensionResourceId,
      'managedBy': managedBy,
      'state': state,
      'typeHandlerVersion': typeHandlerVersion,
    };
  }

  factory HciEdgeDeviceArcExtensionResponse.fromMap(Map<String, dynamic> map) {
    return HciEdgeDeviceArcExtensionResponse(
      errorDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<HciValidationFailureDetailResponse>(map['errorDetails']!, (value) => HciValidationFailureDetailResponse.fromMap((value as Map).cast<String, dynamic>()))),
      extensionName: pulumi.Input.fromValue(map['extensionName'] as String),
      extensionResourceId: pulumi.Input.fromValue(map['extensionResourceId'] as String),
      managedBy: pulumi.Input.fromValue(map['managedBy'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      typeHandlerVersion: pulumi.Input.fromValue(map['typeHandlerVersion'] as String),
    );
  }
}

