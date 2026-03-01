// ignore_for_file: unused_element, unnecessary_cast


/// Details of a Custom SIP Header.
class CustomSipHeader {
  /// The name of the Custom SIP Header
  final String? name;

  /// Creates a new [CustomSipHeader].
  /// [name] The name of the Custom SIP Header
  CustomSipHeader({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory CustomSipHeader.fromMap(Map<String, dynamic> map) {
    return CustomSipHeader(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

