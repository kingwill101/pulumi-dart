// ignore_for_file: unused_element, unnecessary_cast


class Certificate {
  /// PEM formatted public key.
  final String? pem;

  /// Creates a new [Certificate].
  /// [pem] PEM formatted public key.
  Certificate({
    this.pem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pem': ?pem,
    };
  }

  factory Certificate.fromMap(Map<String, dynamic> map) {
    return Certificate(
      pem: map['pem'] == null ? null : map['pem'] as String,
    );
  }
}

