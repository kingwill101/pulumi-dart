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
  InvocationArgs({
    required pulumi.Output<String> functionName,
    required pulumi.Output<String> input,
    pulumi.Output<String>? lifecycleScope,
    pulumi.Output<String>? qualifier,
    pulumi.Output<String>? region,
    pulumi.Output<String>? tenantId,
    pulumi.Output<String>? terraformKey,
    pulumi.Output<Map<String, String>>? triggers,
  }) :
      functionName = pulumi.Input.asInput<String>(functionName),
      input = pulumi.Input.asInput<String>(input),
      lifecycleScope = pulumi.Input.asOptionalInput<String>(lifecycleScope),
      qualifier = pulumi.Input.asOptionalInput<String>(qualifier),
      region = pulumi.Input.asOptionalInput<String>(region),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      terraformKey = pulumi.Input.asOptionalInput<String>(terraformKey),
      triggers = pulumi.Input.asOptionalInput<Map<String, String>>(triggers);

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
      functionName: pulumi.Output.create<String>(map['functionName'] as String),
      input: pulumi.Output.create<String>(map['input'] as String),
      lifecycleScope: map['lifecycleScope'] == null ? null : pulumi.Output.create<String>(map['lifecycleScope'] as String),
      qualifier: map['qualifier'] == null ? null : pulumi.Output.create<String>(map['qualifier'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
      terraformKey: map['terraformKey'] == null ? null : pulumi.Output.create<String>(map['terraformKey'] as String),
      triggers: map['triggers'] == null ? null : pulumi.Output.create<Map<String, String>>((map['triggers'] as Map).cast<String, String>()),
    );
  }
}

