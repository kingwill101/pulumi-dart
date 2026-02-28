/// The deprecation state of this resource. This can be ACTIVE, DEPRECATED, OBSOLETE, or DELETED. Operations which communicate the end of life date for an image, can use ACTIVE. Operations which create a new resource using a DEPRECATED resource will return successfully, but with a warning indicating the deprecated resource and recommending its replacement. Operations which use OBSOLETE or DELETED resources will be rejected and result in an error.
enum DeprecationStatusStateComputeBeta {
  active("ACTIVE"),
  deleted("DELETED"),
  deprecated("DEPRECATED"),
  obsolete("OBSOLETE");

  const DeprecationStatusStateComputeBeta(this.value);
  final String value;

  static DeprecationStatusStateComputeBeta fromValue(String value) {
    for (final item in DeprecationStatusStateComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown DeprecationStatusStateComputeBeta value: $value');
  }
}
