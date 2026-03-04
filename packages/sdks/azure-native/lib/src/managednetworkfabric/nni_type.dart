/// Type of NNI used. Example: CE | NPB
enum NniType {
  valueCE("CE"),
  valueNPB("NPB");

  const NniType(this.wireValue);
  final String wireValue;

  static NniType fromValue(String value) {
    for (final item in NniType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NniType value: $value');
  }
}
