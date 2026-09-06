import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of IP assignment.
enum IpAssignmentType implements pulumi.PulumiEnum<String> {
  automatic("Automatic"),
  manual("Manual");

  const IpAssignmentType(this.wireValue);
  @override
  final String wireValue;

  static IpAssignmentType fromValue(String value) {
    for (final item in IpAssignmentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpAssignmentType value: $value');
  }
}
