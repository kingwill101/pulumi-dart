/// State of the Single Sign On for the resource
enum SingleSignOnStates {
  initial("Initial"),
  enable("Enable"),
  disable("Disable");

  const SingleSignOnStates(this.value);
  final String value;

  static SingleSignOnStates fromValue(String value) {
    for (final item in SingleSignOnStates.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SingleSignOnStates value: $value');
  }
}

