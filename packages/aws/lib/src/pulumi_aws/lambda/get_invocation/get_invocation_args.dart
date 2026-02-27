// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInvocation.
class GetInvocationArgs {
  /// Name of the Lambda function.
  final pulumi.Input<String> functionName;

  /// String in JSON format that is passed as payload to the Lambda function.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> input;

  /// Qualifier (a.k.a version) of the Lambda function. Defaults to `$LATEST`.
  final pulumi.Input<String>? qualifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Tenant Id to serve invocations from specified tenant.
  final pulumi.Input<String>? tenantId;

  GetInvocationArgs({
    required this.functionName,
    required this.input,
    this.qualifier,
    this.region,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['functionName'] = functionName;
    map['input'] = input;
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
    return map;
  }

  factory GetInvocationArgs.fromMap(Map<String, dynamic> map) {
    return GetInvocationArgs(
      functionName: pulumi.Input.asInput<String>(map['functionName']),
      input: pulumi.Input.asInput<String>(map['input']),
      qualifier: pulumi.Input.asOptionalInput<String>(map['qualifier']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tenantId: pulumi.Input.asOptionalInput<String>(map['tenantId']),
    );
  }
}
