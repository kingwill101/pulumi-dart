// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getEventCategories.
class GetEventCategoriesResult {
  /// List of the event categories.
  final List<String> eventCategories;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  final String? sourceType;

  GetEventCategoriesResult({
    required this.eventCategories,
    required this.id,
    required this.region,
    this.sourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['eventCategories'] = eventCategories;
    map['id'] = id;
    map['region'] = region;
    final sourceTypeValue = sourceType;
    if (sourceTypeValue != null) {
      map['sourceType'] = sourceTypeValue;
    }
    return map;
  }

  factory GetEventCategoriesResult.fromMap(Map<String, dynamic> map) {
    return GetEventCategoriesResult(
      eventCategories: (map['eventCategories'] as List).cast<String>(),
      id: map['id'] as String,
      region: map['region'] as String,
      sourceType:
          map['sourceType'] == null ? null : map['sourceType'] as String,
    );
  }
}
