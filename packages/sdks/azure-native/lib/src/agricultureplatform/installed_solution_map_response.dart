// ignore_for_file: unused_element, unnecessary_cast

import 'solution_response.dart';

/// Mapping of installed solutions.
class InstalledSolutionMapResponse {
  /// The key representing the installed solution.
  final String key;
  /// The installed solution value.
  final SolutionResponse value;

  /// Creates a new [InstalledSolutionMapResponse].
  /// [key] The key representing the installed solution.
  /// [value] The installed solution value.
  InstalledSolutionMapResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value.toMap(),
    };
  }

  factory InstalledSolutionMapResponse.fromMap(Map<String, dynamic> map) {
    return InstalledSolutionMapResponse(
      key: map['key'] as String,
      value: SolutionResponse.fromMap((map['value'] as Map).cast<String, dynamic>()),
    );
  }
}

