// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'inline_secret.dart';
import 'secret_manager_secret.dart';

/// Secrets and secret environment variables.
class Secrets {
  /// Secrets encrypted with KMS key and the associated secret environment variable.
  final List<InlineSecret>? inline;

  /// Secrets in Secret Manager and associated secret environment variable.
  final List<SecretManagerSecret>? secretManager;

  Secrets({
    this.inline,
    this.secretManager,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final inlineValue = inline;
    if (inlineValue != null) {
      map['inline'] = Input.encodeList<InlineSecret, Map<String, dynamic>>(
          inlineValue, (value) => value.toMap());
    }
    final secretManagerValue = secretManager;
    if (secretManagerValue != null) {
      map['secretManager'] =
          Input.encodeList<SecretManagerSecret, Map<String, dynamic>>(
              secretManagerValue, (value) => value.toMap());
    }
    return map;
  }

  factory Secrets.fromMap(Map<String, dynamic> map) {
    return Secrets(
      inline: map['inline'] == null
          ? null
          : Input.decodeList<InlineSecret>(
              map['inline'],
              (value) =>
                  InlineSecret.fromMap((value as Map).cast<String, dynamic>())),
      secretManager: map['secretManager'] == null
          ? null
          : Input.decodeList<SecretManagerSecret>(
              map['secretManager'],
              (value) => SecretManagerSecret.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
