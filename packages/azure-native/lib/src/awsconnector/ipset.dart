// ignore_for_file: unused_element, unnecessary_cast


/// Definition of IPSet
class IPSet {
  /// Property definition
  final List<String>? definition;

  /// Creates a new [IPSet].
  /// [definition] Property definition
  IPSet({
    this.definition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': ?definition,
    };
  }

  factory IPSet.fromMap(Map<String, dynamic> map) {
    return IPSet(
      definition: map['definition'] == null ? null : (map['definition'] as List).cast<String>(),
    );
  }
}

