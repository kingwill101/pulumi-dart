// ignore_for_file: unused_element, unnecessary_cast


class RestoreJobOtsDetail {
  /// Whether to overwrite the existing table storage recovery task. Valid values: `true`, `false`.
  final bool? overwriteExisting;

  /// Creates a new [RestoreJobOtsDetail].
  /// [overwriteExisting] Whether to overwrite the existing table storage recovery task. Valid values: `true`, `false`.
  RestoreJobOtsDetail({
    this.overwriteExisting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'overwriteExisting': ?overwriteExisting,
    };
  }

  factory RestoreJobOtsDetail.fromMap(Map<String, dynamic> map) {
    return RestoreJobOtsDetail(
      overwriteExisting: map['overwriteExisting'] == null ? null : map['overwriteExisting'] as bool,
    );
  }
}

