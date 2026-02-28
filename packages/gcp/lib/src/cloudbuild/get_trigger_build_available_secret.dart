// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trigger_build_available_secret_secret_manager.dart';

class GetTriggerBuildAvailableSecret {
  /// Pairs a secret environment variable with a SecretVersion in Secret Manager.
  final List<GetTriggerBuildAvailableSecretSecretManager> secretManagers;

  /// Creates a new [GetTriggerBuildAvailableSecret].
  /// [secretManagers] Pairs a secret environment variable with a SecretVersion in Secret Manager.
  GetTriggerBuildAvailableSecret({
    required this.secretManagers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretManagers'] = pulumi.Input.encodeList<
        GetTriggerBuildAvailableSecretSecretManager,
        Map<String, dynamic>>(secretManagers, (value) => value.toMap());
    return map;
  }

  factory GetTriggerBuildAvailableSecret.fromMap(Map<String, dynamic> map) {
    return GetTriggerBuildAvailableSecret(
      secretManagers:
          pulumi.Input.decodeList<GetTriggerBuildAvailableSecretSecretManager>(
              map['secretManagers'],
              (value) => GetTriggerBuildAvailableSecretSecretManager.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
