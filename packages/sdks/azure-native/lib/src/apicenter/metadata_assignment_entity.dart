/// The entities this metadata schema component gets applied to.
enum MetadataAssignmentEntity {
  api("api"),
  environment("environment"),
  deployment("deployment");

  const MetadataAssignmentEntity(this.value);
  final String value;

  static MetadataAssignmentEntity fromValue(String value) {
    for (final item in MetadataAssignmentEntity.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetadataAssignmentEntity value: $value');
  }
}

