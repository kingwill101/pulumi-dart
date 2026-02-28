// ignore_for_file: unused_element, unnecessary_cast

class GetVpcAttachmentFilter {
  /// Name of the filter.
  final String name;

  /// List of one or more values for the filter.
  final List<String> values;

  /// Creates a new [GetVpcAttachmentFilter].
  /// [name] Name of the filter.
  /// [values] List of one or more values for the filter.
  GetVpcAttachmentFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetVpcAttachmentFilter.fromMap(Map<String, dynamic> map) {
    return GetVpcAttachmentFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
