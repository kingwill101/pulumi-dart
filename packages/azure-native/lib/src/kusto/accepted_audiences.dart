// ignore_for_file: unused_element, unnecessary_cast


/// Represents an accepted audience trusted by the cluster.
class AcceptedAudiences {
  /// GUID or valid URL representing an accepted audience.
  final String? value;

  /// Creates a new [AcceptedAudiences].
  /// [value] GUID or valid URL representing an accepted audience.
  AcceptedAudiences({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory AcceptedAudiences.fromMap(Map<String, dynamic> map) {
    return AcceptedAudiences(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

