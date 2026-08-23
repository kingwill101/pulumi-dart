// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Certificate {
  /// PEM formatted public key.
  final pulumi.Input<String>? pem;

  /// Creates a new [Certificate].
  /// [pem] PEM formatted public key.
  const Certificate({
    this.pem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pem': ?pem,
    };
  }

  factory Certificate.fromMap(Map<String, dynamic> map) {
    return Certificate(
      pem: (() { final guardedValue = map['pem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
