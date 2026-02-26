// ignore_for_file: unused_element, unnecessary_cast

/// Contains details of the listing publisher.
class Publisher {
  /// Optional. Name of the listing publisher.
  final String? name;

  /// Optional. Email or URL of the listing publisher. Max Length: 1000 bytes.
  final String? primaryContact;

  Publisher({
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

  factory Publisher.fromMap(Map<String, dynamic> map) {
    return Publisher(
      name: map['name'] == null ? null : map['name'] as String,
      primaryContact: map['primaryContact'] == null
          ? null
          : map['primaryContact'] as String,
    );
  }
}
