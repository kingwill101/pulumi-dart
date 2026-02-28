// ignore_for_file: unused_element, unnecessary_cast

import 'job_config_encryption_drm_systems.dart';
import 'job_config_encryption_mpeg_cenc.dart';
import 'job_config_encryption_secret_manager_key_source.dart';

class JobConfigEncryption {
  /// Configuration for AES-128 encryption.
  final Map<String, dynamic>? aes128;

  /// DRM system(s) to use; at least one must be specified. If a DRM system is omitted, it is considered disabled.
  /// Structure is documented below.
  final JobConfigEncryptionDrmSystems? drmSystems;

  /// Identifier for this set of encryption options.
  final String id;

  /// Configuration for MPEG Common Encryption (MPEG-CENC).
  /// Structure is documented below.
  final JobConfigEncryptionMpegCenc? mpegCenc;

  /// Configuration for SAMPLE-AES encryption.
  final Map<String, dynamic>? sampleAes;

  /// Configuration for secrets stored in Google Secret Manager.
  /// Structure is documented below.
  final JobConfigEncryptionSecretManagerKeySource? secretManagerKeySource;

  /// Creates a new [JobConfigEncryption].
  /// [aes128] Configuration for AES-128 encryption.
  /// [drmSystems] DRM system(s) to use; at least one must be specified. If a DRM system is omitted, it is considered disabled.
  /// [id] Identifier for this set of encryption options.
  /// [mpegCenc] Configuration for MPEG Common Encryption (MPEG-CENC).
  /// [sampleAes] Configuration for SAMPLE-AES encryption.
  /// [secretManagerKeySource] Configuration for secrets stored in Google Secret Manager.
  JobConfigEncryption({
    this.aes128,
    this.drmSystems,
    required this.id,
    this.mpegCenc,
    this.sampleAes,
    this.secretManagerKeySource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aes128Value = aes128;
    if (aes128Value != null) {
      map['aes128'] = aes128Value;
    }
    final drmSystemsValue = drmSystems;
    if (drmSystemsValue != null) {
      map['drmSystems'] = drmSystemsValue.toMap();
    }
    map['id'] = id;
    final mpegCencValue = mpegCenc;
    if (mpegCencValue != null) {
      map['mpegCenc'] = mpegCencValue.toMap();
    }
    final sampleAesValue = sampleAes;
    if (sampleAesValue != null) {
      map['sampleAes'] = sampleAesValue;
    }
    final secretManagerKeySourceValue = secretManagerKeySource;
    if (secretManagerKeySourceValue != null) {
      map['secretManagerKeySource'] = secretManagerKeySourceValue.toMap();
    }
    return map;
  }

  factory JobConfigEncryption.fromMap(Map<String, dynamic> map) {
    return JobConfigEncryption(
      aes128: map['aes128'] == null
          ? null
          : (map['aes128'] as Map).cast<String, dynamic>(),
      drmSystems: map['drmSystems'] == null
          ? null
          : JobConfigEncryptionDrmSystems.fromMap(
              (map['drmSystems'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      mpegCenc: map['mpegCenc'] == null
          ? null
          : JobConfigEncryptionMpegCenc.fromMap(
              (map['mpegCenc'] as Map).cast<String, dynamic>()),
      sampleAes: map['sampleAes'] == null
          ? null
          : (map['sampleAes'] as Map).cast<String, dynamic>(),
      secretManagerKeySource: map['secretManagerKeySource'] == null
          ? null
          : JobConfigEncryptionSecretManagerKeySource.fromMap(
              (map['secretManagerKeySource'] as Map).cast<String, dynamic>()),
    );
  }
}
