// ignore_for_file: unused_element, unnecessary_cast

class GetInferenceProfileModel {
  /// The Amazon Resource Name (ARN) of the model.
  final String modelArn;

  /// Creates a new [GetInferenceProfileModel].
  /// [modelArn] The Amazon Resource Name (ARN) of the model.
  GetInferenceProfileModel({
    required this.modelArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['modelArn'] = modelArn;
    return map;
  }

  factory GetInferenceProfileModel.fromMap(Map<String, dynamic> map) {
    return GetInferenceProfileModel(
      modelArn: map['modelArn'] as String,
    );
  }
}
