/// Either NO_ROOT_SQUASH, for allowing root access on the exported directory, or ROOT_SQUASH, for not allowing root access. The default is NO_ROOT_SQUASH.
enum NfsExportOptionsSquashMode {
  squashModeUnspecified("SQUASH_MODE_UNSPECIFIED"),
  noRootSquash("NO_ROOT_SQUASH"),
  rootSquash("ROOT_SQUASH");

  const NfsExportOptionsSquashMode(this.value);
  final String value;

  static NfsExportOptionsSquashMode fromValue(String value) {
    for (final item in NfsExportOptionsSquashMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NfsExportOptionsSquashMode value: $value');
  }
}
