/// Specifies the detach behavior to be used while detaching a disk or which is already in the process of detachment from the virtual machine. Supported values: ForceDetach. This feature is still in preview. To force-detach a data disk update toBeDetached to 'true' along with setting detachOption: 'ForceDetach'.
enum DiskDetachOptionTypes {
  forceDetach("ForceDetach");

  const DiskDetachOptionTypes(this.wireValue);
  final String wireValue;

  static DiskDetachOptionTypes fromValue(String value) {
    for (final item in DiskDetachOptionTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskDetachOptionTypes value: $value');
  }
}
