// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDataCollector.
class GetDataCollectorResult {
  /// The time at which the data collector was created in milliseconds since the epoch.
  final String createdAt;

  /// A description of the data collector.
  final String description;

  /// The time at which the Data Collector was last updated in milliseconds since the epoch.
  final String lastModifiedAt;

  /// ID of the data collector. Must begin with `dc_`.
  final String name;

  /// Immutable. The type of data this data collector will collect.
  final String type;

  GetDataCollectorResult({
    required this.createdAt,
    required this.description,
    required this.lastModifiedAt,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createdAt'] = createdAt;
    map['description'] = description;
    map['lastModifiedAt'] = lastModifiedAt;
    map['name'] = name;
    map['type'] = type;
    return map;
  }

  factory GetDataCollectorResult.fromMap(Map<String, dynamic> map) {
    return GetDataCollectorResult(
      createdAt: map['createdAt'] as String,
      description: map['description'] as String,
      lastModifiedAt: map['lastModifiedAt'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
