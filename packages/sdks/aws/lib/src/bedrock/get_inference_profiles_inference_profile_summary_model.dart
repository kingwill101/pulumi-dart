// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInferenceProfilesInferenceProfileSummaryModel {
  /// Amazon Resource Name (ARN) of the model.
  final pulumi.Input<String> modelArn;

  /// Creates a new [GetInferenceProfilesInferenceProfileSummaryModel].
  /// [modelArn] Amazon Resource Name (ARN) of the model.
  const GetInferenceProfilesInferenceProfileSummaryModel({
    required this.modelArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelArn': modelArn,
    };
  }

  factory GetInferenceProfilesInferenceProfileSummaryModel.fromMap(Map<String, dynamic> map) {
    return GetInferenceProfilesInferenceProfileSummaryModel(
      modelArn: pulumi.Input.fromValue(map['modelArn'] as String),
    );
  }
}
