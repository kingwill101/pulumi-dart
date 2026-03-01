// ignore_for_file: unused_element, unnecessary_cast

import 'customer_managed_key_details_response.dart';

/// Details of the encryption associated with the workspace
class EncryptionDetailsResponse {
  /// Customer Managed Key Details
  final CustomerManagedKeyDetailsResponse? cmk;
  /// Double Encryption enabled
  final bool doubleEncryptionEnabled;

  /// Creates a new [EncryptionDetailsResponse].
  /// [cmk] Customer Managed Key Details
  /// [doubleEncryptionEnabled] Double Encryption enabled
  EncryptionDetailsResponse({
    this.cmk,
    required this.doubleEncryptionEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cmk': ?cmk == null ? null : cmk!.toMap(),
      'doubleEncryptionEnabled': doubleEncryptionEnabled,
    };
  }

  factory EncryptionDetailsResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionDetailsResponse(
      cmk: map['cmk'] == null ? null : CustomerManagedKeyDetailsResponse.fromMap((map['cmk'] as Map).cast<String, dynamic>()),
      doubleEncryptionEnabled: map['doubleEncryptionEnabled'] as bool,
    );
  }
}

