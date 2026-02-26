// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'key_key_algorithm.dart';
import 'key_private_key_type.dart';

/// The set of arguments for Key.
class KeyArgs2 {
  /// Which type of key and algorithm to use for the key. The default is currently a 2K RSA key. However this may change in the future.
  final Input<KeyKeyAlgorithm>? keyAlgorithm;

  /// The output format of the private key. The default value is `TYPE_GOOGLE_CREDENTIALS_FILE`, which is the Google Credentials File format.
  final Input<KeyPrivateKeyType>? privateKeyType;
  final Input<String>? project;
  final Input<String> serviceAccountId;

  KeyArgs2({
    this.keyAlgorithm,
    this.privateKeyType,
    this.project,
    required this.serviceAccountId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyAlgorithmValue = keyAlgorithm;
    if (keyAlgorithmValue != null) {
      map['keyAlgorithm'] =
          Input.mapOptionalInputValue<KeyKeyAlgorithm, String>(
              keyAlgorithmValue, (value) => value.value);
    }
    final privateKeyTypeValue = privateKeyType;
    if (privateKeyTypeValue != null) {
      map['privateKeyType'] =
          Input.mapOptionalInputValue<KeyPrivateKeyType, String>(
              privateKeyTypeValue, (value) => value.value);
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceAccountId'] = serviceAccountId;
    return map;
  }

  factory KeyArgs2.fromMap(Map<String, dynamic> map) {
    return KeyArgs2(
      keyAlgorithm: Input.asOptionalInput<KeyKeyAlgorithm>(map['keyAlgorithm']),
      privateKeyType:
          Input.asOptionalInput<KeyPrivateKeyType>(map['privateKeyType']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceAccountId: Input.asInput<String>(map['serviceAccountId']),
    );
  }
}
