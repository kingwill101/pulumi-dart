// ignore_for_file: unused_element, unnecessary_cast

class WorkerPoolInstanceSplit {
  /// Specifies percent of the instance split to this Revision. This defaults to zero if unspecified.
  final int? percent;

  /// Revision to which to assign this portion of instances, if split allocation is by revision.
  final String? revision;

  /// The allocation type for this instance split.
  /// Possible values are: `INSTANCE_SPLIT_ALLOCATION_TYPE_LATEST`, `INSTANCE_SPLIT_ALLOCATION_TYPE_REVISION`.
  final String? type;

  /// Creates a new [WorkerPoolInstanceSplit].
  /// [percent] Specifies percent of the instance split to this Revision. This defaults to zero if unspecified.
  /// [revision] Revision to which to assign this portion of instances, if split allocation is by revision.
  /// [type] The allocation type for this instance split.
  WorkerPoolInstanceSplit({this.percent, this.revision, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percent': ?percent,
      'revision': ?revision,
      'type': ?type,
    };
  }

  factory WorkerPoolInstanceSplit.fromMap(Map<String, dynamic> map) {
    return WorkerPoolInstanceSplit(
      percent: map['percent'] == null ? null : map['percent'] as int,
      revision: map['revision'] == null ? null : map['revision'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
