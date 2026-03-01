/// Specify what happens to the public IP address when the VM using it is deleted
enum DeleteOptions {
  valueDelete("Delete"),
  valueDetach("Detach");

  const DeleteOptions(this.value);
  final String value;

  static DeleteOptions fromValue(String value) {
    for (final item in DeleteOptions.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeleteOptions value: $value');
  }
}

