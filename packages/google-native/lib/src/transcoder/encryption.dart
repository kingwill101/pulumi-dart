// ignore_for_file: unused_element, unnecessary_cast

import 'drm_systems.dart';
import 'mpeg_common_encryption.dart';
import 'secret_manager_source.dart';

/// Encryption settings.
class Encryption {
  /// Configuration for AES-128 encryption.
  final Map<String, dynamic>? aes128;

  /// DRM system(s) to use; at least one must be specified. If a DRM system is omitted, it is considered disabled.
  final DrmSystems drmSystems;

  /// Identifier for this set of encryption options.
  final String id;

  /// Configuration for MPEG Common Encryption (MPEG-CENC).
  final MpegCommonEncryption? mpegCenc;

  /// Configuration for SAMPLE-AES encryption.
  final Map<String, dynamic>? sampleAes;

  /// Keys are stored in Google Secret Manager.
  final SecretManagerSource? secretManagerKeySource;

  /// Creates a new [Encryption].
  /// [aes128] Configuration for AES-128 encryption.
  /// [drmSystems] DRM system(s) to use; at least one must be specified. If a DRM system is omitted, it is considered disabled.
  /// [id] Identifier for this set of encryption options.
  /// [mpegCenc] Configuration for MPEG Common Encryption (MPEG-CENC).
  /// [sampleAes] Configuration for SAMPLE-AES encryption.
  /// [secretManagerKeySource] Keys are stored in Google Secret Manager.
  Encryption({
    this.aes128,
    required this.drmSystems,
    required this.id,
    this.mpegCenc,
    this.sampleAes,
    this.secretManagerKeySource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aes128': ?aes128,
      'drmSystems': drmSystems.toMap(),
      'id': id,
      'mpegCenc': ?mpegCenc == null ? null : mpegCenc!.toMap(),
      'sampleAes': ?sampleAes,
      'secretManagerKeySource': ?secretManagerKeySource == null
          ? null
          : secretManagerKeySource!.toMap(),
    };
  }

  factory Encryption.fromMap(Map<String, dynamic> map) {
    return Encryption(
      aes128: map['aes128'] == null
          ? null
          : (map['aes128'] as Map).cast<String, dynamic>(),
      drmSystems: DrmSystems.fromMap(
        (map['drmSystems'] as Map).cast<String, dynamic>(),
      ),
      id: map['id'] as String,
      mpegCenc: map['mpegCenc'] == null
          ? null
          : MpegCommonEncryption.fromMap(
              (map['mpegCenc'] as Map).cast<String, dynamic>(),
            ),
      sampleAes: map['sampleAes'] == null
          ? null
          : (map['sampleAes'] as Map).cast<String, dynamic>(),
      secretManagerKeySource: map['secretManagerKeySource'] == null
          ? null
          : SecretManagerSource.fromMap(
              (map['secretManagerKeySource'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
