// ignore_for_file: unused_element, unnecessary_cast


class GetProjectsProjectPropertiesEncryption {
  /// The encryption algorithm supported by the key, including AES256, AESCTR, and RC4.
  final String algorithm;
  /// Only enable function is supported. Value: (true).
  final bool enable;
  /// The encryption algorithm Key, the Key type used by the project, including the Default Key (MaxCompute Default Key) and the self-contained Key (BYOK). The MaxCompute Default Key is the Default Key created inside MaxCompute.
  final String key;

  /// Creates a new [GetProjectsProjectPropertiesEncryption].
  /// [algorithm] The encryption algorithm supported by the key, including AES256, AESCTR, and RC4.
  /// [enable] Only enable function is supported. Value: (true).
  /// [key] The encryption algorithm Key, the Key type used by the project, including the Default Key (MaxCompute Default Key) and the self-contained Key (BYOK). The MaxCompute Default Key is the Default Key created inside MaxCompute.
  GetProjectsProjectPropertiesEncryption({
    required this.algorithm,
    required this.enable,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'enable': enable,
      'key': key,
    };
  }

  factory GetProjectsProjectPropertiesEncryption.fromMap(Map<String, dynamic> map) {
    return GetProjectsProjectPropertiesEncryption(
      algorithm: map['algorithm'] as String,
      enable: map['enable'] as bool,
      key: map['key'] as String,
    );
  }
}

