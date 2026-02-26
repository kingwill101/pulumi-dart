import 'package:pulumi/pulumi.dart';
import 'get_policies_args.dart';
import 'get_policies_result.dart';

/// Data source for managing an AWS Organizations Policies.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = aws.organizations.getPolicies({
/// filter: "SERVICE_CONTROL_POLICY",
/// });
/// const exampleGetPolicy = example.then(example => std.toset({
/// input: example.ids,
/// })).then(invoke => .reduce((__obj, [__key, __value]) => ({ ...__obj, [__key]: aws.organizations.getPolicy({
/// policyId: __value,
/// }) })));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.organizations.get_policies(filter="SERVICE_CONTROL_POLICY")
/// example_get_policy = {__key: aws.organizations.get_policy(policy_id=__value) for __key, __value in std.toset(input=example.ids).result}
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Organizations.GetPolicies.Invoke(new()
/// {
/// Filter = "SERVICE_CONTROL_POLICY",
/// });
///
/// var exampleGetPolicy = Std.Toset.Invoke(new()
/// {
/// Input = example.Apply(getPoliciesResult => getPoliciesResult.Ids),
/// }).Apply(invoke => );
///
/// });
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetPoliciesResult> getPolicies(
  GetPoliciesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getPolicies:getPolicies',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPoliciesResult.fromMap(result);
}
