// ignore_for_file: unused_element, unnecessary_cast

class FolderSinkExclusion {
  /// A description of this exclusion.
  final String? description;

  /// If set to True, then this exclusion is disabled and it does not exclude any log entries.
  final bool? disabled;

  /// An advanced logs filter that matches the log entries to be excluded. By using the sample function, you can exclude less than 100% of the matching log entries. See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced_filters) for information on how to
  /// write a filter.
  final String filter;

  /// A client-assigned identifier, such as `load-balancer-exclusion`. Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods. First character has to be alphanumeric.
  final String name;

  FolderSinkExclusion({
    this.description,
    this.disabled,
    required this.filter,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    map['filter'] = filter;
    map['name'] = name;
    return map;
  }

  factory FolderSinkExclusion.fromMap(Map<String, dynamic> map) {
    return FolderSinkExclusion(
      description:
          map['description'] == null ? null : map['description'] as String,
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      filter: map['filter'] as String,
      name: map['name'] as String,
    );
  }
}
