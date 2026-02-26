// ignore_for_file: unused_element, unnecessary_cast

/// Contains details of the listing publisher.
class Publisher2 {
  /// Optional. Name of the listing publisher.
  final String? name;

  /// Optional. Email or URL of the listing publisher. Max Length: 1000 bytes.
  final String? primaryContact;

  Publisher2({
    this.name,
    this.primaryContact,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final primaryContactValue = primaryContact;
    if (primaryContactValue != null) {
      map['primaryContact'] = primaryContactValue;
    }
    return map;
  }

  factory Publisher2.fromMap(Map<String, dynamic> map) {
    return Publisher2(
      name: map['name'] == null ? null : map['name'] as String,
      primaryContact: map['primaryContact'] == null
          ? null
          : map['primaryContact'] as String,
    );
  }
}
