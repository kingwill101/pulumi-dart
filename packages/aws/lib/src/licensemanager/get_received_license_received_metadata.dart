// ignore_for_file: unused_element, unnecessary_cast


class GetReceivedLicenseReceivedMetadata {
  /// A list of allowed operations.
  final List<String> allowedOperations;
  /// Received status.
  final String receivedStatus;
  /// Received status reason.
  final String receivedStatusReason;

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
      allowedOperations: (map['allowedOperations'] as List).cast<String>(),
      receivedStatus: map['receivedStatus'] as String,
      receivedStatusReason: map['receivedStatusReason'] as String,
    );
  }
}

