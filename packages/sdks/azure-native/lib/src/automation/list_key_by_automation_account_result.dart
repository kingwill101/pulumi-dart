// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_response.dart';

/// Result data returned by listKeyByAutomationAccount.
class ListKeyByAutomationAccountResult {
  /// Lists the automation keys.
  final List<KeyResponse>? keys;

  /// Creates a new [ListKeyByAutomationAccountResult].
  /// [keys] Lists the automation keys.
  ListKeyByAutomationAccountResult({
    this.keys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keys': ?(() { final guardedValue = keys; if (guardedValue == null) return null; return pulumi.Input.encodeList<KeyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListKeyByAutomationAccountResult.fromMap(Map<String, dynamic> map) {
    return ListKeyByAutomationAccountResult(
      keys: (() { final guardedValue = map['keys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<KeyResponse>(guardedValue, (value) => KeyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

