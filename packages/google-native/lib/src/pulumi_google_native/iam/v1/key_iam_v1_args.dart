// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_key_algorithm.dart';
import 'key_private_key_type.dart';

/// The set of arguments for Key.
class KeyIamV1Args {
  /// Which type of key and algorithm to use for the key. The default is currently a 2K RSA key. However this may change in the future.
  final pulumi.Input<KeyKeyAlgorithm>? keyAlgorithm;

  /// The output format of the private key. The default value is `TYPE_GOOGLE_CREDENTIALS_FILE`, which is the Google Credentials File format.
  final pulumi.Input<KeyPrivateKeyType>? privateKeyType;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceAccountId;

  KeyIamV1Args({
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
          pulumi.Input.mapOptionalInputValue<KeyKeyAlgorithm, String>(
              keyAlgorithmValue, (value) => value.value);
    }
    final privateKeyTypeValue = privateKeyType;
    if (privateKeyTypeValue != null) {
      map['privateKeyType'] =
          pulumi.Input.mapOptionalInputValue<KeyPrivateKeyType, String>(
              privateKeyTypeValue, (value) => value.value);
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceAccountId'] = serviceAccountId;
    return map;
  }

  factory KeyIamV1Args.fromMap(Map<String, dynamic> map) {
    return KeyIamV1Args(
      keyAlgorithm:
          pulumi.Input.asOptionalInput<KeyKeyAlgorithm>(map['keyAlgorithm']),
      privateKeyType: pulumi.Input.asOptionalInput<KeyPrivateKeyType>(
          map['privateKeyType']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceAccountId: pulumi.Input.asInput<String>(map['serviceAccountId']),
    );
  }
}
