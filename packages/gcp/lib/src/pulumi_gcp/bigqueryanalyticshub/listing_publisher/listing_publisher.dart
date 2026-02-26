// ignore_for_file: unused_element, unnecessary_cast

class ListingPublisher {
  /// Name of the listing publisher.
  final String name;

  /// Email or URL of the listing publisher.
  final String? primaryContact;

  ListingPublisher({
    required this.name,
    this.primaryContact,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final primaryContactValue = primaryContact;
    if (primaryContactValue != null) {
      map['primaryContact'] = primaryContactValue;
    }
    return map;
  }

  factory ListingPublisher.fromMap(Map<String, dynamic> map) {
    return ListingPublisher(
      name: map['name'] as String,
      primaryContact: map['primaryContact'] == null
          ? null
          : map['primaryContact'] as String,
    );
  }
}
