// ignore_for_file: unused_element, unnecessary_cast

class AgentAgentActionGroupActionGroupExecutor {
  /// Custom control method for handling the information elicited from the user. Valid values: `RETURN_CONTROL`.
  /// To skip using a Lambda function and instead return the predicted action group, in addition to the parameters and information required for it, in the `InvokeAgent` response, specify `RETURN_CONTROL`.
  /// Only one of <span pulumi-lang-nodejs="`customControl`" pulumi-lang-dotnet="`CustomControl`" pulumi-lang-go="`customControl`" pulumi-lang-python="`custom_control`" pulumi-lang-yaml="`customControl`" pulumi-lang-java="`customControl`">`custom_control`</span> or <span pulumi-lang-nodejs="`lambda`" pulumi-lang-dotnet="`Lambda`" pulumi-lang-go="`lambda`" pulumi-lang-python="`lambda`" pulumi-lang-yaml="`lambda`" pulumi-lang-java="`lambda`">`lambda`</span> can be specified.
  final String? customControl;

  /// ARN of the Lambda function containing the business logic that is carried out upon invoking the action.
  /// Only one of <span pulumi-lang-nodejs="`lambda`" pulumi-lang-dotnet="`Lambda`" pulumi-lang-go="`lambda`" pulumi-lang-python="`lambda`" pulumi-lang-yaml="`lambda`" pulumi-lang-java="`lambda`">`lambda`</span> or <span pulumi-lang-nodejs="`customControl`" pulumi-lang-dotnet="`CustomControl`" pulumi-lang-go="`customControl`" pulumi-lang-python="`custom_control`" pulumi-lang-yaml="`customControl`" pulumi-lang-java="`customControl`">`custom_control`</span> can be specified.
  final String? lambda;

  AgentAgentActionGroupActionGroupExecutor({
    this.customControl,
    this.lambda,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customControlValue = customControl;
    if (customControlValue != null) {
      map['customControl'] = customControlValue;
    }
    final lambdaValue = lambda;
    if (lambdaValue != null) {
      map['lambda'] = lambdaValue;
    }
    return map;
  }

  factory AgentAgentActionGroupActionGroupExecutor.fromMap(
      Map<String, dynamic> map) {
    return AgentAgentActionGroupActionGroupExecutor(
      customControl:
          map['customControl'] == null ? null : map['customControl'] as String,
      lambda: map['lambda'] == null ? null : map['lambda'] as String,
    );
  }
}
