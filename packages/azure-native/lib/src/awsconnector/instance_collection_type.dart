/// Property value
enum InstanceCollectionType {
  iNSTANCEFLEET("INSTANCE_FLEET"),
  iNSTANCEGROUP("INSTANCE_GROUP");

  const InstanceCollectionType(this.value);
  final String value;

  static InstanceCollectionType fromValue(String value) {
    for (final item in InstanceCollectionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceCollectionType value: $value');
  }
}

