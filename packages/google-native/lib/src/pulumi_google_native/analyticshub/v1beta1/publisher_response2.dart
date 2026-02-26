// ignore_for_file: unused_element, unnecessary_cast

/// Contains details of the listing publisher.
class PublisherResponse2 {
  /// Optional. Name of the listing publisher.
  final String name;

  /// Optional. Email or URL of the listing publisher. Max Length: 1000 bytes.
  final String primaryContact;

  PublisherResponse2({
    required this.name,
    required this.primaryContact,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['primaryContact'] = primaryContact;
    return map;
  }

  factory PublisherResponse2.fromMap(Map<String, dynamic> map) {
    return PublisherResponse2(
      name: map['name'] as String,
      primaryContact: map['primaryContact'] as String,
    );
  }
}
