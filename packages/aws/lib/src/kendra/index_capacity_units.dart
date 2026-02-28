// ignore_for_file: unused_element, unnecessary_cast

class IndexCapacityUnits {
  /// The amount of extra query capacity for an index and GetQuerySuggestions capacity. For more information, refer to [QueryCapacityUnits](https://docs.aws.amazon.com/kendra/latest/dg/API_CapacityUnitsConfiguration.html#Kendra-Type-CapacityUnitsConfiguration-QueryCapacityUnits).
  final int? queryCapacityUnits;

  /// The amount of extra storage capacity for an index. A single capacity unit provides 30 GB of storage space or 100,000 documents, whichever is reached first. Minimum value of 0.
  final int? storageCapacityUnits;

  /// Creates a new [IndexCapacityUnits].
  /// [queryCapacityUnits] The amount of extra query capacity for an index and GetQuerySuggestions capacity. For more information, refer to [QueryCapacityUnits](https://docs.aws.amazon.com/kendra/latest/dg/API_CapacityUnitsConfiguration.html#Kendra-Type-CapacityUnitsConfiguration-QueryCapacityUnits).
  /// [storageCapacityUnits] The amount of extra storage capacity for an index. A single capacity unit provides 30 GB of storage space or 100,000 documents, whichever is reached first. Minimum value of 0.
  IndexCapacityUnits({
    this.queryCapacityUnits,
    this.storageCapacityUnits,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final queryCapacityUnitsValue = queryCapacityUnits;
    if (queryCapacityUnitsValue != null) {
      map['queryCapacityUnits'] = queryCapacityUnitsValue;
    }
    final storageCapacityUnitsValue = storageCapacityUnits;
    if (storageCapacityUnitsValue != null) {
      map['storageCapacityUnits'] = storageCapacityUnitsValue;
    }
    return map;
  }

  factory IndexCapacityUnits.fromMap(Map<String, dynamic> map) {
    return IndexCapacityUnits(
      queryCapacityUnits: map['queryCapacityUnits'] == null
          ? null
          : map['queryCapacityUnits'] as int,
      storageCapacityUnits: map['storageCapacityUnits'] == null
          ? null
          : map['storageCapacityUnits'] as int,
    );
  }
}
