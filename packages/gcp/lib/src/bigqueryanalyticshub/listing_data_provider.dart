// ignore_for_file: unused_element, unnecessary_cast

class ListingDataProvider {
  /// Name of the data provider.
  final String name;

  /// Email or URL of the data provider.
  final String? primaryContact;

  /// Creates a new [ListingDataProvider].
  /// [name] Name of the data provider.
  /// [primaryContact] Email or URL of the data provider.
  ListingDataProvider({
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

  factory ListingDataProvider.fromMap(Map<String, dynamic> map) {
    return ListingDataProvider(
      name: map['name'] as String,
      primaryContact: map['primaryContact'] == null
          ? null
          : map['primaryContact'] as String,
    );
  }
}
