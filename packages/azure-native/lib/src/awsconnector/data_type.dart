/// The data type of the parameter, such as ``text`` or ``aws:ec2:image``. The default is ``text``.
enum DataType {
  awsEc2Image("aws:ec2:image"),
  text("text");

  const DataType(this.value);
  final String value;

  static DataType fromValue(String value) {
    for (final item in DataType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataType value: $value');
  }
}

