// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listWebAppSyncFunctionTriggersSlot.
class ListWebAppSyncFunctionTriggersSlotResult {
  /// Secret key.
  final String? key;
  /// Trigger URL.
  final String? triggerUrl;

  /// Creates a new [ListWebAppSyncFunctionTriggersSlotResult].
  /// [key] Secret key.
  /// [triggerUrl] Trigger URL.
  ListWebAppSyncFunctionTriggersSlotResult({
    this.key,
    this.triggerUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'triggerUrl': ?triggerUrl,
    };
  }

  factory ListWebAppSyncFunctionTriggersSlotResult.fromMap(Map<String, dynamic> map) {
    return ListWebAppSyncFunctionTriggersSlotResult(
      key: map['key'] == null ? null : map['key'] as String,
      triggerUrl: map['triggerUrl'] == null ? null : map['triggerUrl'] as String,
    );
  }
}

