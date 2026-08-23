/// Share kind.
enum ShareKind {
  valueCopyBased("CopyBased"),
  valueInPlace("InPlace");

  const ShareKind(this.wireValue);
  final String wireValue;

  static ShareKind fromValue(String value) {
    for (final item in ShareKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ShareKind value: $value');
  }
}
