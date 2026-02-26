/// The deprecation state of this resource. This can be ACTIVE, DEPRECATED, OBSOLETE, or DELETED. Operations which communicate the end of life date for an image, can use ACTIVE. Operations which create a new resource using a DEPRECATED resource will return successfully, but with a warning indicating the deprecated resource and recommending its replacement. Operations which use OBSOLETE or DELETED resources will be rejected and result in an error.
enum DeprecationStatusState3 {
  active("ACTIVE"),
  deleted("DELETED"),
  deprecated("DEPRECATED"),
  obsolete("OBSOLETE");

  const DeprecationStatusState3(this.value);
  final String value;

  static DeprecationStatusState3 fromValue(String value) {
    for (final item in DeprecationStatusState3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeprecationStatusState3 value: $value');
  }
}
