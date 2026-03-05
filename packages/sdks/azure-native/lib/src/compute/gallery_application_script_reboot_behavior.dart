/// Optional. The action to be taken with regards to install/update/remove of the gallery application in the event of a reboot.
enum GalleryApplicationScriptRebootBehavior {
  none("None"),
  rerun("Rerun");

  const GalleryApplicationScriptRebootBehavior(this.wireValue);
  final String wireValue;

  static GalleryApplicationScriptRebootBehavior fromValue(String value) {
    for (final item in GalleryApplicationScriptRebootBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GalleryApplicationScriptRebootBehavior value: $value');
  }
}

