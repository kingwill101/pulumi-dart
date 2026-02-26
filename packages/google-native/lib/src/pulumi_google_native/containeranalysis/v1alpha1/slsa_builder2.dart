// ignore_for_file: unused_element, unnecessary_cast

/// SlsaBuilder encapsulates the identity of the builder of this provenance.
class SlsaBuilder2 {
  /// id is the id of the slsa provenance builder
  final String? id;

  SlsaBuilder2({
    this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    return map;
  }

  factory SlsaBuilder2.fromMap(Map<String, dynamic> map) {
    return SlsaBuilder2(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}
