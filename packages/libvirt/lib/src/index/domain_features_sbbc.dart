// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesSbbc {
  /// Sets the value attribute for the SBBC feature, indicating its configuration.
  final String value;

  /// Creates a new [DomainFeaturesSbbc].
  /// [value] Sets the value attribute for the SBBC feature, indicating its configuration.
  DomainFeaturesSbbc({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory DomainFeaturesSbbc.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesSbbc(
      value: map['value'] as String,
    );
  }
}

