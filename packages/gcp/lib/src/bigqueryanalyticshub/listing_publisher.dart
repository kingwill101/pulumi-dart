// ignore_for_file: unused_element, unnecessary_cast

class ListingPublisher {
  /// Name of the listing publisher.
  final String name;

  /// Email or URL of the listing publisher.
  final String? primaryContact;

  /// Creates a new [ListingPublisher].
  /// [name] Name of the listing publisher.
  /// [primaryContact] Email or URL of the listing publisher.
  ListingPublisher({required this.name, this.primaryContact});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'primaryContact': ?primaryContact};
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
