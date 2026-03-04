/// Property value
enum OpenSearchWarmPartitionInstanceType {
  ultrawarm1LargeSearch("ultrawarm1.large.search"),
  ultrawarm1MediumSearch("ultrawarm1.medium.search"),
  ultrawarm1XlargeSearch("ultrawarm1.xlarge.search");

  const OpenSearchWarmPartitionInstanceType(this.wireValue);
  final String wireValue;

  static OpenSearchWarmPartitionInstanceType fromValue(String value) {
    for (final item in OpenSearchWarmPartitionInstanceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown OpenSearchWarmPartitionInstanceType value: $value',
    );
  }
}
