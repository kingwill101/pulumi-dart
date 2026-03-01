// ignore_for_file: unused_element, unnecessary_cast

class QueueHttpTargetUriOverrideQueryOverride {
  /// The query parameters (e.g., qparam1=123&qparam2=456). Default is an empty string.
  final String? queryParams;

  /// Creates a new [QueueHttpTargetUriOverrideQueryOverride].
  /// [queryParams] The query parameters (e.g., qparam1=123&qparam2=456). Default is an empty string.
  QueueHttpTargetUriOverrideQueryOverride({this.queryParams});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'queryParams': ?queryParams};
  }

  factory QueueHttpTargetUriOverrideQueryOverride.fromMap(
    Map<String, dynamic> map,
  ) {
    return QueueHttpTargetUriOverrideQueryOverride(
      queryParams: map['queryParams'] == null
          ? null
          : map['queryParams'] as String,
    );
  }
}
