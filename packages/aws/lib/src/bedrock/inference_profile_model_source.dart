// ignore_for_file: unused_element, unnecessary_cast


class InferenceProfileModelSource {
  /// The Amazon Resource Name (ARN) of the model.
  final String copyFrom;

  /// Creates a new [InferenceProfileModelSource].
  /// [copyFrom] The Amazon Resource Name (ARN) of the model.
  InferenceProfileModelSource({
    required this.copyFrom,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyFrom': copyFrom,
    };
  }

  factory InferenceProfileModelSource.fromMap(Map<String, dynamic> map) {
    return InferenceProfileModelSource(
      copyFrom: map['copyFrom'] as String,
    );
  }
}

