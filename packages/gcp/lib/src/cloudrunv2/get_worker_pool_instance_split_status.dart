// ignore_for_file: unused_element, unnecessary_cast

class GetWorkerPoolInstanceSplitStatus {
  /// Specifies percent of the instance split to this Revision.
  final int percent;

  /// Revision to which this instance split is assigned.
  final String revision;

  /// The allocation type for this instance split.
  final String type;

  /// Creates a new [GetWorkerPoolInstanceSplitStatus].
  /// [percent] Specifies percent of the instance split to this Revision.
  /// [revision] Revision to which this instance split is assigned.
  /// [type] The allocation type for this instance split.
  GetWorkerPoolInstanceSplitStatus({
    required this.percent,
    required this.revision,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['percent'] = percent;
    map['revision'] = revision;
    map['type'] = type;
    return map;
  }

  factory GetWorkerPoolInstanceSplitStatus.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolInstanceSplitStatus(
      percent: map['percent'] as int,
      revision: map['revision'] as String,
      type: map['type'] as String,
    );
  }
}
