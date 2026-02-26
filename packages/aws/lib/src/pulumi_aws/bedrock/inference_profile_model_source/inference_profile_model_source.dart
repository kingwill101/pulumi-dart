// ignore_for_file: unused_element, unnecessary_cast

class InferenceProfileModelSource {
  /// The Amazon Resource Name (ARN) of the model.
  final String copyFrom;

  InferenceProfileModelSource({
    required this.copyFrom,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['copyFrom'] = copyFrom;
    return map;
  }

  factory InferenceProfileModelSource.fromMap(Map<String, dynamic> map) {
    return InferenceProfileModelSource(
      copyFrom: map['copyFrom'] as String,
    );
  }
}
