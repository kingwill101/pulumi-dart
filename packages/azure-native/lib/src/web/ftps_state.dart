/// State of FTP / FTPS service
enum FtpsState {
  valueAllAllowed("AllAllowed"),
  valueFtpsOnly("FtpsOnly"),
  valueDisabled("Disabled");

  const FtpsState(this.value);
  final String value;

  static FtpsState fromValue(String value) {
    for (final item in FtpsState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FtpsState value: $value');
  }
}

