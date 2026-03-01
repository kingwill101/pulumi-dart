// ignore_for_file: unused_element, unnecessary_cast

class SlsaBuilder {
  final String? id;

  /// Creates a new [SlsaBuilder].
  /// [id] Optional.
  SlsaBuilder({this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id};
  }

  factory SlsaBuilder.fromMap(Map<String, dynamic> map) {
    return SlsaBuilder(id: map['id'] == null ? null : map['id'] as String);
  }
}
