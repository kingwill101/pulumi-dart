// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getHistory.
class GetHistoryResult {
  /// A short human-readable (plain text) name to display in the UI. Maximum of 100 characters. - In response: present if set during create. - In create request: optional
  final String displayName;

  /// A unique identifier within a project for this History. Returns INVALID_ARGUMENT if this field is set or overwritten by the caller. - In response always set - In create request: never set
  final String historyId;

  /// A name to uniquely identify a history within a project. Maximum of 200 characters. - In response always set - In create request: always set
  final String name;

  /// The platform of the test history. - In response: always set. Returns the platform of the last execution if unknown.
  final String testPlatform;

  /// Creates a new [GetHistoryResult].
  /// [displayName] A short human-readable (plain text) name to display in the UI. Maximum of 100 characters. - In response: present if set during create. - In create request: optional
  /// [historyId] A unique identifier within a project for this History. Returns INVALID_ARGUMENT if this field is set or overwritten by the caller. - In response always set - In create request: never set
  /// [name] A name to uniquely identify a history within a project. Maximum of 200 characters. - In response always set - In create request: always set
  /// [testPlatform] The platform of the test history. - In response: always set. Returns the platform of the last execution if unknown.
  GetHistoryResult({
    required this.displayName,
    required this.historyId,
    required this.name,
    required this.testPlatform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'historyId': historyId,
      'name': name,
      'testPlatform': testPlatform,
    };
  }

  factory GetHistoryResult.fromMap(Map<String, dynamic> map) {
    return GetHistoryResult(
      displayName: map['displayName'] as String,
      historyId: map['historyId'] as String,
      name: map['name'] as String,
      testPlatform: map['testPlatform'] as String,
    );
  }
}
