import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the type of job details.
enum ClassDiscriminator implements pulumi.PulumiEnum<String> {
  valueDataBox("DataBox"),
  valueDataBoxDisk("DataBoxDisk"),
  valueDataBoxHeavy("DataBoxHeavy"),
  valueDataBoxCustomerDisk("DataBoxCustomerDisk");

  const ClassDiscriminator(this.wireValue);
  @override
  final String wireValue;

  static ClassDiscriminator fromValue(String value) {
    for (final item in ClassDiscriminator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClassDiscriminator value: $value');
  }
}
