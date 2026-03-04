// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'solution.dart';

/// Mapping of installed solutions.
class InstalledSolutionMap {
  /// The key representing the installed solution.
  final pulumi.Input<String> key;

  /// The installed solution value.
  final pulumi.Input<Solution> value;

  /// Creates a new [InstalledSolutionMap].
  /// [key] The key representing the installed solution.
  /// [value] The installed solution value.
  InstalledSolutionMap({required this.key, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': pulumi.Input.mapInputValue<Solution, Map<String, dynamic>>(
        value,
        (value) => value.toMap(),
      ),
    };
  }

  factory InstalledSolutionMap.fromMap(Map<String, dynamic> map) {
    return InstalledSolutionMap(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(
        Solution.fromMap((map['value']! as Map).cast<String, dynamic>()),
      ),
    );
  }
}
