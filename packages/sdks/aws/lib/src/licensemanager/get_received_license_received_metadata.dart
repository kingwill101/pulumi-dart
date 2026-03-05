// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReceivedLicenseReceivedMetadata {
  /// A list of allowed operations.
  final pulumi.Input<List<String>> allowedOperations;
  /// Received status.
  final pulumi.Input<String> receivedStatus;
  /// Received status reason.
  final pulumi.Input<String> receivedStatusReason;

  /// Creates a new [GetReceivedLicenseReceivedMetadata].
  /// [allowedOperations] A list of allowed operations.
  /// [receivedStatus] Received status.
  /// [receivedStatusReason] Received status reason.
  GetReceivedLicenseReceivedMetadata({
    required this.allowedOperations,
    required this.receivedStatus,
    required this.receivedStatusReason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOperations': allowedOperations,
      'receivedStatus': receivedStatus,
      'receivedStatusReason': receivedStatusReason,
    };
  }

  factory GetReceivedLicenseReceivedMetadata.fromMap(Map<String, dynamic> map) {
    return GetReceivedLicenseReceivedMetadata(
      allowedOperations: pulumi.Input.fromValue((map['allowedOperations'] as List).cast<String>()),
      receivedStatus: pulumi.Input.fromValue(map['receivedStatus'] as String),
      receivedStatusReason: pulumi.Input.fromValue(map['receivedStatusReason'] as String),
    );
  }
}

