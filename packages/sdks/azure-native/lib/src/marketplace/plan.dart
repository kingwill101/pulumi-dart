// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Plan {
  /// Plan accessibility
  final pulumi.Input<String>? accessibility;

  /// Creates a new [Plan].
  /// [accessibility] Plan accessibility
  Plan({
    this.accessibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessibility': ?accessibility,
    };
  }

  factory Plan.fromMap(Map<String, dynamic> map) {
    return Plan(
      accessibility: map['accessibility'] == null ? null : (map['accessibility']! as String).input(),
    );
  }
}

