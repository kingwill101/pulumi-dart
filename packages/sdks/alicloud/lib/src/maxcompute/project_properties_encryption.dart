// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectPropertiesEncryption {
  /// The encryption algorithm supported by the key, including AES256, AESCTR, and RC4.
  final pulumi.Input<String>? algorithm;
  /// Only enable function is supported. Value: (true)
  ///
  /// &gt; **NOTE:** cannot be turned off after the function is turned on
  final pulumi.Input<bool>? enable;
  /// The encryption algorithm Key, the Key type used by the project, including the Default Key (MaxCompute Default Key) and the self-contained Key (BYOK). The MaxCompute Default Key is the Default Key created inside MaxCompute.
  final pulumi.Input<String>? key;

  /// Creates a new [ProjectPropertiesEncryption].
  /// [algorithm] The encryption algorithm supported by the key, including AES256, AESCTR, and RC4.
  /// [enable] Only enable function is supported. Value: (true)
  /// [key] The encryption algorithm Key, the Key type used by the project, including the Default Key (MaxCompute Default Key) and the self-contained Key (BYOK). The MaxCompute Default Key is the Default Key created inside MaxCompute.
  ProjectPropertiesEncryption({
    this.algorithm,
    this.enable,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?algorithm,
      'enable': ?enable,
      'key': ?key,
    };
  }

  factory ProjectPropertiesEncryption.fromMap(Map<String, dynamic> map) {
    return ProjectPropertiesEncryption(
      algorithm: (() { final guardedValue = map['algorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

