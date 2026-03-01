// ignore_for_file: unused_element, unnecessary_cast

class ControlFilterAction {
  /// The data store to filter.
  final String dataStore;

  /// The filter to apply to the search results.
  final String filter;

  /// Creates a new [ControlFilterAction].
  /// [dataStore] The data store to filter.
  /// [filter] The filter to apply to the search results.
  ControlFilterAction({required this.dataStore, required this.filter});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dataStore': dataStore, 'filter': filter};
  }

  factory ControlFilterAction.fromMap(Map<String, dynamic> map) {
    return ControlFilterAction(
      dataStore: map['dataStore'] as String,
      filter: map['filter'] as String,
    );
  }
}
