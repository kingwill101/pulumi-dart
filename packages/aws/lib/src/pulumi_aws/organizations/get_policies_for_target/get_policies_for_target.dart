import 'package:pulumi/pulumi.dart';
import 'get_policies_for_target_args.dart';
import 'get_policies_for_target_result.dart';

/// Data source for managing an AWS Organizations Policies For Target.
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
/// const example = aws.organizations.getOrganization({});
/// const exampleGetPoliciesForTarget = example.then(example => aws.organizations.getPoliciesForTarget({
/// targetId: example.roots?.[0]?.id,
/// filter: "SERVICE_CONTROL_POLICY",
/// }));
/// const exampleGetPolicy = exampleGetPoliciesForTarget.then(exampleGetPoliciesForTarget => std.toset({
/// input: exampleGetPoliciesForTarget.ids,
/// })).then(invoke => .reduce((__obj, [__key, __value]) => ({ ...__obj, [__key]: aws.organizations.getPolicy({
/// policyId: __value,
/// }) })));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.organizations.get_organization()
/// example_get_policies_for_target = aws.organizations.get_policies_for_target(target_id=example.roots[0].id,
/// filter="SERVICE_CONTROL_POLICY")
/// example_get_policy = {__key: aws.organizations.get_policy(policy_id=__value) for __key, __value in std.toset(input=example_get_policies_for_target.ids).result}
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
/// var example = Aws.Organizations.GetOrganization.Invoke();
///
/// var exampleGetPoliciesForTarget = Aws.Organizations.GetPoliciesForTarget.Invoke(new()
/// {
/// TargetId = example.Apply(getOrganizationResult => getOrganizationResult.Roots[0]?.Id),
/// Filter = "SERVICE_CONTROL_POLICY",
/// });
///
/// var exampleGetPolicy = Std.Toset.Invoke(new()
/// {
/// Input = exampleGetPoliciesForTarget.Apply(getPoliciesForTargetResult => getPoliciesForTargetResult.Ids),
/// }).Apply(invoke => );
///
/// });
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetPoliciesForTargetResult> getPoliciesForTarget(
  GetPoliciesForTargetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getPoliciesForTarget:getPoliciesForTarget',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPoliciesForTargetResult.fromMap(result);
}
