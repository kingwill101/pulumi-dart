// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lambda_invocation_invocation_args_doc}
/// The set of arguments for Invocation.
/// {@endtemplate}
/// {@macro pulumi_lambda_invocation_invocation_args_doc}
class InvocationArgs {
  /// Name of the Lambda function.
  final pulumi.Input<String> functionName;
  /// JSON payload to the Lambda function.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> input;
  /// Lifecycle scope of the resource to manage. Valid values are `CREATE_ONLY` and `CRUD`. Defaults to `CREATE_ONLY`. `CREATE_ONLY` will invoke the function only on creation or replacement. `CRUD` will invoke the function on each lifecycle event, and augment the input JSON payload with additional lifecycle information.
  final pulumi.Input<String>? lifecycleScope;
  /// Qualifier (i.e., version) of the Lambda function. Defaults to `$LATEST`.
  final pulumi.Input<String>? qualifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Tenant Id to serve invocations from specified tenant.
  final pulumi.Input<String>? tenantId;
  final pulumi.Input<String>? terraformKey;
  /// Map of arbitrary keys and values that, when changed, will trigger a re-invocation.
  final pulumi.Input<Map<String, String>>? triggers;

  /// Creates a new [InvocationArgs].
  /// [functionName] Name of the Lambda function.
  /// [input] JSON payload to the Lambda function.
  /// [lifecycleScope] Lifecycle scope of the resource to manage. Valid values are `CREATE_ONLY` and `CRUD`. Defaults to `CREATE_ONLY`. `CREATE_ONLY` will invoke the function only on creation or replacement. `CRUD` will invoke the function on each lifecycle event, and augment the input JSON payload with additional lifecycle information.
  /// [qualifier] Qualifier (i.e., version) of the Lambda function. Defaults to `$LATEST`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tenantId] Tenant Id to serve invocations from specified tenant.
  /// [terraformKey] Optional.
  /// [triggers] Map of arbitrary keys and values that, when changed, will trigger a re-invocation.
  const InvocationArgs({
    required this.functionName,
    required this.input,
    this.lifecycleScope,
    this.qualifier,
    this.region,
    this.tenantId,
    this.terraformKey,
    this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': functionName,
      'input': input,
      'lifecycleScope': ?lifecycleScope,
      'qualifier': ?qualifier,
      'region': ?region,
      'tenantId': ?tenantId,
      'terraformKey': ?terraformKey,
      'triggers': ?triggers,
    };
  }

  factory InvocationArgs.fromMap(Map<String, dynamic> map) {
    return InvocationArgs(
      functionName: pulumi.Input.fromValue(map['functionName'] as String),
      input: pulumi.Input.fromValue(map['input'] as String),
      lifecycleScope: (() { final guardedValue = map['lifecycleScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qualifier: (() { final guardedValue = map['qualifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      terraformKey: (() { final guardedValue = map['terraformKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggers: (() { final guardedValue = map['triggers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
