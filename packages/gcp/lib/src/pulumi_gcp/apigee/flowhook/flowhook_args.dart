// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Flowhook.
class FlowhookArgs {
  /// Flag that specifies whether execution should continue if the flow hook throws an exception. Set to true to continue execution. Set to false to stop execution if the flow hook throws an exception. Defaults to true.
  final pulumi.Input<bool>? continueOnError;

  /// Description of the flow hook.
  final pulumi.Input<String>? description;

  /// The resource ID of the environment.
  final pulumi.Input<String> environment;

  /// Where in the API call flow the flow hook is invoked. Must be one of PreProxyFlowHook, PostProxyFlowHook, PreTargetFlowHook, or PostTargetFlowHook.
  final pulumi.Input<String> flowHookPoint;

  /// The Apigee Organization associated with the environment
  final pulumi.Input<String> orgId;

  /// Id of the Sharedflow attaching to a flowhook point.
  final pulumi.Input<String> sharedflow;

  FlowhookArgs({
    this.continueOnError,
    this.description,
    required this.environment,
    required this.flowHookPoint,
    required this.orgId,
    required this.sharedflow,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final continueOnErrorValue = continueOnError;
    if (continueOnErrorValue != null) {
      map['continueOnError'] = continueOnErrorValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['environment'] = environment;
    map['flowHookPoint'] = flowHookPoint;
    map['orgId'] = orgId;
    map['sharedflow'] = sharedflow;
    return map;
  }

  factory FlowhookArgs.fromMap(Map<String, dynamic> map) {
    return FlowhookArgs(
      continueOnError:
          pulumi.Input.asOptionalInput<bool>(map['continueOnError']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      environment: pulumi.Input.asInput<String>(map['environment']),
      flowHookPoint: pulumi.Input.asInput<String>(map['flowHookPoint']),
      orgId: pulumi.Input.asInput<String>(map['orgId']),
      sharedflow: pulumi.Input.asInput<String>(map['sharedflow']),
    );
  }
}
