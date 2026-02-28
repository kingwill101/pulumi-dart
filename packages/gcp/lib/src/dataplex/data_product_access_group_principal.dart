// ignore_for_file: unused_element, unnecessary_cast

class DataProductAccessGroupPrincipal {
  /// Email of the Google Group.
  final String? googleGroup;

  /// Creates a new [DataProductAccessGroupPrincipal].
  /// [googleGroup] Email of the Google Group.
  DataProductAccessGroupPrincipal({
    this.googleGroup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final googleGroupValue = googleGroup;
    if (googleGroupValue != null) {
      map['googleGroup'] = googleGroupValue;
    }
    return map;
  }

  factory DataProductAccessGroupPrincipal.fromMap(Map<String, dynamic> map) {
    return DataProductAccessGroupPrincipal(
      googleGroup:
          map['googleGroup'] == null ? null : map['googleGroup'] as String,
    );
  }
}
