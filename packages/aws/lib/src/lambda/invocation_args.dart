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
    required String functionName,
    required String input,
    String? lifecycleScope,
    String? qualifier,
    String? region,
    String? tenantId,
    String? terraformKey,
    Map<String, String>? triggers,
  })  : functionName = pulumi.Input.asInput<String>(functionName),
        input = pulumi.Input.asInput<String>(input),
        lifecycleScope = pulumi.Input.asOptionalInput<String>(lifecycleScope),
        qualifier = pulumi.Input.asOptionalInput<String>(qualifier),
        region = pulumi.Input.asOptionalInput<String>(region),
        tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
        terraformKey = pulumi.Input.asOptionalInput<String>(terraformKey),
        triggers = pulumi.Input.asOptionalInput<Map<String, String>>(triggers);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['functionName'] = functionName;
    map['input'] = input;
    final lifecycleScopeValue = lifecycleScope;
    if (lifecycleScopeValue != null) {
      map['lifecycleScope'] = lifecycleScopeValue;
    }
    final qualifierValue = qualifier;
    if (qualifierValue != null) {
      map['qualifier'] = qualifierValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tenantIdValue = tenantId;
    if (tenantIdValue != null) {
      map['tenantId'] = tenantIdValue;
    }
    final terraformKeyValue = terraformKey;
    if (terraformKeyValue != null) {
      map['terraformKey'] = terraformKeyValue;
    }
    final triggersValue = triggers;
    if (triggersValue != null) {
      map['triggers'] = triggersValue;
    }
    return map;
  }

  factory InvocationArgs.fromMap(Map<String, dynamic> map) {
    return InvocationArgs(
      functionName: map['functionName'] as String,
      input: map['input'] as String,
      lifecycleScope: map['lifecycleScope'] == null
          ? null
          : map['lifecycleScope'] as String,
      qualifier: map['qualifier'] == null ? null : map['qualifier'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      terraformKey:
          map['terraformKey'] == null ? null : map['terraformKey'] as String,
      triggers: map['triggers'] == null
          ? null
          : (map['triggers'] as Map).cast<String, String>(),
    );
  }
}
