// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Instructions for labeling job
class LabelingJobInstructions {
  /// The link to a page with detailed labeling instructions for labelers.
  final pulumi.Input<String?>? uri;

  /// Creates a new [LabelingJobInstructions].
  /// [uri] The link to a page with detailed labeling instructions for labelers.
  const LabelingJobInstructions({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': ?uri,
    };
  }

  factory LabelingJobInstructions.fromMap(Map<String, dynamic> map) {
    return LabelingJobInstructions(
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
