import 'package:pulumi/pulumi.dart';
import 'get_policy_args.dart';
import 'get_policy_result.dart';

/// Use this data source to retrieve a Cloud Identity policy.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const test = gcp.cloudidentity.getPolicy({
/// name: "policies/{policy_id}",
/// });
/// export const policyCustomer = test.then(test => test.customer);
/// export const policyQueryQuery = test.then(test => test.policyQueries?.[0]?.query);
/// export const policyQueryOrgUnit = test.then(test => test.policyQueries?.[0]?.orgUnit);
/// export const policyQueryGroup = test.then(test => test.policyQueries?.[0]?.group);
/// export const policyQuerySortOrder = test.then(test => test.policyQueries?.[0]?.sortOrder);
/// export const policySetting = test.then(test => test.setting);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test = gcp.cloudidentity.get_policy(name="policies/{policy_id}")
/// pulumi.export("policyCustomer", test.customer)
/// pulumi.export("policyQueryQuery", test.policy_queries[0].query)
/// pulumi.export("policyQueryOrgUnit", test.policy_queries[0].org_unit)
/// pulumi.export("policyQueryGroup", test.policy_queries[0].group)
/// pulumi.export("policyQuerySortOrder", test.policy_queries[0].sort_order)
/// pulumi.export("policySetting", test.setting)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Gcp.CloudIdentity.GetPolicy.Invoke(new()
/// {
/// Name = "policies/{policy_id}",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["policyCustomer"] = test.Apply(getPolicyResult => getPolicyResult.Customer),
/// ["policyQueryQuery"] = test.Apply(getPolicyResult => getPolicyResult.PolicyQueries[0]?.Query),
/// ["policyQueryOrgUnit"] = test.Apply(getPolicyResult => getPolicyResult.PolicyQueries[0]?.OrgUnit),
/// ["policyQueryGroup"] = test.Apply(getPolicyResult => getPolicyResult.PolicyQueries[0]?.Group),
/// ["policyQuerySortOrder"] = test.Apply(getPolicyResult => getPolicyResult.PolicyQueries[0]?.SortOrder),
/// ["policySetting"] = test.Apply(getPolicyResult => getPolicyResult.Setting),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudidentity"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// test, err := cloudidentity.GetPolicy(ctx, &cloudidentity.GetPolicyArgs{
/// Name: "policies/{policy_id}",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("policyCustomer", test.Customer)
/// ctx.Export("policyQueryQuery", test.PolicyQueries[0].Query)
/// ctx.Export("policyQueryOrgUnit", test.PolicyQueries[0].OrgUnit)
/// ctx.Export("policyQueryGroup", test.PolicyQueries[0].Group)
/// ctx.Export("policyQuerySortOrder", test.PolicyQueries[0].SortOrder)
/// ctx.Export("policySetting", test.Setting)
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudidentity.CloudidentityFunctions;
/// import com.pulumi.gcp.cloudidentity.inputs.GetPolicyArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var test = CloudidentityFunctions.getPolicy(GetPolicyArgs.builder()
/// .name("policies/{policy_id}")
/// .build());
///
/// ctx.export("policyCustomer", test.customer());
/// ctx.export("policyQueryQuery", test.policyQueries()[0].query());
/// ctx.export("policyQueryOrgUnit", test.policyQueries()[0].orgUnit());
/// ctx.export("policyQueryGroup", test.policyQueries()[0].group());
/// ctx.export("policyQuerySortOrder", test.policyQueries()[0].sortOrder());
/// ctx.export("policySetting", test.setting());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: gcp:cloudidentity:getPolicy
/// arguments:
/// name: policies/{policy_id}
/// outputs:
/// # The customer the policy belongs to
/// policyCustomer: ${test.customer}
/// # The CEL query of the policy
/// policyQueryQuery: ${test.policyQueries[0].query}
/// # The org unit the policy applies to
/// policyQueryOrgUnit: ${test.policyQueries[0].orgUnit}
/// # The group the policy applies to
/// policyQueryGroup: ${test.policyQueries[0].group}
/// # The sort order of the policy
/// policyQuerySortOrder: ${test.policyQueries[0].sortOrder}
/// # The setting of the policy as a JSON string
/// policySetting: ${test.setting}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetPolicyResult> getPolicy(
  GetPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudidentity/getPolicy:getPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPolicyResult.fromMap(result);
}
