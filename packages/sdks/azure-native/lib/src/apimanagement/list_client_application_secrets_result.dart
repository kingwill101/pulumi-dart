// ignore_for_file: unused_element, unnecessary_cast

import 'client_application_secrets_contract_response_entra.dart';

/// Result data returned by listClientApplicationSecrets.
class ListClientApplicationSecretsResult {
  /// Microsoft EntraID client application secrets
  final ClientApplicationSecretsContractResponseEntra? entra;

  /// Creates a new [ListClientApplicationSecretsResult].
  /// [entra] Microsoft EntraID client application secrets
  const ListClientApplicationSecretsResult({
    this.entra,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entra': ?entra?.toMap(),
    };
  }

  factory ListClientApplicationSecretsResult.fromMap(Map<String, dynamic> map) {
    return ListClientApplicationSecretsResult(
      entra: (() { final guardedValue = map['entra']; if (guardedValue == null) return null; return ClientApplicationSecretsContractResponseEntra.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

