// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_variable_type_enum_value_response.dart';

/// Definition of EnvironmentVariable
class EnvironmentVariableResponse {
  /// <p>The name or key of the environment variable.</p>
  final pulumi.Input<String>? name;
  /// <p>The type of environment variable. Valid values include:</p> <ul> <li> <p> <code>PARAMETER_STORE</code>: An environment variable stored in Systems Manager Parameter Store. For environment variables of this type, specify the name of the parameter as the <code>value</code> of the EnvironmentVariable. The parameter value will be substituted for the name at runtime. You can also define Parameter Store environment variables in the buildspec. To learn how to do so, see <a href='https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec.env.parameter-store'>env/parameter-store</a> in the <i>CodeBuild User Guide</i>.</p> </li> <li> <p> <code>PLAINTEXT</code>: An environment variable in plain text format. This is the default value.</p> </li> <li> <p> <code>SECRETS_MANAGER</code>: An environment variable stored in Secrets Manager. For environment variables of this type, specify the name of the secret as the <code>value</code> of the EnvironmentVariable. The secret value will be substituted for the name at runtime. You can also define Secrets Manager environment variables in the buildspec. To learn how to do so, see <a href='https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec.env.secrets-manager'>env/secrets-manager</a> in the <i>CodeBuild User Guide</i>.</p> </li> </ul>
  final pulumi.Input<EnvironmentVariableTypeEnumValueResponse>? type;
  /// <p>The value of the environment variable.</p> <important> <p>We strongly discourage the use of <code>PLAINTEXT</code> environment variables to store sensitive values, especially Amazon Web Services secret key IDs. <code>PLAINTEXT</code> environment variables can be displayed in plain text using the CodeBuild console and the CLI. For sensitive values, we recommend you use an environment variable of type <code>PARAMETER_STORE</code> or <code>SECRETS_MANAGER</code>. </p> </important>
  final pulumi.Input<String>? value;

  /// Creates a new [EnvironmentVariableResponse].
  /// [name] <p>The name or key of the environment variable.</p>
  /// [type] <p>The type of environment variable. Valid values include:</p> <ul> <li> <p> <code>PARAMETER_STORE</code>: An environment variable stored in Systems Manager Parameter Store. For environment variables of this type, specify the name of the parameter as the <code>value</code> of the EnvironmentVariable. The parameter value will be substituted for the name at runtime. You can also define Parameter Store environment variables in the buildspec. To learn how to do so, see <a href='https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec.env.parameter-store'>env/parameter-store</a> in the <i>CodeBuild User Guide</i>.</p> </li> <li> <p> <code>PLAINTEXT</code>: An environment variable in plain text format. This is the default value.</p> </li> <li> <p> <code>SECRETS_MANAGER</code>: An environment variable stored in Secrets Manager. For environment variables of this type, specify the name of the secret as the <code>value</code> of the EnvironmentVariable. The secret value will be substituted for the name at runtime. You can also define Secrets Manager environment variables in the buildspec. To learn how to do so, see <a href='https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec.env.secrets-manager'>env/secrets-manager</a> in the <i>CodeBuild User Guide</i>.</p> </li> </ul>
  /// [value] <p>The value of the environment variable.</p> <important> <p>We strongly discourage the use of <code>PLAINTEXT</code> environment variables to store sensitive values, especially Amazon Web Services secret key IDs. <code>PLAINTEXT</code> environment variables can be displayed in plain text using the CodeBuild console and the CLI. For sensitive values, we recommend you use an environment variable of type <code>PARAMETER_STORE</code> or <code>SECRETS_MANAGER</code>. </p> </important>
  EnvironmentVariableResponse({
    this.name,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?pulumi.Input.mapOptionalInputValue<EnvironmentVariableTypeEnumValueResponse, Map<String, dynamic>>(type, (value) => value.toMap()),
      'value': ?value,
    };
  }

  factory EnvironmentVariableResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentVariableResponse(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      type: map['type'] == null ? null : (EnvironmentVariableTypeEnumValueResponse.fromMap((map['type']! as Map).cast<String, dynamic>())).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

