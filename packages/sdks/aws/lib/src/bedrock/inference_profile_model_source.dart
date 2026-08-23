// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InferenceProfileModelSource {
  /// The Amazon Resource Name (ARN) of the model.
  final pulumi.Input<String> copyFrom;

  /// Creates a new [InferenceProfileModelSource].
  /// [copyFrom] The Amazon Resource Name (ARN) of the model.
  const InferenceProfileModelSource({
    required this.copyFrom,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyFrom': copyFrom,
    };
  }

  factory InferenceProfileModelSource.fromMap(Map<String, dynamic> map) {
    return InferenceProfileModelSource(
      copyFrom: pulumi.Input.fromValue(map['copyFrom'] as String),
    );
  }
}
