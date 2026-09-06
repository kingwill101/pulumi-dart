import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum InstanceCollectionType implements pulumi.PulumiEnum<String> {
  iNSTANCEFLEET("INSTANCE_FLEET"),
  iNSTANCEGROUP("INSTANCE_GROUP");

  const InstanceCollectionType(this.wireValue);
  @override
  final String wireValue;

  static InstanceCollectionType fromValue(String value) {
    for (final item in InstanceCollectionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceCollectionType value: $value');
  }
}
