// ignore_for_file: unused_element, unnecessary_cast

import 'drm_systems_response.dart';
import 'mpeg_common_encryption_response.dart';
import 'secret_manager_source_response.dart';

/// Encryption settings.
class EncryptionResponse {
  /// Configuration for AES-128 encryption.
  final Map<String, dynamic> aes128;

  /// DRM system(s) to use; at least one must be specified. If a DRM system is omitted, it is considered disabled.
  final DrmSystemsResponse drmSystems;

  /// Configuration for MPEG Common Encryption (MPEG-CENC).
  final MpegCommonEncryptionResponse mpegCenc;

  /// Configuration for SAMPLE-AES encryption.
  final Map<String, dynamic> sampleAes;

  /// Keys are stored in Google Secret Manager.
  final SecretManagerSourceResponse secretManagerKeySource;

  /// Creates a new [EncryptionResponse].
  /// [aes128] Configuration for AES-128 encryption.
  /// [drmSystems] DRM system(s) to use; at least one must be specified. If a DRM system is omitted, it is considered disabled.
  /// [mpegCenc] Configuration for MPEG Common Encryption (MPEG-CENC).
  /// [sampleAes] Configuration for SAMPLE-AES encryption.
  /// [secretManagerKeySource] Keys are stored in Google Secret Manager.
  EncryptionResponse({
    required this.aes128,
    required this.drmSystems,
    required this.mpegCenc,
    required this.sampleAes,
    required this.secretManagerKeySource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['aes128'] = aes128;
    map['drmSystems'] = drmSystems.toMap();
    map['mpegCenc'] = mpegCenc.toMap();
    map['sampleAes'] = sampleAes;
    map['secretManagerKeySource'] = secretManagerKeySource.toMap();
    return map;
  }

  factory EncryptionResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionResponse(
      aes128: (map['aes128'] as Map).cast<String, dynamic>(),
      drmSystems: DrmSystemsResponse.fromMap(
          (map['drmSystems'] as Map).cast<String, dynamic>()),
      mpegCenc: MpegCommonEncryptionResponse.fromMap(
          (map['mpegCenc'] as Map).cast<String, dynamic>()),
      sampleAes: (map['sampleAes'] as Map).cast<String, dynamic>(),
      secretManagerKeySource: SecretManagerSourceResponse.fromMap(
          (map['secretManagerKeySource'] as Map).cast<String, dynamic>()),
    );
  }
}
