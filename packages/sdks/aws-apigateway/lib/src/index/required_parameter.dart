// ignore_for_file: unused_element, unnecessary_cast


class RequiredParameter {
  final String? in_;
  final String? name;

  /// Creates a new [RequiredParameter].
  /// [in_] Optional.
  /// [name] Optional.
  RequiredParameter({
    this.in_,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'in': ?in_,
      'name': ?name,
    };
  }

  factory RequiredParameter.fromMap(Map<String, dynamic> map) {
    return RequiredParameter(
      in_: map['in'] == null ? null : map['in'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

