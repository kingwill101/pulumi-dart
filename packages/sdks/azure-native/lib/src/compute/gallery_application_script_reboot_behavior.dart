import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. The action to be taken with regards to install/update/remove of the gallery application in the event of a reboot.
enum GalleryApplicationScriptRebootBehavior implements pulumi.PulumiEnum<String> {
  none("None"),
  rerun("Rerun");

  const GalleryApplicationScriptRebootBehavior(this.wireValue);
  @override
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
