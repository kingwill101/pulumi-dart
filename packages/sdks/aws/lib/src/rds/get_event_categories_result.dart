// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEventCategories.
class GetEventCategoriesResult {
  /// List of the event categories.
  final List<String> eventCategories;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  final String? sourceType;

  /// Creates a new [GetEventCategoriesResult].
  /// [eventCategories] List of the event categories.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [sourceType] Optional.
  const GetEventCategoriesResult({
    required this.eventCategories,
    required this.id,
    required this.region,
    this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventCategories': eventCategories,
      'id': id,
      'region': region,
      'sourceType': ?sourceType,
    };
  }

  factory GetEventCategoriesResult.fromMap(Map<String, dynamic> map) {
    return GetEventCategoriesResult(
      eventCategories: (map['eventCategories'] as List).cast<String>(),
      id: map['id'] as String,
      region: map['region'] as String,
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
