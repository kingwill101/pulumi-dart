import 'package:pulumi/pulumi.dart' as pulumi;

/// The data replication scenario handled by this FlowProfile. Please not, that this value cannot be updated after creation.
enum DataClassType implements pulumi.PulumiEnum<String> {
  messaging("Messaging"),
  aPI("API"),
  stream("Stream"),
  files("Files"),
  softwareArtifacts("SoftwareArtifacts"),
  complex("Complex");

  const DataClassType(this.wireValue);
  @override
  final String wireValue;

  static DataClassType fromValue(String value) {
    for (final item in DataClassType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataClassType value: $value');
  }
}
