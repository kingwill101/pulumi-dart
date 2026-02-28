// ignore_for_file: unused_element, unnecessary_cast

class GetWorkerPoolInstanceSplit {
  /// Specifies percent of the instance split to this Revision. This defaults to zero if unspecified.
  final int percent;

  /// Revision to which to assign this portion of instances, if split allocation is by revision.
  final String revision;

  /// The allocation type for this instance split. Possible values: ["INSTANCE_SPLIT_ALLOCATION_TYPE_LATEST", "INSTANCE_SPLIT_ALLOCATION_TYPE_REVISION"]
  final String type;

  /// Creates a new [GetWorkerPoolInstanceSplit].
  /// [percent] Specifies percent of the instance split to this Revision. This defaults to zero if unspecified.
  /// [revision] Revision to which to assign this portion of instances, if split allocation is by revision.
  /// [type] The allocation type for this instance split. Possible values: ["INSTANCE_SPLIT_ALLOCATION_TYPE_LATEST", "INSTANCE_SPLIT_ALLOCATION_TYPE_REVISION"]
  GetWorkerPoolInstanceSplit({
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

  factory GetWorkerPoolInstanceSplit.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolInstanceSplit(
      percent: map['percent'] as int,
      revision: map['revision'] as String,
      type: map['type'] as String,
    );
  }
}
