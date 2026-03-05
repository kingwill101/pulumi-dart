// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionSharedAccessSignatureResponse {
  final pulumi.Input<String>? sas;

  /// Creates a new [ConnectionSharedAccessSignatureResponse].
  /// [sas] Optional.
  ConnectionSharedAccessSignatureResponse({
    this.sas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sas': ?sas,
    };
  }

  factory ConnectionSharedAccessSignatureResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionSharedAccessSignatureResponse(
      sas: (() { final guardedValue = map['sas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

