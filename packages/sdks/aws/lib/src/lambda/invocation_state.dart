// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Invocation resources.
class InvocationState {
  /// Name of the Lambda function.
  final pulumi.Input<String>? functionName;
  /// JSON payload to the Lambda function.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? input;
  /// Lifecycle scope of the resource to manage. Valid values are `CREATE_ONLY` and `CRUD`. Defaults to `CREATE_ONLY`. `CREATE_ONLY` will invoke the function only on creation or replacement. `CRUD` will invoke the function on each lifecycle event, and augment the input JSON payload with additional lifecycle information.
  final pulumi.Input<String>? lifecycleScope;
  /// Qualifier (i.e., version) of the Lambda function. Defaults to `$LATEST`.
  final pulumi.Input<String>? qualifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// String result of the Lambda function invocation.
  final pulumi.Input<String>? result;
  /// Tenant Id to serve invocations from specified tenant.
  final pulumi.Input<String>? tenantId;
  final pulumi.Input<String>? terraformKey;
  /// Map of arbitrary keys and values that, when changed, will trigger a re-invocation.
  final pulumi.Input<Map<String, String>>? triggers;

  /// Creates a new [InvocationState].
  /// [functionName] Name of the Lambda function.
  /// [input] JSON payload to the Lambda function.
  /// [lifecycleScope] Lifecycle scope of the resource to manage. Valid values are `CREATE_ONLY` and `CRUD`. Defaults to `CREATE_ONLY`. `CREATE_ONLY` will invoke the function only on creation or replacement. `CRUD` will invoke the function on each lifecycle event, and augment the input JSON payload with additional lifecycle information.
  /// [qualifier] Qualifier (i.e., version) of the Lambda function. Defaults to `$LATEST`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [result] String result of the Lambda function invocation.
  /// [tenantId] Tenant Id to serve invocations from specified tenant.
  /// [terraformKey] Optional.
  /// [triggers] Map of arbitrary keys and values that, when changed, will trigger a re-invocation.
  InvocationState({
    this.functionName,
    this.input,
    this.lifecycleScope,
    this.qualifier,
    this.region,
    this.result,
    this.tenantId,
    this.terraformKey,
    this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': ?functionName,
      'input': ?input,
      'lifecycleScope': ?lifecycleScope,
      'qualifier': ?qualifier,
      'region': ?region,
      'result': ?result,
      'tenantId': ?tenantId,
      'terraformKey': ?terraformKey,
      'triggers': ?triggers,
    };
  }

  factory InvocationState.fromMap(Map<String, dynamic> map) {
    return InvocationState(
      functionName: map['functionName'] == null ? null : ((map['functionName'] as String).input()).input(),
      input: map['input'] == null ? null : ((map['input'] as String).input()).input(),
      lifecycleScope: map['lifecycleScope'] == null ? null : ((map['lifecycleScope'] as String).input()).input(),
      qualifier: map['qualifier'] == null ? null : ((map['qualifier'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      result: map['result'] == null ? null : ((map['result'] as String).input()).input(),
      tenantId: map['tenantId'] == null ? null : ((map['tenantId'] as String).input()).input(),
      terraformKey: map['terraformKey'] == null ? null : ((map['terraformKey'] as String).input()).input(),
      triggers: map['triggers'] == null ? null : (((map['triggers'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

