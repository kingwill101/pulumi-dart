/// The entities this metadata schema component gets applied to.
enum MetadataAssignmentEntity {
  api("api"),
  environment("environment"),
  deployment("deployment");

  const MetadataAssignmentEntity(this.wireValue);
  final String wireValue;

  static MetadataAssignmentEntity fromValue(String value) {
    for (final item in MetadataAssignmentEntity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetadataAssignmentEntity value: $value');
  }
}
