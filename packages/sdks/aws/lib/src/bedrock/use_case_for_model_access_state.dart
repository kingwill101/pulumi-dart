// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UseCaseForModelAccess resources.
class UseCaseForModelAccessState {
  /// Form data from the Anthropic first time user request. See also the example [payload](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_PutUseCaseForModelAccess.html#API_PutUseCaseForModelAccess_Examples).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? formData;

  /// Creates a new [UseCaseForModelAccessState].
  /// [formData] Form data from the Anthropic first time user request. See also the example [payload](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_PutUseCaseForModelAccess.html#API_PutUseCaseForModelAccess_Examples).
  const UseCaseForModelAccessState({
    this.formData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'formData': ?formData,
    };
  }

  factory UseCaseForModelAccessState.fromMap(Map<String, dynamic> map) {
    return UseCaseForModelAccessState(
      formData: (() { final guardedValue = map['formData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
