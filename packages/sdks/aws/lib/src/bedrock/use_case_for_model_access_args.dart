// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bedrock_use_case_for_model_access_use_case_for_model_access_args_doc}
/// The set of arguments for UseCaseForModelAccess.
/// {@endtemplate}
/// {@macro pulumi_bedrock_use_case_for_model_access_use_case_for_model_access_args_doc}
class UseCaseForModelAccessArgs {
  /// Form data from the Anthropic first time user request. See also the example [payload](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_PutUseCaseForModelAccess.html#API_PutUseCaseForModelAccess_Examples).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> formData;

  /// Creates a new [UseCaseForModelAccessArgs].
  /// [formData] Form data from the Anthropic first time user request. See also the example [payload](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_PutUseCaseForModelAccess.html#API_PutUseCaseForModelAccess_Examples).
  const UseCaseForModelAccessArgs({
    required this.formData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'formData': formData,
    };
  }

  factory UseCaseForModelAccessArgs.fromMap(Map<String, dynamic> map) {
    return UseCaseForModelAccessArgs(
      formData: pulumi.Input.fromValue(map['formData'] as String),
    );
  }
}
