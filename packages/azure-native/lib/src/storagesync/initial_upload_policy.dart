/// Policy for how the initial upload sync session is performed.
enum InitialUploadPolicy {
  serverAuthoritative("ServerAuthoritative"),
  merge("Merge");

  const InitialUploadPolicy(this.value);
  final String value;

  static InitialUploadPolicy fromValue(String value) {
    for (final item in InitialUploadPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InitialUploadPolicy value: $value');
  }
}

