// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InferenceProfileModel {
  /// The Amazon Resource Name (ARN) of the model.
  final pulumi.Input<String> modelArn;

  /// Creates a new [InferenceProfileModel].
  /// [modelArn] The Amazon Resource Name (ARN) of the model.
  InferenceProfileModel({required this.modelArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'modelArn': modelArn};
  }

  factory InferenceProfileModel.fromMap(Map<String, dynamic> map) {
    return InferenceProfileModel(
      modelArn: pulumi.Input.fromValue(map['modelArn'] as String),
    );
  }
}
