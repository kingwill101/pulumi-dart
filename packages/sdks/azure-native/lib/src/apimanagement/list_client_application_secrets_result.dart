// ignore_for_file: unused_element, unnecessary_cast

import 'client_application_secrets_contract_response_entra.dart';

/// Result data returned by listClientApplicationSecrets.
class ListClientApplicationSecretsResult {
  /// Microsoft EntraID client application secrets
  final ClientApplicationSecretsContractResponseEntra? entra;

  /// Creates a new [ListClientApplicationSecretsResult].
  /// [entra] Microsoft EntraID client application secrets
  ListClientApplicationSecretsResult({
    this.entra,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entra': ?entra == null ? null : entra!.toMap(),
    };
  }

  factory ListClientApplicationSecretsResult.fromMap(Map<String, dynamic> map) {
    return ListClientApplicationSecretsResult(
      entra: map['entra'] == null ? null : ClientApplicationSecretsContractResponseEntra.fromMap((map['entra']! as Map).cast<String, dynamic>()),
    );
  }
}

