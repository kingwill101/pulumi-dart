// ignore_for_file: unused_element, unnecessary_cast

import 'solution.dart';

/// Mapping of installed solutions.
class InstalledSolutionMap {
  /// The key representing the installed solution.
  final String key;
  /// The installed solution value.
  final Solution value;

  /// Creates a new [InstalledSolutionMap].
  /// [key] The key representing the installed solution.
  /// [value] The installed solution value.
  InstalledSolutionMap({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value.toMap(),
    };
  }

  factory InstalledSolutionMap.fromMap(Map<String, dynamic> map) {
    return InstalledSolutionMap(
      key: map['key'] as String,
      value: Solution.fromMap((map['value'] as Map).cast<String, dynamic>()),
    );
  }
}

