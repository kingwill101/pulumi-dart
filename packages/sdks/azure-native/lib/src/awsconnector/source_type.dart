/// Property value
enum SourceType {
  aWSEC2Instance("AWS::EC2::Instance"),
  aWSIoTThing("AWS::IoT::Thing"),
  aWSSSMManagedInstance("AWS::SSM::ManagedInstance");

  const SourceType(this.value);
  final String value;

  static SourceType fromValue(String value) {
    for (final item in SourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceType value: $value');
  }
}

