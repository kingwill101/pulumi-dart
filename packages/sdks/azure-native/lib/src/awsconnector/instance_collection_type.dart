/// Property value
enum InstanceCollectionType {
  iNSTANCEFLEET("INSTANCE_FLEET"),
  iNSTANCEGROUP("INSTANCE_GROUP");

  const InstanceCollectionType(this.wireValue);
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

