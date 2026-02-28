// ignore_for_file: unused_element, unnecessary_cast

/// Contains details of the listing publisher.
class PublisherResponseAnalyticshubV1beta1 {
  /// Optional. Name of the listing publisher.
  final String name;

  /// Optional. Email or URL of the listing publisher. Max Length: 1000 bytes.
  final String primaryContact;

  /// Creates a new [PublisherResponseAnalyticshubV1beta1].
  /// [name] Optional. Name of the listing publisher.
  /// [primaryContact] Optional. Email or URL of the listing publisher. Max Length: 1000 bytes.
  PublisherResponseAnalyticshubV1beta1({
    required this.name,
    required this.primaryContact,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['primaryContact'] = primaryContact;
    return map;
  }

  factory PublisherResponseAnalyticshubV1beta1.fromMap(
      Map<String, dynamic> map) {
    return PublisherResponseAnalyticshubV1beta1(
      name: map['name'] as String,
      primaryContact: map['primaryContact'] as String,
    );
  }
}
