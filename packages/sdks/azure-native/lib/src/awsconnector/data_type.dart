import 'package:pulumi/pulumi.dart' as pulumi;

/// The data type of the parameter, such as ``text`` or ``aws:ec2:image``. The default is ``text``.
enum DataType implements pulumi.PulumiEnum<String> {
  awsEc2Image("aws:ec2:image"),
  text("text");

  const DataType(this.wireValue);
  @override
  final String wireValue;

  static DataType fromValue(String value) {
    for (final item in DataType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataType value: $value');
  }
}
