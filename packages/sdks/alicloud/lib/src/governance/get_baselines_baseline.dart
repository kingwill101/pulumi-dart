// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBaselinesBaseline {
  /// Baseline ID
  final pulumi.Input<String> baselineId;
  /// Baseline Name.
  final pulumi.Input<String> baselineName;
  /// Baseline Description.
  final pulumi.Input<String> description;

  /// Creates a new [GetBaselinesBaseline].
  /// [baselineId] Baseline ID
  /// [baselineName] Baseline Name.
  /// [description] Baseline Description.
  const GetBaselinesBaseline({
    required this.baselineId,
    required this.baselineName,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baselineId': baselineId,
      'baselineName': baselineName,
      'description': description,
    };
  }

  factory GetBaselinesBaseline.fromMap(Map<String, dynamic> map) {
    return GetBaselinesBaseline(
      baselineId: pulumi.Input.fromValue(map['baselineId'] as String),
      baselineName: pulumi.Input.fromValue(map['baselineName'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
    );
  }
}

