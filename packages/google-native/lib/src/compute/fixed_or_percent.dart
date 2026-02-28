// ignore_for_file: unused_element, unnecessary_cast

/// Encapsulates numeric value that can be either absolute or relative.
class FixedOrPercent {
  /// Specifies a fixed number of VM instances. This must be a positive integer.
  final int? fixed;

  /// Specifies a percentage of instances between 0 to 100%, inclusive. For example, specify 80 for 80%.
  final int? percent;

  /// Creates a new [FixedOrPercent].
  /// [fixed] Specifies a fixed number of VM instances. This must be a positive integer.
  /// [percent] Specifies a percentage of instances between 0 to 100%, inclusive. For example, specify 80 for 80%.
  FixedOrPercent({
    this.fixed,
    this.percent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fixedValue = fixed;
    if (fixedValue != null) {
      map['fixed'] = fixedValue;
    }
    final percentValue = percent;
    if (percentValue != null) {
      map['percent'] = percentValue;
    }
    return map;
  }

  factory FixedOrPercent.fromMap(Map<String, dynamic> map) {
    return FixedOrPercent(
      fixed: map['fixed'] == null ? null : map['fixed'] as int,
      percent: map['percent'] == null ? null : map['percent'] as int,
    );
  }
}
