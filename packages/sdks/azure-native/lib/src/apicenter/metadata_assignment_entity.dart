import 'package:pulumi/pulumi.dart' as pulumi;

/// The entities this metadata schema component gets applied to.
enum MetadataAssignmentEntity implements pulumi.PulumiEnum<String> {
  api("api"),
  environment("environment"),
  deployment("deployment");

  const MetadataAssignmentEntity(this.wireValue);
  @override
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
