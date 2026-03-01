/// The resource deletion policy.
enum ResourceDeletionPolicy {
  notSpecified("NotSpecified"),
  cascadeDeleteAll("CascadeDeleteAll"),
  cascadeDeleteProxyOnlyChildren("CascadeDeleteProxyOnlyChildren");

  const ResourceDeletionPolicy(this.value);
  final String value;

  static ResourceDeletionPolicy fromValue(String value) {
    for (final item in ResourceDeletionPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceDeletionPolicy value: $value');
  }
}

