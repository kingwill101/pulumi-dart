// ignore_for_file: unused_element, unnecessary_cast


class AccountAnalyticalStorage {
  /// The schema type of the Analytical Storage for this Cosmos DB account. Possible values are `FullFidelity` and `WellDefined`.
  final String schemaType;

  /// Creates a new [AccountAnalyticalStorage].
  /// [schemaType] The schema type of the Analytical Storage for this Cosmos DB account. Possible values are `FullFidelity` and `WellDefined`.
  AccountAnalyticalStorage({
    required this.schemaType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemaType': schemaType,
    };
  }

  factory AccountAnalyticalStorage.fromMap(Map<String, dynamic> map) {
    return AccountAnalyticalStorage(
      schemaType: map['schemaType'] as String,
    );
  }
}

