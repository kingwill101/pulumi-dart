// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProjectsProjectPropertiesEncryption {
  /// The encryption algorithm supported by the key, including AES256, AESCTR, and RC4.
  final pulumi.Input<String> algorithm;
  /// Only enable function is supported. Value: (true).
  final pulumi.Input<bool> enable;
  /// The encryption algorithm Key, the Key type used by the project, including the Default Key (MaxCompute Default Key) and the self-contained Key (BYOK). The MaxCompute Default Key is the Default Key created inside MaxCompute.
  final pulumi.Input<String> key;

  /// Creates a new [GetProjectsProjectPropertiesEncryption].
  /// [algorithm] The encryption algorithm supported by the key, including AES256, AESCTR, and RC4.
  /// [enable] Only enable function is supported. Value: (true).
  /// [key] The encryption algorithm Key, the Key type used by the project, including the Default Key (MaxCompute Default Key) and the self-contained Key (BYOK). The MaxCompute Default Key is the Default Key created inside MaxCompute.
  const GetProjectsProjectPropertiesEncryption({
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
      algorithm: pulumi.Input.fromValue(map['algorithm'] as String),
      enable: pulumi.Input.fromValue(map['enable'] as bool),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}

