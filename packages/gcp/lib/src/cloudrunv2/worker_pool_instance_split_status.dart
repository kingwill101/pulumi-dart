// ignore_for_file: unused_element, unnecessary_cast

class WorkerPoolInstanceSplitStatus {
  /// (Output)
  /// Specifies percent of the instance split to this Revision.
  final int? percent;

  /// (Output)
  /// Revision to which this instance split is assigned.
  final String? revision;

  /// (Output)
  /// The allocation type for this instance split.
  final String? type;

  /// Creates a new [WorkerPoolInstanceSplitStatus].
  /// [percent] (Output)
  /// [revision] (Output)
  /// [type] (Output)
  WorkerPoolInstanceSplitStatus({this.percent, this.revision, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percent': ?percent,
      'revision': ?revision,
      'type': ?type,
    };
  }

  factory WorkerPoolInstanceSplitStatus.fromMap(Map<String, dynamic> map) {
    return WorkerPoolInstanceSplitStatus(
      percent: map['percent'] == null ? null : map['percent'] as int,
      revision: map['revision'] == null ? null : map['revision'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
