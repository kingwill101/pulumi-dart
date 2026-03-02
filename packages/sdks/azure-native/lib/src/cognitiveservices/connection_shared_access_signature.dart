// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionSharedAccessSignature {
  final pulumi.Input<String>? sas;

  /// Creates a new [ConnectionSharedAccessSignature].
  /// [sas] Optional.
  ConnectionSharedAccessSignature({
    this.sas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sas': ?sas,
    };
  }

  factory ConnectionSharedAccessSignature.fromMap(Map<String, dynamic> map) {
    return ConnectionSharedAccessSignature(
      sas: map['sas'] == null ? null : (map['sas']! as String).input(),
    );
  }
}

