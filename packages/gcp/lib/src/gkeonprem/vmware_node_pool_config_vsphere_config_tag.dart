// ignore_for_file: unused_element, unnecessary_cast

class VMwareNodePoolConfigVsphereConfigTag {
  /// The Vsphere tag category.
  final String? category;

  /// The Vsphere tag name.
  final String? tag;

  /// Creates a new [VMwareNodePoolConfigVsphereConfigTag].
  /// [category] The Vsphere tag category.
  /// [tag] The Vsphere tag name.
  VMwareNodePoolConfigVsphereConfigTag({
    this.category,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final categoryValue = category;
    if (categoryValue != null) {
      map['category'] = categoryValue;
    }
    final tagValue = tag;
    if (tagValue != null) {
      map['tag'] = tagValue;
    }
    return map;
  }

  factory VMwareNodePoolConfigVsphereConfigTag.fromMap(
      Map<String, dynamic> map) {
    return VMwareNodePoolConfigVsphereConfigTag(
      category: map['category'] == null ? null : map['category'] as String,
      tag: map['tag'] == null ? null : map['tag'] as String,
    );
  }
}
