// ignore_for_file: unused_element, unnecessary_cast


class GetInferenceProfilesInferenceProfileSummaryModel {
  /// Amazon Resource Name (ARN) of the model.
  final String modelArn;

  /// Creates a new [GetInferenceProfilesInferenceProfileSummaryModel].
  /// [modelArn] Amazon Resource Name (ARN) of the model.
  GetInferenceProfilesInferenceProfileSummaryModel({
    required this.modelArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelArn': modelArn,
    };
  }

  factory GetInferenceProfilesInferenceProfileSummaryModel.fromMap(Map<String, dynamic> map) {
    return GetInferenceProfilesInferenceProfileSummaryModel(
      modelArn: map['modelArn'] as String,
    );
  }
}

