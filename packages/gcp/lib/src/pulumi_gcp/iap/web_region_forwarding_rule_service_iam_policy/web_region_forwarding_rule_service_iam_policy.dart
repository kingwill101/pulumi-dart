import 'package:pulumi/pulumi.dart';
import 'web_region_forwarding_rule_service_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Identity-Aware Proxy WebRegionForwardingRuleService. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-go="`iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-python="`iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-java="`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`">`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`</span>: Authoritative. Sets the IAM policy for the webregionforwardingruleservice and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-go="`iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-python="`iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-yaml="`gcp.iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-java="`gcp.iap.WebRegionForwardingRuleServiceIamBinding`">`gcp.iap.WebRegionForwardingRuleServiceIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the webregionforwardingruleservice are preserved.
/// * <span pulumi-lang-nodejs="`gcp.iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-dotnet="`gcp.iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-go="`iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-python="`iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-yaml="`gcp.iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-java="`gcp.iap.WebRegionForwardingRuleServiceIamMember`">`gcp.iap.WebRegionForwardingRuleServiceIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the webregionforwardingruleservice are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-go="`iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-python="`iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-java="`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`">`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`</span>: Retrieves the IAM policy for the webregionforwardingruleservice
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-go="`iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-python="`iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-java="`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`">`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-go="`iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-python="`iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-yaml="`gcp.iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-java="`gcp.iap.WebRegionForwardingRuleServiceIamBinding`">`gcp.iap.WebRegionForwardingRuleServiceIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-dotnet="`gcp.iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-go="`iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-python="`iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-yaml="`gcp.iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-java="`gcp.iap.WebRegionForwardingRuleServiceIamMember`">`gcp.iap.WebRegionForwardingRuleServiceIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-go="`iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-python="`iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-yaml="`gcp.iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-java="`gcp.iap.WebRegionForwardingRuleServiceIamBinding`">`gcp.iap.WebRegionForwardingRuleServiceIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-dotnet="`gcp.iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-go="`iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-python="`iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-yaml="`gcp.iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-java="`gcp.iap.WebRegionForwardingRuleServiceIamMember`">`gcp.iap.WebRegionForwardingRuleServiceIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebRegionForwardingRuleServiceIamPolicy
/// " pulumi-lang-dotnet=" gcp.iap.WebRegionForwardingRuleServiceIamPolicy
/// " pulumi-lang-go=" iap.WebRegionForwardingRuleServiceIamPolicy
/// " pulumi-lang-python=" iap.WebRegionForwardingRuleServiceIamPolicy
/// " pulumi-lang-yaml=" gcp.iap.WebRegionForwardingRuleServiceIamPolicy
/// " pulumi-lang-java=" gcp.iap.WebRegionForwardingRuleServiceIamPolicy
/// "> gcp.iap.WebRegionForwardingRuleServiceIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/iap.httpsResourceAccessor",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.iap.WebRegionForwardingRuleServiceIamPolicy("policy", {
/// project: _default.project,
/// region: _default.region,
/// forwardingRuleRegionServiceName: _default.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/iap.httpsResourceAccessor",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.iap.WebRegionForwardingRuleServiceIamPolicy("policy",
/// project=default["project"],
/// region=default["region"],
/// forwarding_rule_region_service_name=default["name"],
/// policy_data=admin.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var admin = Gcp.Organizations.GetIAMPolicy.Invoke(new()
/// {
/// Bindings = new[]
/// {
/// new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
/// {
/// Role = "roles/iap.httpsResourceAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Iap.WebRegionForwardingRuleServiceIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// Region = @default.Region,
/// ForwardingRuleRegionServiceName = @default.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/iap.httpsResourceAccessor",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iap.NewWebRegionForwardingRuleServiceIamPolicy(ctx, "policy", &iap.WebRegionForwardingRuleServiceIamPolicyArgs{
/// Project:                         pulumi.Any(_default.Project),
/// Region:                          pulumi.Any(_default.Region),
/// ForwardingRuleRegionServiceName: pulumi.Any(_default.Name),
/// PolicyData:                      pulumi.String(admin.PolicyData),
/// })
/// if err != nil {
/// return err
/// }
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.iap.WebRegionForwardingRuleServiceIamPolicy;
/// import com.pulumi.gcp.iap.WebRegionForwardingRuleServiceIamPolicyArgs;
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
/// final var admin = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
/// .bindings(GetIAMPolicyBindingArgs.builder()
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new WebRegionForwardingRuleServiceIamPolicy("policy", WebRegionForwardingRuleServiceIamPolicyArgs.builder()
/// .project(default_.project())
/// .region(default_.region())
/// .forwardingRuleRegionServiceName(default_.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:iap:WebRegionForwardingRuleServiceIamPolicy
/// properties:
/// project: ${default.project}
/// region: ${default.region}
/// forwardingRuleRegionServiceName: ${default.name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/iap.httpsResourceAccessor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// With IAM Conditions:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/iap.httpsResourceAccessor",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const policy = new gcp.iap.WebRegionForwardingRuleServiceIamPolicy("policy", {
/// project: _default.project,
/// region: _default.region,
/// forwardingRuleRegionServiceName: _default.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/iap.httpsResourceAccessor",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }])
/// policy = gcp.iap.WebRegionForwardingRuleServiceIamPolicy("policy",
/// project=default["project"],
/// region=default["region"],
/// forwarding_rule_region_service_name=default["name"],
/// policy_data=admin.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var admin = Gcp.Organizations.GetIAMPolicy.Invoke(new()
/// {
/// Bindings = new[]
/// {
/// new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
/// {
/// Role = "roles/iap.httpsResourceAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Organizations.Inputs.GetIAMPolicyBindingConditionInputArgs
/// {
/// Title = "expires_after_2019_12_31",
/// Description = "Expiring at midnight of 2019-12-31",
/// Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Iap.WebRegionForwardingRuleServiceIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// Region = @default.Region,
/// ForwardingRuleRegionServiceName = @default.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/iap.httpsResourceAccessor",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// Condition: {
/// Title:       "expires_after_2019_12_31",
/// Description: pulumi.StringRef("Expiring at midnight of 2019-12-31"),
/// Expression:  "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iap.NewWebRegionForwardingRuleServiceIamPolicy(ctx, "policy", &iap.WebRegionForwardingRuleServiceIamPolicyArgs{
/// Project:                         pulumi.Any(_default.Project),
/// Region:                          pulumi.Any(_default.Region),
/// ForwardingRuleRegionServiceName: pulumi.Any(_default.Name),
/// PolicyData:                      pulumi.String(admin.PolicyData),
/// })
/// if err != nil {
/// return err
/// }
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.iap.WebRegionForwardingRuleServiceIamPolicy;
/// import com.pulumi.gcp.iap.WebRegionForwardingRuleServiceIamPolicyArgs;
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
/// final var admin = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
/// .bindings(GetIAMPolicyBindingArgs.builder()
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var policy = new WebRegionForwardingRuleServiceIamPolicy("policy", WebRegionForwardingRuleServiceIamPolicyArgs.builder()
/// .project(default_.project())
/// .region(default_.region())
/// .forwardingRuleRegionServiceName(default_.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:iap:WebRegionForwardingRuleServiceIamPolicy
/// properties:
/// project: ${default.project}
/// region: ${default.region}
/// forwardingRuleRegionServiceName: ${default.name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/iap.httpsResourceAccessor
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebRegionForwardingRuleServiceIamBinding
/// " pulumi-lang-dotnet=" gcp.iap.WebRegionForwardingRuleServiceIamBinding
/// " pulumi-lang-go=" iap.WebRegionForwardingRuleServiceIamBinding
/// " pulumi-lang-python=" iap.WebRegionForwardingRuleServiceIamBinding
/// " pulumi-lang-yaml=" gcp.iap.WebRegionForwardingRuleServiceIamBinding
/// " pulumi-lang-java=" gcp.iap.WebRegionForwardingRuleServiceIamBinding
/// "> gcp.iap.WebRegionForwardingRuleServiceIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.WebRegionForwardingRuleServiceIamBinding("binding", {
/// project: _default.project,
/// region: _default.region,
/// forwardingRuleRegionServiceName: _default.name,
/// role: "roles/iap.httpsResourceAccessor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.WebRegionForwardingRuleServiceIamBinding("binding",
/// project=default["project"],
/// region=default["region"],
/// forwarding_rule_region_service_name=default["name"],
/// role="roles/iap.httpsResourceAccessor",
/// members=["user:jane@example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var binding = new Gcp.Iap.WebRegionForwardingRuleServiceIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// Region = @default.Region,
/// ForwardingRuleRegionServiceName = @default.Name,
/// Role = "roles/iap.httpsResourceAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iap.NewWebRegionForwardingRuleServiceIamBinding(ctx, "binding", &iap.WebRegionForwardingRuleServiceIamBindingArgs{
/// Project:                         pulumi.Any(_default.Project),
/// Region:                          pulumi.Any(_default.Region),
/// ForwardingRuleRegionServiceName: pulumi.Any(_default.Name),
/// Role:                            pulumi.String("roles/iap.httpsResourceAccessor"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// })
/// if err != nil {
/// return err
/// }
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
/// import com.pulumi.gcp.iap.WebRegionForwardingRuleServiceIamBinding;
/// import com.pulumi.gcp.iap.WebRegionForwardingRuleServiceIamBindingArgs;
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
/// var binding = new WebRegionForwardingRuleServiceIamBinding("binding", WebRegionForwardingRuleServiceIamBindingArgs.builder()
/// .project(default_.project())
/// .region(default_.region())
/// .forwardingRuleRegionServiceName(default_.name())
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:iap:WebRegionForwardingRuleServiceIamBinding
/// properties:
/// project: ${default.project}
/// region: ${default.region}
/// forwardingRuleRegionServiceName: ${default.name}
/// role: roles/iap.httpsResourceAccessor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// With IAM Conditions:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.WebRegionForwardingRuleServiceIamBinding("binding", {
/// project: _default.project,
/// region: _default.region,
/// forwardingRuleRegionServiceName: _default.name,
/// role: "roles/iap.httpsResourceAccessor",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.WebRegionForwardingRuleServiceIamBinding("binding",
/// project=default["project"],
/// region=default["region"],
/// forwarding_rule_region_service_name=default["name"],
/// role="roles/iap.httpsResourceAccessor",
/// members=["user:jane@example.com"],
/// condition={
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var binding = new Gcp.Iap.WebRegionForwardingRuleServiceIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// Region = @default.Region,
/// ForwardingRuleRegionServiceName = @default.Name,
/// Role = "roles/iap.httpsResourceAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Iap.Inputs.WebRegionForwardingRuleServiceIamBindingConditionArgs
/// {
/// Title = "expires_after_2019_12_31",
/// Description = "Expiring at midnight of 2019-12-31",
/// Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iap.NewWebRegionForwardingRuleServiceIamBinding(ctx, "binding", &iap.WebRegionForwardingRuleServiceIamBindingArgs{
/// Project:                         pulumi.Any(_default.Project),
/// Region:                          pulumi.Any(_default.Region),
/// ForwardingRuleRegionServiceName: pulumi.Any(_default.Name),
/// Role:                            pulumi.String("roles/iap.httpsResourceAccessor"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &iap.WebRegionForwardingRuleServiceIamBindingConditionArgs{
/// Title:       pulumi.String("expires_after_2019_12_31"),
/// Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
/// },
/// })
/// if err != nil {
/// return err
/// }
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
/// import com.pulumi.gcp.iap.WebRegionForwardingRuleServiceIamBinding;
/// import com.pulumi.gcp.iap.WebRegionForwardingRuleServiceIamBindingArgs;
/// import com.pulumi.gcp.iap.inputs.WebRegionForwardingRuleServiceIamBindingConditionArgs;
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
/// var binding = new WebRegionForwardingRuleServiceIamBinding("binding", WebRegionForwardingRuleServiceIamBindingArgs.builder()
/// .project(default_.project())
/// .region(default_.region())
/// .forwardingRuleRegionServiceName(default_.name())
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .condition(WebRegionForwardingRuleServiceIamBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:iap:WebRegionForwardingRuleServiceIamBinding
/// properties:
/// project: ${default.project}
/// region: ${default.region}
/// forwardingRuleRegionServiceName: ${default.name}
/// role: roles/iap.httpsResourceAccessor
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebRegionForwardingRuleServiceIamMember
/// " pulumi-lang-dotnet=" gcp.iap.WebRegionForwardingRuleServiceIamMember
/// " pulumi-lang-go=" iap.WebRegionForwardingRuleServiceIamMember
/// " pulumi-lang-python=" iap.WebRegionForwardingRuleServiceIamMember
/// " pulumi-lang-yaml=" gcp.iap.WebRegionForwardingRuleServiceIamMember
/// " pulumi-lang-java=" gcp.iap.WebRegionForwardingRuleServiceIamMember
/// "> gcp.iap.WebRegionForwardingRuleServiceIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.WebRegionForwardingRuleServiceIamMember("member", {
/// project: _default.project,
/// region: _default.region,
/// forwardingRuleRegionServiceName: _default.name,
/// role: "roles/iap.httpsResourceAccessor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.WebRegionForwardingRuleServiceIamMember("member",
/// project=default["project"],
/// region=default["region"],
/// forwarding_rule_region_service_name=default["name"],
/// role="roles/iap.httpsResourceAccessor",
/// member="user:jane@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var member = new Gcp.Iap.WebRegionForwardingRuleServiceIamMember("member", new()
/// {
/// Project = @default.Project,
/// Region = @default.Region,
/// ForwardingRuleRegionServiceName = @default.Name,
/// Role = "roles/iap.httpsResourceAccessor",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iap.NewWebRegionForwardingRuleServiceIamMember(ctx, "member", &iap.WebRegionForwardingRuleServiceIamMemberArgs{
/// Project:                         pulumi.Any(_default.Project),
/// Region:                          pulumi.Any(_default.Region),
/// ForwardingRuleRegionServiceName: pulumi.Any(_default.Name),
/// Role:                            pulumi.String("roles/iap.httpsResourceAccessor"),
/// Member:                          pulumi.String("user:jane@example.com"),
/// })
/// if err != nil {
/// return err
/// }
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
/// import com.pulumi.gcp.iap.WebRegionForwardingRuleServiceIamMember;
/// import com.pulumi.gcp.iap.WebRegionForwardingRuleServiceIamMemberArgs;
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
/// var member = new WebRegionForwardingRuleServiceIamMember("member", WebRegionForwardingRuleServiceIamMemberArgs.builder()
/// .project(default_.project())
/// .region(default_.region())
/// .forwardingRuleRegionServiceName(default_.name())
/// .role("roles/iap.httpsResourceAccessor")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:iap:WebRegionForwardingRuleServiceIamMember
/// properties:
/// project: ${default.project}
/// region: ${default.region}
/// forwardingRuleRegionServiceName: ${default.name}
/// role: roles/iap.httpsResourceAccessor
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// With IAM Conditions:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.WebRegionForwardingRuleServiceIamMember("member", {
/// project: _default.project,
/// region: _default.region,
/// forwardingRuleRegionServiceName: _default.name,
/// role: "roles/iap.httpsResourceAccessor",
/// member: "user:jane@example.com",
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.WebRegionForwardingRuleServiceIamMember("member",
/// project=default["project"],
/// region=default["region"],
/// forwarding_rule_region_service_name=default["name"],
/// role="roles/iap.httpsResourceAccessor",
/// member="user:jane@example.com",
/// condition={
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var member = new Gcp.Iap.WebRegionForwardingRuleServiceIamMember("member", new()
/// {
/// Project = @default.Project,
/// Region = @default.Region,
/// ForwardingRuleRegionServiceName = @default.Name,
/// Role = "roles/iap.httpsResourceAccessor",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Iap.Inputs.WebRegionForwardingRuleServiceIamMemberConditionArgs
/// {
/// Title = "expires_after_2019_12_31",
/// Description = "Expiring at midnight of 2019-12-31",
/// Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iap.NewWebRegionForwardingRuleServiceIamMember(ctx, "member", &iap.WebRegionForwardingRuleServiceIamMemberArgs{
/// Project:                         pulumi.Any(_default.Project),
/// Region:                          pulumi.Any(_default.Region),
/// ForwardingRuleRegionServiceName: pulumi.Any(_default.Name),
/// Role:                            pulumi.String("roles/iap.httpsResourceAccessor"),
/// Member:                          pulumi.String("user:jane@example.com"),
/// Condition: &iap.WebRegionForwardingRuleServiceIamMemberConditionArgs{
/// Title:       pulumi.String("expires_after_2019_12_31"),
/// Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
/// },
/// })
/// if err != nil {
/// return err
/// }
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
/// import com.pulumi.gcp.iap.WebRegionForwardingRuleServiceIamMember;
/// import com.pulumi.gcp.iap.WebRegionForwardingRuleServiceIamMemberArgs;
/// import com.pulumi.gcp.iap.inputs.WebRegionForwardingRuleServiceIamMemberConditionArgs;
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
/// var member = new WebRegionForwardingRuleServiceIamMember("member", WebRegionForwardingRuleServiceIamMemberArgs.builder()
/// .project(default_.project())
/// .region(default_.region())
/// .forwardingRuleRegionServiceName(default_.name())
/// .role("roles/iap.httpsResourceAccessor")
/// .member("user:jane@example.com")
/// .condition(WebRegionForwardingRuleServiceIamMemberConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:iap:WebRegionForwardingRuleServiceIamMember
/// properties:
/// project: ${default.project}
/// region: ${default.region}
/// forwardingRuleRegionServiceName: ${default.name}
/// role: roles/iap.httpsResourceAccessor
/// member: user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Identity-Aware Proxy WebRegionForwardingRuleService
///
/// Three different resources help you manage your IAM policy for Identity-Aware Proxy WebRegionForwardingRuleService. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-go="`iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-python="`iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-java="`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`">`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`</span>: Authoritative. Sets the IAM policy for the webregionforwardingruleservice and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-go="`iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-python="`iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-yaml="`gcp.iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-java="`gcp.iap.WebRegionForwardingRuleServiceIamBinding`">`gcp.iap.WebRegionForwardingRuleServiceIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the webregionforwardingruleservice are preserved.
/// * <span pulumi-lang-nodejs="`gcp.iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-dotnet="`gcp.iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-go="`iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-python="`iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-yaml="`gcp.iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-java="`gcp.iap.WebRegionForwardingRuleServiceIamMember`">`gcp.iap.WebRegionForwardingRuleServiceIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the webregionforwardingruleservice are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-go="`iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-python="`iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-java="`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`">`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`</span>: Retrieves the IAM policy for the webregionforwardingruleservice
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-go="`iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-python="`iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`" pulumi-lang-java="`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`">`gcp.iap.WebRegionForwardingRuleServiceIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-go="`iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-python="`iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-yaml="`gcp.iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-java="`gcp.iap.WebRegionForwardingRuleServiceIamBinding`">`gcp.iap.WebRegionForwardingRuleServiceIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-dotnet="`gcp.iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-go="`iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-python="`iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-yaml="`gcp.iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-java="`gcp.iap.WebRegionForwardingRuleServiceIamMember`">`gcp.iap.WebRegionForwardingRuleServiceIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-go="`iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-python="`iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-yaml="`gcp.iap.WebRegionForwardingRuleServiceIamBinding`" pulumi-lang-java="`gcp.iap.WebRegionForwardingRuleServiceIamBinding`">`gcp.iap.WebRegionForwardingRuleServiceIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-dotnet="`gcp.iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-go="`iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-python="`iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-yaml="`gcp.iap.WebRegionForwardingRuleServiceIamMember`" pulumi-lang-java="`gcp.iap.WebRegionForwardingRuleServiceIamMember`">`gcp.iap.WebRegionForwardingRuleServiceIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebRegionForwardingRuleServiceIamPolicy
/// " pulumi-lang-dotnet=" gcp.iap.WebRegionForwardingRuleServiceIamPolicy
/// " pulumi-lang-go=" iap.WebRegionForwardingRuleServiceIamPolicy
/// " pulumi-lang-python=" iap.WebRegionForwardingRuleServiceIamPolicy
/// " pulumi-lang-yaml=" gcp.iap.WebRegionForwardingRuleServiceIamPolicy
/// " pulumi-lang-java=" gcp.iap.WebRegionForwardingRuleServiceIamPolicy
/// "> gcp.iap.WebRegionForwardingRuleServiceIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/iap.httpsResourceAccessor",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.iap.WebRegionForwardingRuleServiceIamPolicy("policy", {
/// project: _default.project,
/// region: _default.region,
/// forwardingRuleRegionServiceName: _default.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/iap.httpsResourceAccessor",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.iap.WebRegionForwardingRuleServiceIamPolicy("policy",
/// project=default["project"],
/// region=default["region"],
/// forwarding_rule_region_service_name=default["name"],
/// policy_data=admin.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var admin = Gcp.Organizations.GetIAMPolicy.Invoke(new()
/// {
/// Bindings = new[]
/// {
/// new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
/// {
/// Role = "roles/iap.httpsResourceAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Iap.WebRegionForwardingRuleServiceIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// Region = @default.Region,
/// ForwardingRuleRegionServiceName = @default.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/iap.httpsResourceAccessor",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iap.NewWebRegionForwardingRuleServiceIamPolicy(ctx, "policy", &iap.WebRegionForwardingRuleServiceIamPolicyArgs{
/// Project:                         pulumi.Any(_default.Project),
/// Region:                          pulumi.Any(_default.Region),
/// ForwardingRuleRegionServiceName: pulumi.Any(_default.Name),
/// PolicyData:                      pulumi.String(admin.PolicyData),
/// })
/// if err != nil {
/// return err
/// }
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.iap.WebRegionForwardingRuleServiceIamPolicy;
/// import com.pulumi.gcp.iap.WebRegionForwardingRuleServiceIamPolicyArgs;
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
/// final var admin = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
/// .bindings(GetIAMPolicyBindingArgs.builder()
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new WebRegionForwardingRuleServiceIamPolicy("policy", WebRegionForwardingRuleServiceIamPolicyArgs.builder()
/// .project(default_.project())
/// .region(default_.region())
/// .forwardingRuleRegionServiceName(default_.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:iap:WebRegionForwardingRuleServiceIamPolicy
/// properties:
/// project: ${default.project}
/// region: ${default.region}
/// forwardingRuleRegionServiceName: ${default.name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/iap.httpsResourceAccessor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// With IAM Conditions:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/iap.httpsResourceAccessor",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const policy = new gcp.iap.WebRegionForwardingRuleServiceIamPolicy("policy", {
/// project: _default.project,
/// region: _default.region,
/// forwardingRuleRegionServiceName: _default.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/iap.httpsResourceAccessor",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }])
/// policy = gcp.iap.WebRegionForwardingRuleServiceIamPolicy("policy",
/// project=default["project"],
/// region=default["region"],
/// forwarding_rule_region_service_name=default["name"],
/// policy_data=admin.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var admin = Gcp.Organizations.GetIAMPolicy.Invoke(new()
/// {
/// Bindings = new[]
/// {
/// new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
/// {
/// Role = "roles/iap.httpsResourceAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Organizations.Inputs.GetIAMPolicyBindingConditionInputArgs
/// {
/// Title = "expires_after_2019_12_31",
/// Description = "Expiring at midnight of 2019-12-31",
/// Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Iap.WebRegionForwardingRuleServiceIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// Region = @default.Region,
/// ForwardingRuleRegionServiceName = @default.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/iap.httpsResourceAccessor",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// Condition: {
/// Title:       "expires_after_2019_12_31",
/// Description: pulumi.StringRef("Expiring at midnight of 2019-12-31"),
/// Expression:  "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iap.NewWebRegionForwardingRuleServiceIamPolicy(ctx, "policy", &iap.WebRegionForwardingRuleServiceIamPolicyArgs{
/// Project:                         pulumi.Any(_default.Project),
/// Region:                          pulumi.Any(_default.Region),
/// ForwardingRuleRegionServiceName: pulumi.Any(_default.Name),
/// PolicyData:                      pulumi.String(admin.PolicyData),
/// })
/// if err != nil {
/// return err
/// }
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.iap.WebRegionForwardingRuleServiceIamPolicy;
/// import com.pulumi.gcp.iap.WebRegionForwardingRuleServiceIamPolicyArgs;
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
/// final var admin = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
/// .bindings(GetIAMPolicyBindingArgs.builder()
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var policy = new WebRegionForwardingRuleServiceIamPolicy("policy", WebRegionForwardingRuleServiceIamPolicyArgs.builder()
/// .project(default_.project())
/// .region(default_.region())
/// .forwardingRuleRegionServiceName(default_.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:iap:WebRegionForwardingRuleServiceIamPolicy
/// properties:
/// project: ${default.project}
/// region: ${default.region}
/// forwardingRuleRegionServiceName: ${default.name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/iap.httpsResourceAccessor
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebRegionForwardingRuleServiceIamBinding
/// " pulumi-lang-dotnet=" gcp.iap.WebRegionForwardingRuleServiceIamBinding
/// " pulumi-lang-go=" iap.WebRegionForwardingRuleServiceIamBinding
/// " pulumi-lang-python=" iap.WebRegionForwardingRuleServiceIamBinding
/// " pulumi-lang-yaml=" gcp.iap.WebRegionForwardingRuleServiceIamBinding
/// " pulumi-lang-java=" gcp.iap.WebRegionForwardingRuleServiceIamBinding
/// "> gcp.iap.WebRegionForwardingRuleServiceIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.WebRegionForwardingRuleServiceIamBinding("binding", {
/// project: _default.project,
/// region: _default.region,
/// forwardingRuleRegionServiceName: _default.name,
/// role: "roles/iap.httpsResourceAccessor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.WebRegionForwardingRuleServiceIamBinding("binding",
/// project=default["project"],
/// region=default["region"],
/// forwarding_rule_region_service_name=default["name"],
/// role="roles/iap.httpsResourceAccessor",
/// members=["user:jane@example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var binding = new Gcp.Iap.WebRegionForwardingRuleServiceIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// Region = @default.Region,
/// ForwardingRuleRegionServiceName = @default.Name,
/// Role = "roles/iap.httpsResourceAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iap.NewWebRegionForwardingRuleServiceIamBinding(ctx, "binding", &iap.WebRegionForwardingRuleServiceIamBindingArgs{
/// Project:                         pulumi.Any(_default.Project),
/// Region:                          pulumi.Any(_default.Region),
/// ForwardingRuleRegionServiceName: pulumi.Any(_default.Name),
/// Role:                            pulumi.String("roles/iap.httpsResourceAccessor"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// })
/// if err != nil {
/// return err
/// }
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
/// import com.pulumi.gcp.iap.WebRegionForwardingRuleServiceIamBinding;
/// import com.pulumi.gcp.iap.WebRegionForwardingRuleServiceIamBindingArgs;
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
/// var binding = new WebRegionForwardingRuleServiceIamBinding("binding", WebRegionForwardingRuleServiceIamBindingArgs.builder()
/// .project(default_.project())
/// .region(default_.region())
/// .forwardingRuleRegionServiceName(default_.name())
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:iap:WebRegionForwardingRuleServiceIamBinding
/// properties:
/// project: ${default.project}
/// region: ${default.region}
/// forwardingRuleRegionServiceName: ${default.name}
/// role: roles/iap.httpsResourceAccessor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// With IAM Conditions:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.WebRegionForwardingRuleServiceIamBinding("binding", {
/// project: _default.project,
/// region: _default.region,
/// forwardingRuleRegionServiceName: _default.name,
/// role: "roles/iap.httpsResourceAccessor",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.WebRegionForwardingRuleServiceIamBinding("binding",
/// project=default["project"],
/// region=default["region"],
/// forwarding_rule_region_service_name=default["name"],
/// role="roles/iap.httpsResourceAccessor",
/// members=["user:jane@example.com"],
/// condition={
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var binding = new Gcp.Iap.WebRegionForwardingRuleServiceIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// Region = @default.Region,
/// ForwardingRuleRegionServiceName = @default.Name,
/// Role = "roles/iap.httpsResourceAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Iap.Inputs.WebRegionForwardingRuleServiceIamBindingConditionArgs
/// {
/// Title = "expires_after_2019_12_31",
/// Description = "Expiring at midnight of 2019-12-31",
/// Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iap.NewWebRegionForwardingRuleServiceIamBinding(ctx, "binding", &iap.WebRegionForwardingRuleServiceIamBindingArgs{
/// Project:                         pulumi.Any(_default.Project),
/// Region:                          pulumi.Any(_default.Region),
/// ForwardingRuleRegionServiceName: pulumi.Any(_default.Name),
/// Role:                            pulumi.String("roles/iap.httpsResourceAccessor"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &iap.WebRegionForwardingRuleServiceIamBindingConditionArgs{
/// Title:       pulumi.String("expires_after_2019_12_31"),
/// Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
/// },
/// })
/// if err != nil {
/// return err
/// }
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
/// import com.pulumi.gcp.iap.WebRegionForwardingRuleServiceIamBinding;
/// import com.pulumi.gcp.iap.WebRegionForwardingRuleServiceIamBindingArgs;
/// import com.pulumi.gcp.iap.inputs.WebRegionForwardingRuleServiceIamBindingConditionArgs;
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
/// var binding = new WebRegionForwardingRuleServiceIamBinding("binding", WebRegionForwardingRuleServiceIamBindingArgs.builder()
/// .project(default_.project())
/// .region(default_.region())
/// .forwardingRuleRegionServiceName(default_.name())
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .condition(WebRegionForwardingRuleServiceIamBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:iap:WebRegionForwardingRuleServiceIamBinding
/// properties:
/// project: ${default.project}
/// region: ${default.region}
/// forwardingRuleRegionServiceName: ${default.name}
/// role: roles/iap.httpsResourceAccessor
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebRegionForwardingRuleServiceIamMember
/// " pulumi-lang-dotnet=" gcp.iap.WebRegionForwardingRuleServiceIamMember
/// " pulumi-lang-go=" iap.WebRegionForwardingRuleServiceIamMember
/// " pulumi-lang-python=" iap.WebRegionForwardingRuleServiceIamMember
/// " pulumi-lang-yaml=" gcp.iap.WebRegionForwardingRuleServiceIamMember
/// " pulumi-lang-java=" gcp.iap.WebRegionForwardingRuleServiceIamMember
/// "> gcp.iap.WebRegionForwardingRuleServiceIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.WebRegionForwardingRuleServiceIamMember("member", {
/// project: _default.project,
/// region: _default.region,
/// forwardingRuleRegionServiceName: _default.name,
/// role: "roles/iap.httpsResourceAccessor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.WebRegionForwardingRuleServiceIamMember("member",
/// project=default["project"],
/// region=default["region"],
/// forwarding_rule_region_service_name=default["name"],
/// role="roles/iap.httpsResourceAccessor",
/// member="user:jane@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var member = new Gcp.Iap.WebRegionForwardingRuleServiceIamMember("member", new()
/// {
/// Project = @default.Project,
/// Region = @default.Region,
/// ForwardingRuleRegionServiceName = @default.Name,
/// Role = "roles/iap.httpsResourceAccessor",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iap.NewWebRegionForwardingRuleServiceIamMember(ctx, "member", &iap.WebRegionForwardingRuleServiceIamMemberArgs{
/// Project:                         pulumi.Any(_default.Project),
/// Region:                          pulumi.Any(_default.Region),
/// ForwardingRuleRegionServiceName: pulumi.Any(_default.Name),
/// Role:                            pulumi.String("roles/iap.httpsResourceAccessor"),
/// Member:                          pulumi.String("user:jane@example.com"),
/// })
/// if err != nil {
/// return err
/// }
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
/// import com.pulumi.gcp.iap.WebRegionForwardingRuleServiceIamMember;
/// import com.pulumi.gcp.iap.WebRegionForwardingRuleServiceIamMemberArgs;
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
/// var member = new WebRegionForwardingRuleServiceIamMember("member", WebRegionForwardingRuleServiceIamMemberArgs.builder()
/// .project(default_.project())
/// .region(default_.region())
/// .forwardingRuleRegionServiceName(default_.name())
/// .role("roles/iap.httpsResourceAccessor")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:iap:WebRegionForwardingRuleServiceIamMember
/// properties:
/// project: ${default.project}
/// region: ${default.region}
/// forwardingRuleRegionServiceName: ${default.name}
/// role: roles/iap.httpsResourceAccessor
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// With IAM Conditions:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.WebRegionForwardingRuleServiceIamMember("member", {
/// project: _default.project,
/// region: _default.region,
/// forwardingRuleRegionServiceName: _default.name,
/// role: "roles/iap.httpsResourceAccessor",
/// member: "user:jane@example.com",
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.WebRegionForwardingRuleServiceIamMember("member",
/// project=default["project"],
/// region=default["region"],
/// forwarding_rule_region_service_name=default["name"],
/// role="roles/iap.httpsResourceAccessor",
/// member="user:jane@example.com",
/// condition={
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var member = new Gcp.Iap.WebRegionForwardingRuleServiceIamMember("member", new()
/// {
/// Project = @default.Project,
/// Region = @default.Region,
/// ForwardingRuleRegionServiceName = @default.Name,
/// Role = "roles/iap.httpsResourceAccessor",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Iap.Inputs.WebRegionForwardingRuleServiceIamMemberConditionArgs
/// {
/// Title = "expires_after_2019_12_31",
/// Description = "Expiring at midnight of 2019-12-31",
/// Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iap.NewWebRegionForwardingRuleServiceIamMember(ctx, "member", &iap.WebRegionForwardingRuleServiceIamMemberArgs{
/// Project:                         pulumi.Any(_default.Project),
/// Region:                          pulumi.Any(_default.Region),
/// ForwardingRuleRegionServiceName: pulumi.Any(_default.Name),
/// Role:                            pulumi.String("roles/iap.httpsResourceAccessor"),
/// Member:                          pulumi.String("user:jane@example.com"),
/// Condition: &iap.WebRegionForwardingRuleServiceIamMemberConditionArgs{
/// Title:       pulumi.String("expires_after_2019_12_31"),
/// Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
/// },
/// })
/// if err != nil {
/// return err
/// }
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
/// import com.pulumi.gcp.iap.WebRegionForwardingRuleServiceIamMember;
/// import com.pulumi.gcp.iap.WebRegionForwardingRuleServiceIamMemberArgs;
/// import com.pulumi.gcp.iap.inputs.WebRegionForwardingRuleServiceIamMemberConditionArgs;
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
/// var member = new WebRegionForwardingRuleServiceIamMember("member", WebRegionForwardingRuleServiceIamMemberArgs.builder()
/// .project(default_.project())
/// .region(default_.region())
/// .forwardingRuleRegionServiceName(default_.name())
/// .role("roles/iap.httpsResourceAccessor")
/// .member("user:jane@example.com")
/// .condition(WebRegionForwardingRuleServiceIamMemberConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:iap:WebRegionForwardingRuleServiceIamMember
/// properties:
/// project: ${default.project}
/// region: ${default.region}
/// forwardingRuleRegionServiceName: ${default.name}
/// role: roles/iap.httpsResourceAccessor
/// member: user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/iap_web/forwarding_rule-{{region}}/services/{{name}}
///
/// * {{project}}/{{region}}/{{name}}
///
/// * {{region}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Identity-Aware Proxy webregionforwardingruleservice IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/webRegionForwardingRuleServiceIamPolicy:WebRegionForwardingRuleServiceIamPolicy editor "projects/{{project}}/iap_web/forwarding_rule-{{region}}/services/{{web_region_forwarding_rule_service}} roles/iap.httpsResourceAccessor user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/webRegionForwardingRuleServiceIamPolicy:WebRegionForwardingRuleServiceIamPolicy editor "projects/{{project}}/iap_web/forwarding_rule-{{region}}/services/{{web_region_forwarding_rule_service}} roles/iap.httpsResourceAccessor"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/webRegionForwardingRuleServiceIamPolicy:WebRegionForwardingRuleServiceIamPolicy editor projects/{{project}}/iap_web/forwarding_rule-{{region}}/services/{{web_region_forwarding_rule_service}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class WebRegionForwardingRuleServiceIamPolicy extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> forwardingRuleRegionServiceName;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  late final Output<String> region;

  WebRegionForwardingRuleServiceIamPolicy(
    String name, {
    WebRegionForwardingRuleServiceIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:iap/webRegionForwardingRuleServiceIamPolicy:WebRegionForwardingRuleServiceIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = Output.createUnknown<String>();
    this.forwardingRuleRegionServiceName = Output.createUnknown<String>();
    this.policyData = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
