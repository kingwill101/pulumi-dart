// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentAgentActionGroupActionGroupExecutor {
  /// Custom control method for handling the information elicited from the user. Valid values: `RETURN_CONTROL`.
  /// To skip using a Lambda function and instead return the predicted action group, in addition to the parameters and information required for it, in the `InvokeAgent` response, specify `RETURN_CONTROL`.
  /// Only one of `customControl` or `lambda` can be specified.
  final pulumi.Input<String>? customControl;
  /// ARN of the Lambda function containing the business logic that is carried out upon invoking the action.
  /// Only one of `lambda` or `customControl` can be specified.
  final pulumi.Input<String>? lambda;

  /// Creates a new [AgentAgentActionGroupActionGroupExecutor].
  /// [customControl] Custom control method for handling the information elicited from the user. Valid values: `RETURN_CONTROL`.
  /// [lambda] ARN of the Lambda function containing the business logic that is carried out upon invoking the action.
  const AgentAgentActionGroupActionGroupExecutor({
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
      customControl: (() { final guardedValue = map['customControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lambda: (() { final guardedValue = map['lambda']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
