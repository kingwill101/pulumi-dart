// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Invocation.
class InvocationArgs {
  /// Name of the Lambda function.
  final Input<String> functionName;

  /// JSON payload to the Lambda function.
  ///
  /// The following arguments are optional:
  final Input<String> input;

  /// Lifecycle scope of the resource to manage. Valid values are `CREATE_ONLY` and `CRUD`. Defaults to `CREATE_ONLY`. `CREATE_ONLY` will invoke the function only on creation or replacement. `CRUD` will invoke the function on each lifecycle event, and augment the input JSON payload with additional lifecycle information.
  final Input<String>? lifecycleScope;

  /// Qualifier (i.e., version) of the Lambda function. Defaults to `$LATEST`.
  final Input<String>? qualifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Tenant Id to serve invocations from specified tenant.
  final Input<String>? tenantId;
  final Input<String>? terraformKey;

  /// Map of arbitrary keys and values that, when changed, will trigger a re-invocation.
  final Input<Map<String, String>>? triggers;

  InvocationArgs({
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
      functionName: Input.asInput<String>(map['functionName']),
      input: Input.asInput<String>(map['input']),
      lifecycleScope: Input.asOptionalInput<String>(map['lifecycleScope']),
      qualifier: Input.asOptionalInput<String>(map['qualifier']),
      region: Input.asOptionalInput<String>(map['region']),
      tenantId: Input.asOptionalInput<String>(map['tenantId']),
      terraformKey: Input.asOptionalInput<String>(map['terraformKey']),
      triggers: Input.asOptionalInput<Map<String, String>>(map['triggers']),
    );
  }
}
