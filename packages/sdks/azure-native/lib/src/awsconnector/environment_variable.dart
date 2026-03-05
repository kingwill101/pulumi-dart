// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_variable_type_enum_value.dart';

/// Definition of EnvironmentVariable
class EnvironmentVariable {
  /// &lt;p&gt;The name or key of the environment variable.&lt;/p&gt;
  final pulumi.Input<String>? name;
  /// &lt;p&gt;The type of environment variable. Valid values include:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;PARAMETER_STORE&lt;/code&gt;: An environment variable stored in Systems Manager Parameter Store. For environment variables of this type, specify the name of the parameter as the &lt;code&gt;value&lt;/code&gt; of the EnvironmentVariable. The parameter value will be substituted for the name at runtime. You can also define Parameter Store environment variables in the buildspec. To learn how to do so, see &lt;a href='https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec.env.parameter-store'&gt;env/parameter-store&lt;/a&gt; in the &lt;i&gt;CodeBuild User Guide&lt;/i&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;PLAINTEXT&lt;/code&gt;: An environment variable in plain text format. This is the default value.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;SECRETS_MANAGER&lt;/code&gt;: An environment variable stored in Secrets Manager. For environment variables of this type, specify the name of the secret as the &lt;code&gt;value&lt;/code&gt; of the EnvironmentVariable. The secret value will be substituted for the name at runtime. You can also define Secrets Manager environment variables in the buildspec. To learn how to do so, see &lt;a href='https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec.env.secrets-manager'&gt;env/secrets-manager&lt;/a&gt; in the &lt;i&gt;CodeBuild User Guide&lt;/i&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  final pulumi.Input<EnvironmentVariableTypeEnumValue>? type;
  /// &lt;p&gt;The value of the environment variable.&lt;/p&gt; &lt;important&gt; &lt;p&gt;We strongly discourage the use of &lt;code&gt;PLAINTEXT&lt;/code&gt; environment variables to store sensitive values, especially Amazon Web Services secret key IDs. &lt;code&gt;PLAINTEXT&lt;/code&gt; environment variables can be displayed in plain text using the CodeBuild console and the CLI. For sensitive values, we recommend you use an environment variable of type &lt;code&gt;PARAMETER_STORE&lt;/code&gt; or &lt;code&gt;SECRETS_MANAGER&lt;/code&gt;. &lt;/p&gt; &lt;/important&gt;
  final pulumi.Input<String>? value;

  /// Creates a new [EnvironmentVariable].
  /// [name] &lt;p&gt;The name or key of the environment variable.&lt;/p&gt;
  /// [type] &lt;p&gt;The type of environment variable. Valid values include:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;PARAMETER_STORE&lt;/code&gt;: An environment variable stored in Systems Manager Parameter Store. For environment variables of this type, specify the name of the parameter as the &lt;code&gt;value&lt;/code&gt; of the EnvironmentVariable. The parameter value will be substituted for the name at runtime. You can also define Parameter Store environment variables in the buildspec. To learn how to do so, see &lt;a href='https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec.env.parameter-store'&gt;env/parameter-store&lt;/a&gt; in the &lt;i&gt;CodeBuild User Guide&lt;/i&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;PLAINTEXT&lt;/code&gt;: An environment variable in plain text format. This is the default value.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;SECRETS_MANAGER&lt;/code&gt;: An environment variable stored in Secrets Manager. For environment variables of this type, specify the name of the secret as the &lt;code&gt;value&lt;/code&gt; of the EnvironmentVariable. The secret value will be substituted for the name at runtime. You can also define Secrets Manager environment variables in the buildspec. To learn how to do so, see &lt;a href='https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec.env.secrets-manager'&gt;env/secrets-manager&lt;/a&gt; in the &lt;i&gt;CodeBuild User Guide&lt;/i&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  /// [value] &lt;p&gt;The value of the environment variable.&lt;/p&gt; &lt;important&gt; &lt;p&gt;We strongly discourage the use of &lt;code&gt;PLAINTEXT&lt;/code&gt; environment variables to store sensitive values, especially Amazon Web Services secret key IDs. &lt;code&gt;PLAINTEXT&lt;/code&gt; environment variables can be displayed in plain text using the CodeBuild console and the CLI. For sensitive values, we recommend you use an environment variable of type &lt;code&gt;PARAMETER_STORE&lt;/code&gt; or &lt;code&gt;SECRETS_MANAGER&lt;/code&gt;. &lt;/p&gt; &lt;/important&gt;
  EnvironmentVariable({
    this.name,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?pulumi.Input.mapOptionalInputValue<EnvironmentVariableTypeEnumValue, Map<String, dynamic>>(type, (value) => value.toMap()),
      'value': ?value,
    };
  }

  factory EnvironmentVariable.fromMap(Map<String, dynamic> map) {
    return EnvironmentVariable(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentVariableTypeEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

