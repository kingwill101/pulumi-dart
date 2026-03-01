/// The data replication scenario handled by this FlowProfile. Please not, that this value cannot be updated after creation.
enum DataClassType {
  messaging("Messaging"),
  aPI("API"),
  stream("Stream"),
  files("Files"),
  softwareArtifacts("SoftwareArtifacts"),
  complex("Complex");

  const DataClassType(this.value);
  final String value;

  static DataClassType fromValue(String value) {
    for (final item in DataClassType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataClassType value: $value');
  }
}

