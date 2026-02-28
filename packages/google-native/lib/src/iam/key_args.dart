// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_key_algorithm.dart';
import 'key_private_key_type.dart';

/// {@template pulumi_iam_v1_key_args_doc}
/// The set of arguments for Key.
/// {@endtemplate}
/// {@macro pulumi_iam_v1_key_args_doc}
class KeyArgs {
  /// Which type of key and algorithm to use for the key. The default is currently a 2K RSA key. However this may change in the future.
  final pulumi.Input<KeyKeyAlgorithm>? keyAlgorithm;

  /// The output format of the private key. The default value is `TYPE_GOOGLE_CREDENTIALS_FILE`, which is the Google Credentials File format.
  final pulumi.Input<KeyPrivateKeyType>? privateKeyType;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceAccountId;

  /// Creates a new [KeyArgs].
  /// [keyAlgorithm] Which type of key and algorithm to use for the key. The default is currently a 2K RSA key. However this may change in the future.
  /// [privateKeyType] The output format of the private key. The default value is `TYPE_GOOGLE_CREDENTIALS_FILE`, which is the Google Credentials File format.
  /// [project] Optional.
  /// [serviceAccountId] Required.
  KeyArgs({
    KeyKeyAlgorithm? keyAlgorithm,
    KeyPrivateKeyType? privateKeyType,
    String? project,
    required String serviceAccountId,
  })  : keyAlgorithm =
            pulumi.Input.asOptionalInput<KeyKeyAlgorithm>(keyAlgorithm),
        privateKeyType =
            pulumi.Input.asOptionalInput<KeyPrivateKeyType>(privateKeyType),
        project = pulumi.Input.asOptionalInput<String>(project),
        serviceAccountId = pulumi.Input.asInput<String>(serviceAccountId);

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

  factory KeyArgs.fromMap(Map<String, dynamic> map) {
    return KeyArgs(
      keyAlgorithm: map['keyAlgorithm'] == null
          ? null
          : KeyKeyAlgorithm.fromValue(map['keyAlgorithm'] as String),
      privateKeyType: map['privateKeyType'] == null
          ? null
          : KeyPrivateKeyType.fromValue(map['privateKeyType'] as String),
      project: map['project'] == null ? null : map['project'] as String,
      serviceAccountId: map['serviceAccountId'] as String,
    );
  }
}
