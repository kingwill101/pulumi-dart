// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getGlobalRulestackChangeLog.
class GetGlobalRulestackChangeLogResult {
  /// list of changes
  final List<String> changes;

  /// lastCommitted timestamp
  final String? lastCommitted;

  /// lastModified timestamp
  final String? lastModified;

  /// Creates a new [GetGlobalRulestackChangeLogResult].
  /// [changes] list of changes
  /// [lastCommitted] lastCommitted timestamp
  /// [lastModified] lastModified timestamp
  GetGlobalRulestackChangeLogResult({
    required this.changes,
    this.lastCommitted,
    this.lastModified,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changes': changes,
      'lastCommitted': ?lastCommitted,
      'lastModified': ?lastModified,
    };
  }

  factory GetGlobalRulestackChangeLogResult.fromMap(Map<String, dynamic> map) {
    return GetGlobalRulestackChangeLogResult(
      changes: (map['changes'] as List).cast<String>(),
      lastCommitted: (() {
        final guardedValue = map['lastCommitted'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      lastModified: (() {
        final guardedValue = map['lastModified'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
