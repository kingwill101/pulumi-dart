// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesCfpc {
  /// Sets the specific value associated with the CFPC feature.
  final String value;

  /// Creates a new [DomainFeaturesCfpc].
  /// [value] Sets the specific value associated with the CFPC feature.
  DomainFeaturesCfpc({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory DomainFeaturesCfpc.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCfpc(
      value: map['value'] as String,
    );
  }
}

