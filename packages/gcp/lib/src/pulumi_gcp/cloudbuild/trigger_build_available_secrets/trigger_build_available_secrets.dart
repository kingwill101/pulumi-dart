// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../trigger_build_available_secrets_secret_manager/trigger_build_available_secrets_secret_manager.dart';

class TriggerBuildAvailableSecrets {
  /// Pairs a secret environment variable with a SecretVersion in Secret Manager.
  /// Structure is documented below.
  final List<TriggerBuildAvailableSecretsSecretManager> secretManagers;

  TriggerBuildAvailableSecrets({
    required this.secretManagers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretManagers'] = pulumi.Input.encodeList<
        TriggerBuildAvailableSecretsSecretManager,
        Map<String, dynamic>>(secretManagers, (value) => value.toMap());
    return map;
  }

  factory TriggerBuildAvailableSecrets.fromMap(Map<String, dynamic> map) {
    return TriggerBuildAvailableSecrets(
      secretManagers:
          pulumi.Input.decodeList<TriggerBuildAvailableSecretsSecretManager>(
              map['secretManagers'],
              (value) => TriggerBuildAvailableSecretsSecretManager.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
