// ignore_for_file: unused_element, unnecessary_cast

class EntryBigqueryTableSpecViewSpec {
  /// (Output)
  /// The query that defines the table view.
  final String? viewQuery;

  /// Creates a new [EntryBigqueryTableSpecViewSpec].
  /// [viewQuery] (Output)
  EntryBigqueryTableSpecViewSpec({
    this.viewQuery,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final viewQueryValue = viewQuery;
    if (viewQueryValue != null) {
      map['viewQuery'] = viewQueryValue;
    }
    return map;
  }

  factory EntryBigqueryTableSpecViewSpec.fromMap(Map<String, dynamic> map) {
    return EntryBigqueryTableSpecViewSpec(
      viewQuery: map['viewQuery'] == null ? null : map['viewQuery'] as String,
    );
  }
}
