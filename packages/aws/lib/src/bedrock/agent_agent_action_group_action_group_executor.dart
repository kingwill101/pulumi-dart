// ignore_for_file: unused_element, unnecessary_cast


class AgentAgentActionGroupActionGroupExecutor {
  /// Custom control method for handling the information elicited from the user. Valid values: `RETURN_CONTROL`.
  /// To skip using a Lambda function and instead return the predicted action group, in addition to the parameters and information required for it, in the `InvokeAgent` response, specify `RETURN_CONTROL`.
  /// Only one of `custom_control` or `lambda` can be specified.
  final String? customControl;
  /// ARN of the Lambda function containing the business logic that is carried out upon invoking the action.
  /// Only one of `lambda` or `custom_control` can be specified.
  final String? lambda;

  /// Creates a new [AgentAgentActionGroupActionGroupExecutor].
  /// [customControl] Custom control method for handling the information elicited from the user. Valid values: `RETURN_CONTROL`.
  /// [lambda] ARN of the Lambda function containing the business logic that is carried out upon invoking the action.
  AgentAgentActionGroupActionGroupExecutor({
    this.customControl,
    this.lambda,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customControl': ?customControl,
      'lambda': ?lambda,
    };
  }

  factory AgentAgentActionGroupActionGroupExecutor.fromMap(Map<String, dynamic> map) {
    return AgentAgentActionGroupActionGroupExecutor(
      customControl: map['customControl'] == null ? null : map['customControl'] as String,
      lambda: map['lambda'] == null ? null : map['lambda'] as String,
    );
  }
}

