import 'package:pulumi/pulumi.dart';
import 'get_policies_args.dart';
import 'get_policies_result.dart';

/// Use this data source to list Cloud Identity policies.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const all = gcp.cloudidentity.getPolicies({});
/// export const firstPolicyName = all.then(all => all.policies?.[0]?.name);
/// export const firstPolicyCustomer = all.then(all => all.policies?.[0]?.customer);
/// export const policyQueryQuery = all.then(all => all.policies?.[0]?.policyQueries?.[0]?.query);
/// export const policyQueryOrgUnit = all.then(all => all.policies?.[0]?.policyQueries?.[0]?.orgUnit);
/// export const policyQueryGroup = all.then(all => all.policies?.[0]?.policyQueries?.[0]?.group);
/// export const policyQuerySortOrder = all.then(all => all.policies?.[0]?.policyQueries?.[0]?.sortOrder);
/// export const policySetting = all.then(all => all.policies?.[0]?.setting);
/// export const policyType = all.then(all => all.policies?.[0]?.type);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// all = gcp.cloudidentity.get_policies()
/// pulumi.export("firstPolicyName", all.policies[0].name)
/// pulumi.export("firstPolicyCustomer", all.policies[0].customer)
/// pulumi.export("policyQueryQuery", all.policies[0].policy_queries[0].query)
/// pulumi.export("policyQueryOrgUnit", all.policies[0].policy_queries[0].org_unit)
/// pulumi.export("policyQueryGroup", all.policies[0].policy_queries[0].group)
/// pulumi.export("policyQuerySortOrder", all.policies[0].policy_queries[0].sort_order)
/// pulumi.export("policySetting", all.policies[0].setting)
/// pulumi.export("policyType", all.policies[0].type)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var all = Gcp.CloudIdentity.GetPolicies.Invoke();
///
/// return new Dictionary<string, object?>
/// {
/// ["firstPolicyName"] = all.Apply(getPoliciesResult => getPoliciesResult.Policies[0]?.Name),
/// ["firstPolicyCustomer"] = all.Apply(getPoliciesResult => getPoliciesResult.Policies[0]?.Customer),
/// ["policyQueryQuery"] = all.Apply(getPoliciesResult => getPoliciesResult.Policies[0]?.PolicyQueries[0]?.Query),
/// ["policyQueryOrgUnit"] = all.Apply(getPoliciesResult => getPoliciesResult.Policies[0]?.PolicyQueries[0]?.OrgUnit),
/// ["policyQueryGroup"] = all.Apply(getPoliciesResult => getPoliciesResult.Policies[0]?.PolicyQueries[0]?.Group),
/// ["policyQuerySortOrder"] = all.Apply(getPoliciesResult => getPoliciesResult.Policies[0]?.PolicyQueries[0]?.SortOrder),
/// ["policySetting"] = all.Apply(getPoliciesResult => getPoliciesResult.Policies[0]?.Setting),
/// ["policyType"] = all.Apply(getPoliciesResult => getPoliciesResult.Policies[0]?.Type),
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
/// all, err := cloudidentity.GetPolicies(ctx, &cloudidentity.GetPoliciesArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("firstPolicyName", all.Policies[0].Name)
/// ctx.Export("firstPolicyCustomer", all.Policies[0].Customer)
/// ctx.Export("policyQueryQuery", all.Policies[0].PolicyQueries[0].Query)
/// ctx.Export("policyQueryOrgUnit", all.Policies[0].PolicyQueries[0].OrgUnit)
/// ctx.Export("policyQueryGroup", all.Policies[0].PolicyQueries[0].Group)
/// ctx.Export("policyQuerySortOrder", all.Policies[0].PolicyQueries[0].SortOrder)
/// ctx.Export("policySetting", all.Policies[0].Setting)
/// ctx.Export("policyType", all.Policies[0].Type)
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
/// import com.pulumi.gcp.cloudidentity.inputs.GetPoliciesArgs;
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
/// final var all = CloudidentityFunctions.getPolicies(GetPoliciesArgs.builder()
/// .build());
///
/// ctx.export("firstPolicyName", all.policies()[0].name());
/// ctx.export("firstPolicyCustomer", all.policies()[0].customer());
/// ctx.export("policyQueryQuery", all.policies()[0].policyQueries()[0].query());
/// ctx.export("policyQueryOrgUnit", all.policies()[0].policyQueries()[0].orgUnit());
/// ctx.export("policyQueryGroup", all.policies()[0].policyQueries()[0].group());
/// ctx.export("policyQuerySortOrder", all.policies()[0].policyQueries()[0].sortOrder());
/// ctx.export("policySetting", all.policies()[0].setting());
/// ctx.export("policyType", all.policies()[0].type());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// all:
/// fn::invoke:
/// function: gcp:cloudidentity:getPolicies
/// arguments: {}
/// outputs:
/// # The name of the first policy in the list of policies
/// firstPolicyName: ${all.policies[0].name}
/// # The customer to whom the first policy belongs to. This will always be the
/// # // same across multiple policies as well.
/// firstPolicyCustomer: ${all.policies[0].customer}
/// # The CEL query of the first policy
/// policyQueryQuery: ${all.policies[0].policyQueries[0].query}
/// # The org unit the first policy applies to
/// policyQueryOrgUnit: ${all.policies[0].policyQueries[0].orgUnit}
/// # The group the first policy applies to
/// policyQueryGroup: ${all.policies[0].policyQueries[0].group}
/// # The sort order of the first policy
/// policyQuerySortOrder: ${all.policies[0].policyQueries[0].sortOrder}
/// # The setting of the first policy as a JSON string
/// policySetting: ${all.policies[0].setting}
/// # The type of policy - ADMIN/SYSTEM
/// policyType: ${all.policies[0].type}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetPoliciesResult> getPolicies(
  GetPoliciesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudidentity/getPolicies:getPolicies',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPoliciesResult.fromMap(result);
}
