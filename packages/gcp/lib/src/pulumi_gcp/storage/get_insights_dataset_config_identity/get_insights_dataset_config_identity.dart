// ignore_for_file: unused_element, unnecessary_cast

class GetInsightsDatasetConfigIdentity {
  /// Name of the identity.
  final String name;

  /// Type of identity to use for the DatasetConfig. Possible values: ["IDENTITY_TYPE_PER_CONFIG", "IDENTITY_TYPE_PER_PROJECT"]
  final String type;

  GetInsightsDatasetConfigIdentity({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['type'] = type;
    return map;
  }

  factory GetInsightsDatasetConfigIdentity.fromMap(Map<String, dynamic> map) {
    return GetInsightsDatasetConfigIdentity(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
