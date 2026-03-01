// ignore_for_file: unused_element, unnecessary_cast

class InsightsDatasetConfigIdentity {
  /// (Output)
  /// Name of the identity.
  final String? name;

  /// Type of identity to use for the DatasetConfig.
  /// Possible values are: `IDENTITY_TYPE_PER_CONFIG`, `IDENTITY_TYPE_PER_PROJECT`.
  final String type;

  /// Creates a new [InsightsDatasetConfigIdentity].
  /// [name] (Output)
  /// [type] Type of identity to use for the DatasetConfig.
  InsightsDatasetConfigIdentity({this.name, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'type': type};
  }

  factory InsightsDatasetConfigIdentity.fromMap(Map<String, dynamic> map) {
    return InsightsDatasetConfigIdentity(
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] as String,
    );
  }
}
