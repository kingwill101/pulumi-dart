// ignore_for_file: unused_element, unnecessary_cast


class InferenceProfileModel {
  /// The Amazon Resource Name (ARN) of the model.
  final String modelArn;

  /// Creates a new [InferenceProfileModel].
  /// [modelArn] The Amazon Resource Name (ARN) of the model.
  InferenceProfileModel({
    required this.modelArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelArn': modelArn,
    };
  }

  factory InferenceProfileModel.fromMap(Map<String, dynamic> map) {
    return InferenceProfileModel(
      modelArn: map['modelArn'] as String,
    );
  }
}

