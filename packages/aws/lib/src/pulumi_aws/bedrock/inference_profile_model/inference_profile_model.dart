// ignore_for_file: unused_element, unnecessary_cast

class InferenceProfileModel {
  /// The Amazon Resource Name (ARN) of the model.
  final String modelArn;

  InferenceProfileModel({
    required this.modelArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['modelArn'] = modelArn;
    return map;
  }

  factory InferenceProfileModel.fromMap(Map<String, dynamic> map) {
    return InferenceProfileModel(
      modelArn: map['modelArn'] as String,
    );
  }
}
