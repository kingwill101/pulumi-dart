/// Type of NNI used. Example: CE | NPB
enum NniType {
  valueCE("CE"),
  valueNPB("NPB");

  const NniType(this.value);
  final String value;

  static NniType fromValue(String value) {
    for (final item in NniType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NniType value: $value');
  }
}

