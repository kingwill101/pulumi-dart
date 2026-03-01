/// Share kind.
enum ShareKind {
  valueCopyBased("CopyBased"),
  valueInPlace("InPlace");

  const ShareKind(this.value);
  final String value;

  static ShareKind fromValue(String value) {
    for (final item in ShareKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ShareKind value: $value');
  }
}

