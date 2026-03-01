// ignore_for_file: unused_element, unnecessary_cast


/// Definition of PortSet
class PortSetResponse {
  /// Property definition
  final List<String>? definition;

  /// Creates a new [PortSetResponse].
  /// [definition] Property definition
  PortSetResponse({
    this.definition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': ?definition,
    };
  }

  factory PortSetResponse.fromMap(Map<String, dynamic> map) {
    return PortSetResponse(
      definition: map['definition'] == null ? null : (map['definition'] as List).cast<String>(),
    );
  }
}

