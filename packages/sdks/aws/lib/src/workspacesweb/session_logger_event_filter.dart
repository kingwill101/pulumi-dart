// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SessionLoggerEventFilter {
  /// Block that specifies to monitor all events. Set to `{}` to monitor all events.
  final pulumi.Input<Map<String, dynamic>>? all;
  /// List of specific events to monitor. Valid values include session events like `SessionStart`, `SessionEnd`, etc.
  final pulumi.Input<List<String>>? includes;

  /// Creates a new [SessionLoggerEventFilter].
  /// [all] Block that specifies to monitor all events. Set to `{}` to monitor all events.
  /// [includes] List of specific events to monitor. Valid values include session events like `SessionStart`, `SessionEnd`, etc.
  SessionLoggerEventFilter({
    this.all,
    this.includes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'includes': ?includes,
    };
  }

  factory SessionLoggerEventFilter.fromMap(Map<String, dynamic> map) {
    return SessionLoggerEventFilter(
      all: map['all'] == null ? null : (((map['all'] as Map).cast<String, dynamic>()).input()).input(),
      includes: map['includes'] == null ? null : (((map['includes'] as List).cast<String>()).input()).input(),
    );
  }
}

