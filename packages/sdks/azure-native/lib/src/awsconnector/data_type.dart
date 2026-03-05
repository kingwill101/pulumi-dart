/// The data type of the parameter, such as ``text`` or ``aws:ec2:image``. The default is ``text``.
enum DataType {
  awsEc2Image("aws:ec2:image"),
  text("text");

  const DataType(this.wireValue);
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

