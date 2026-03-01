/// Optional. The action to be taken with regards to install/update/remove of the gallery application in the event of a reboot.
enum GalleryApplicationScriptRebootBehavior {
  none("None"),
  rerun("Rerun");

  const GalleryApplicationScriptRebootBehavior(this.value);
  final String value;

  static GalleryApplicationScriptRebootBehavior fromValue(String value) {
    for (final item in GalleryApplicationScriptRebootBehavior.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GalleryApplicationScriptRebootBehavior value: $value');
  }
}

