// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInferenceProfileModel {
  /// The Amazon Resource Name (ARN) of the model.
  final pulumi.Input<String> modelArn;

  /// Creates a new [GetInferenceProfileModel].
  /// [modelArn] The Amazon Resource Name (ARN) of the model.
  GetInferenceProfileModel({required this.modelArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'modelArn': modelArn};
  }

  factory GetInferenceProfileModel.fromMap(Map<String, dynamic> map) {
    return GetInferenceProfileModel(
      modelArn: pulumi.Input.fromValue(map['modelArn'] as String),
    );
  }
}
