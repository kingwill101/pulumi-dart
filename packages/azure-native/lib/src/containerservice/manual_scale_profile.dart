// ignore_for_file: unused_element, unnecessary_cast


/// Specifications on number of machines.
class ManualScaleProfile {
  /// Number of nodes.
  final int? count;
  /// VM size that AKS will use when creating and scaling e.g. 'Standard_E4s_v3', 'Standard_E16s_v3' or 'Standard_D16s_v5'.
  final String? size;

  /// Creates a new [ManualScaleProfile].
  /// [count] Number of nodes.
  /// [size] VM size that AKS will use when creating and scaling e.g. 'Standard_E4s_v3', 'Standard_E16s_v3' or 'Standard_D16s_v5'.
  ManualScaleProfile({
    this.count,
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'size': ?size,
    };
  }

  factory ManualScaleProfile.fromMap(Map<String, dynamic> map) {
    return ManualScaleProfile(
      count: map['count'] == null ? null : map['count'] as int,
      size: map['size'] == null ? null : map['size'] as String,
    );
  }
}

