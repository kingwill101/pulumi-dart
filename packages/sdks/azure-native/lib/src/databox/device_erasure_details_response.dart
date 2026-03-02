// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Device erasure details with erasure completion status and erasureordestructionlog sas key
class DeviceErasureDetailsResponse {
  /// Holds the device erasure completion status
  final pulumi.Input<String> deviceErasureStatus;
  /// Shared access key to download cleanup or destruction certificate for device
  final pulumi.Input<String> erasureOrDestructionCertificateSasKey;

  /// Creates a new [DeviceErasureDetailsResponse].
  /// [deviceErasureStatus] Holds the device erasure completion status
  /// [erasureOrDestructionCertificateSasKey] Shared access key to download cleanup or destruction certificate for device
  DeviceErasureDetailsResponse({
    required this.deviceErasureStatus,
    required this.erasureOrDestructionCertificateSasKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceErasureStatus': deviceErasureStatus,
      'erasureOrDestructionCertificateSasKey': erasureOrDestructionCertificateSasKey,
    };
  }

  factory DeviceErasureDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DeviceErasureDetailsResponse(
      deviceErasureStatus: (map['deviceErasureStatus'] as String).input(),
      erasureOrDestructionCertificateSasKey: (map['erasureOrDestructionCertificateSasKey'] as String).input(),
    );
  }
}

