// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inline_secret.dart';
import 'secret_manager_secret.dart';

/// Secrets and secret environment variables.
class Secrets {
  /// Secrets encrypted with KMS key and the associated secret environment variable.
  final List<InlineSecret>? inline;

  /// Secrets in Secret Manager and associated secret environment variable.
  final List<SecretManagerSecret>? secretManager;

  /// Creates a new [Secrets].
  /// [inline] Secrets encrypted with KMS key and the associated secret environment variable.
  /// [secretManager] Secrets in Secret Manager and associated secret environment variable.
  Secrets({
    this.inline,
    this.secretManager,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final inlineValue = inline;
    if (inlineValue != null) {
      map['inline'] =
          pulumi.Input.encodeList<InlineSecret, Map<String, dynamic>>(
              inlineValue, (value) => value.toMap());
    }
    final secretManagerValue = secretManager;
    if (secretManagerValue != null) {
      map['secretManager'] =
          pulumi.Input.encodeList<SecretManagerSecret, Map<String, dynamic>>(
              secretManagerValue, (value) => value.toMap());
    }
    return map;
  }

  factory Secrets.fromMap(Map<String, dynamic> map) {
    return Secrets(
      inline: map['inline'] == null
          ? null
          : pulumi.Input.decodeList<InlineSecret>(
              map['inline'],
              (value) =>
                  InlineSecret.fromMap((value as Map).cast<String, dynamic>())),
      secretManager: map['secretManager'] == null
          ? null
          : pulumi.Input.decodeList<SecretManagerSecret>(
              map['secretManager'],
              (value) => SecretManagerSecret.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
