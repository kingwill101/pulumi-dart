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
      'keys': ?keys == null ? null : pulumi.Input.encodeList<KeyResponse, Map<String, dynamic>>(keys!, (value) => value.toMap()),
    };
  }

  factory ListKeyByAutomationAccountResult.fromMap(Map<String, dynamic> map) {
    return ListKeyByAutomationAccountResult(
      keys: map['keys'] == null ? null : pulumi.Input.decodeList<KeyResponse>(map['keys'], (value) => KeyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

