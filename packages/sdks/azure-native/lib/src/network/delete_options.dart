/// Specify what happens to the public IP address when the VM using it is deleted
enum DeleteOptions {
  valueDelete("Delete"),
  valueDetach("Detach");

  const DeleteOptions(this.wireValue);
  final String wireValue;

  static DeleteOptions fromValue(String value) {
    for (final item in DeleteOptions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeleteOptions value: $value');
  }
}
