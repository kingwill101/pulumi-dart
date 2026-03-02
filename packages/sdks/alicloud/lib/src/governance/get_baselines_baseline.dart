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
  GetBaselinesBaseline({
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
      baselineId: (map['baselineId'] as String).input(),
      baselineName: (map['baselineName'] as String).input(),
      description: (map['description'] as String).input(),
    );
  }
}

