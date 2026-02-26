import 'package:pulumi/pulumi.dart';
import 'workload_identity_pool_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Cloud IAM WorkloadIdentityPool. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-dotnet="`gcp.iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-go="`iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-python="`iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-yaml="`gcp.iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-java="`gcp.iam.WorkloadIdentityPoolIamPolicy`">`gcp.iam.WorkloadIdentityPoolIamPolicy`</span>: Authoritative. Sets the IAM policy for the workloadidentitypool and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-dotnet="`gcp.iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-go="`iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-python="`iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-yaml="`gcp.iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-java="`gcp.iam.WorkloadIdentityPoolIamBinding`">`gcp.iam.WorkloadIdentityPoolIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the workloadidentitypool are preserved.
/// * <span pulumi-lang-nodejs="`gcp.iam.WorkloadIdentityPoolIamMember`" pulumi-lang-dotnet="`gcp.iam.WorkloadIdentityPoolIamMember`" pulumi-lang-go="`iam.WorkloadIdentityPoolIamMember`" pulumi-lang-python="`iam.WorkloadIdentityPoolIamMember`" pulumi-lang-yaml="`gcp.iam.WorkloadIdentityPoolIamMember`" pulumi-lang-java="`gcp.iam.WorkloadIdentityPoolIamMember`">`gcp.iam.WorkloadIdentityPoolIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the workloadidentitypool are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-dotnet="`gcp.iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-go="`iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-python="`iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-yaml="`gcp.iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-java="`gcp.iam.WorkloadIdentityPoolIamPolicy`">`gcp.iam.WorkloadIdentityPoolIamPolicy`</span>: Retrieves the IAM policy for the workloadidentitypool
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-dotnet="`gcp.iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-go="`iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-python="`iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-yaml="`gcp.iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-java="`gcp.iam.WorkloadIdentityPoolIamPolicy`">`gcp.iam.WorkloadIdentityPoolIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-dotnet="`gcp.iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-go="`iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-python="`iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-yaml="`gcp.iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-java="`gcp.iam.WorkloadIdentityPoolIamBinding`">`gcp.iam.WorkloadIdentityPoolIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.iam.WorkloadIdentityPoolIamMember`" pulumi-lang-dotnet="`gcp.iam.WorkloadIdentityPoolIamMember`" pulumi-lang-go="`iam.WorkloadIdentityPoolIamMember`" pulumi-lang-python="`iam.WorkloadIdentityPoolIamMember`" pulumi-lang-yaml="`gcp.iam.WorkloadIdentityPoolIamMember`" pulumi-lang-java="`gcp.iam.WorkloadIdentityPoolIamMember`">`gcp.iam.WorkloadIdentityPoolIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-dotnet="`gcp.iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-go="`iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-python="`iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-yaml="`gcp.iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-java="`gcp.iam.WorkloadIdentityPoolIamBinding`">`gcp.iam.WorkloadIdentityPoolIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.iam.WorkloadIdentityPoolIamMember`" pulumi-lang-dotnet="`gcp.iam.WorkloadIdentityPoolIamMember`" pulumi-lang-go="`iam.WorkloadIdentityPoolIamMember`" pulumi-lang-python="`iam.WorkloadIdentityPoolIamMember`" pulumi-lang-yaml="`gcp.iam.WorkloadIdentityPoolIamMember`" pulumi-lang-java="`gcp.iam.WorkloadIdentityPoolIamMember`">`gcp.iam.WorkloadIdentityPoolIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
/// ##<span pulumi-lang-nodejs=" gcp.iam.WorkloadIdentityPoolIamPolicy
/// " pulumi-lang-dotnet=" gcp.iam.WorkloadIdentityPoolIamPolicy
/// " pulumi-lang-go=" iam.WorkloadIdentityPoolIamPolicy
/// " pulumi-lang-python=" iam.WorkloadIdentityPoolIamPolicy
/// " pulumi-lang-yaml=" gcp.iam.WorkloadIdentityPoolIamPolicy
/// " pulumi-lang-java=" gcp.iam.WorkloadIdentityPoolIamPolicy
/// "> gcp.iam.WorkloadIdentityPoolIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/iam.workloadIdentityPoolViewer",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.iam.WorkloadIdentityPoolIamPolicy("policy", {
/// project: example.project,
/// workloadIdentityPoolId: example.workloadIdentityPoolId,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/iam.workloadIdentityPoolViewer",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.iam.WorkloadIdentityPoolIamPolicy("policy",
/// project=example["project"],
/// workload_identity_pool_id=example["workloadIdentityPoolId"],
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
/// Role = "roles/iam.workloadIdentityPoolViewer",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Iam.WorkloadIdentityPoolIamPolicy("policy", new()
/// {
/// Project = example.Project,
/// WorkloadIdentityPoolId = example.WorkloadIdentityPoolId,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/iam.workloadIdentityPoolViewer",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewWorkloadIdentityPoolIamPolicy(ctx, "policy", &iam.WorkloadIdentityPoolIamPolicyArgs{
/// Project:                pulumi.Any(example.Project),
/// WorkloadIdentityPoolId: pulumi.Any(example.WorkloadIdentityPoolId),
/// PolicyData:             pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolIamPolicy;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolIamPolicyArgs;
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
/// .role("roles/iam.workloadIdentityPoolViewer")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new WorkloadIdentityPoolIamPolicy("policy", WorkloadIdentityPoolIamPolicyArgs.builder()
/// .project(example.project())
/// .workloadIdentityPoolId(example.workloadIdentityPoolId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:iam:WorkloadIdentityPoolIamPolicy
/// properties:
/// project: ${example.project}
/// workloadIdentityPoolId: ${example.workloadIdentityPoolId}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/iam.workloadIdentityPoolViewer
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
/// role: "roles/iam.workloadIdentityPoolViewer",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const policy = new gcp.iam.WorkloadIdentityPoolIamPolicy("policy", {
/// project: example.project,
/// workloadIdentityPoolId: example.workloadIdentityPoolId,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/iam.workloadIdentityPoolViewer",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }])
/// policy = gcp.iam.WorkloadIdentityPoolIamPolicy("policy",
/// project=example["project"],
/// workload_identity_pool_id=example["workloadIdentityPoolId"],
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
/// Role = "roles/iam.workloadIdentityPoolViewer",
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
/// var policy = new Gcp.Iam.WorkloadIdentityPoolIamPolicy("policy", new()
/// {
/// Project = example.Project,
/// WorkloadIdentityPoolId = example.WorkloadIdentityPoolId,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/iam.workloadIdentityPoolViewer",
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
/// _, err = iam.NewWorkloadIdentityPoolIamPolicy(ctx, "policy", &iam.WorkloadIdentityPoolIamPolicyArgs{
/// Project:                pulumi.Any(example.Project),
/// WorkloadIdentityPoolId: pulumi.Any(example.WorkloadIdentityPoolId),
/// PolicyData:             pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolIamPolicy;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolIamPolicyArgs;
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
/// .role("roles/iam.workloadIdentityPoolViewer")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var policy = new WorkloadIdentityPoolIamPolicy("policy", WorkloadIdentityPoolIamPolicyArgs.builder()
/// .project(example.project())
/// .workloadIdentityPoolId(example.workloadIdentityPoolId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:iam:WorkloadIdentityPoolIamPolicy
/// properties:
/// project: ${example.project}
/// workloadIdentityPoolId: ${example.workloadIdentityPoolId}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/iam.workloadIdentityPoolViewer
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.iam.WorkloadIdentityPoolIamBinding
/// " pulumi-lang-dotnet=" gcp.iam.WorkloadIdentityPoolIamBinding
/// " pulumi-lang-go=" iam.WorkloadIdentityPoolIamBinding
/// " pulumi-lang-python=" iam.WorkloadIdentityPoolIamBinding
/// " pulumi-lang-yaml=" gcp.iam.WorkloadIdentityPoolIamBinding
/// " pulumi-lang-java=" gcp.iam.WorkloadIdentityPoolIamBinding
/// "> gcp.iam.WorkloadIdentityPoolIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iam.WorkloadIdentityPoolIamBinding("binding", {
/// project: example.project,
/// workloadIdentityPoolId: example.workloadIdentityPoolId,
/// role: "roles/iam.workloadIdentityPoolViewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iam.WorkloadIdentityPoolIamBinding("binding",
/// project=example["project"],
/// workload_identity_pool_id=example["workloadIdentityPoolId"],
/// role="roles/iam.workloadIdentityPoolViewer",
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
/// var binding = new Gcp.Iam.WorkloadIdentityPoolIamBinding("binding", new()
/// {
/// Project = example.Project,
/// WorkloadIdentityPoolId = example.WorkloadIdentityPoolId,
/// Role = "roles/iam.workloadIdentityPoolViewer",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.NewWorkloadIdentityPoolIamBinding(ctx, "binding", &iam.WorkloadIdentityPoolIamBindingArgs{
/// Project:                pulumi.Any(example.Project),
/// WorkloadIdentityPoolId: pulumi.Any(example.WorkloadIdentityPoolId),
/// Role:                   pulumi.String("roles/iam.workloadIdentityPoolViewer"),
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolIamBinding;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolIamBindingArgs;
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
/// var binding = new WorkloadIdentityPoolIamBinding("binding", WorkloadIdentityPoolIamBindingArgs.builder()
/// .project(example.project())
/// .workloadIdentityPoolId(example.workloadIdentityPoolId())
/// .role("roles/iam.workloadIdentityPoolViewer")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:iam:WorkloadIdentityPoolIamBinding
/// properties:
/// project: ${example.project}
/// workloadIdentityPoolId: ${example.workloadIdentityPoolId}
/// role: roles/iam.workloadIdentityPoolViewer
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
/// const binding = new gcp.iam.WorkloadIdentityPoolIamBinding("binding", {
/// project: example.project,
/// workloadIdentityPoolId: example.workloadIdentityPoolId,
/// role: "roles/iam.workloadIdentityPoolViewer",
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
/// binding = gcp.iam.WorkloadIdentityPoolIamBinding("binding",
/// project=example["project"],
/// workload_identity_pool_id=example["workloadIdentityPoolId"],
/// role="roles/iam.workloadIdentityPoolViewer",
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
/// var binding = new Gcp.Iam.WorkloadIdentityPoolIamBinding("binding", new()
/// {
/// Project = example.Project,
/// WorkloadIdentityPoolId = example.WorkloadIdentityPoolId,
/// Role = "roles/iam.workloadIdentityPoolViewer",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Iam.Inputs.WorkloadIdentityPoolIamBindingConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.NewWorkloadIdentityPoolIamBinding(ctx, "binding", &iam.WorkloadIdentityPoolIamBindingArgs{
/// Project:                pulumi.Any(example.Project),
/// WorkloadIdentityPoolId: pulumi.Any(example.WorkloadIdentityPoolId),
/// Role:                   pulumi.String("roles/iam.workloadIdentityPoolViewer"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &iam.WorkloadIdentityPoolIamBindingConditionArgs{
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolIamBinding;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolIamBindingArgs;
/// import com.pulumi.gcp.iam.inputs.WorkloadIdentityPoolIamBindingConditionArgs;
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
/// var binding = new WorkloadIdentityPoolIamBinding("binding", WorkloadIdentityPoolIamBindingArgs.builder()
/// .project(example.project())
/// .workloadIdentityPoolId(example.workloadIdentityPoolId())
/// .role("roles/iam.workloadIdentityPoolViewer")
/// .members("user:jane@example.com")
/// .condition(WorkloadIdentityPoolIamBindingConditionArgs.builder()
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
/// type: gcp:iam:WorkloadIdentityPoolIamBinding
/// properties:
/// project: ${example.project}
/// workloadIdentityPoolId: ${example.workloadIdentityPoolId}
/// role: roles/iam.workloadIdentityPoolViewer
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.iam.WorkloadIdentityPoolIamMember
/// " pulumi-lang-dotnet=" gcp.iam.WorkloadIdentityPoolIamMember
/// " pulumi-lang-go=" iam.WorkloadIdentityPoolIamMember
/// " pulumi-lang-python=" iam.WorkloadIdentityPoolIamMember
/// " pulumi-lang-yaml=" gcp.iam.WorkloadIdentityPoolIamMember
/// " pulumi-lang-java=" gcp.iam.WorkloadIdentityPoolIamMember
/// "> gcp.iam.WorkloadIdentityPoolIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iam.WorkloadIdentityPoolIamMember("member", {
/// project: example.project,
/// workloadIdentityPoolId: example.workloadIdentityPoolId,
/// role: "roles/iam.workloadIdentityPoolViewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iam.WorkloadIdentityPoolIamMember("member",
/// project=example["project"],
/// workload_identity_pool_id=example["workloadIdentityPoolId"],
/// role="roles/iam.workloadIdentityPoolViewer",
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
/// var member = new Gcp.Iam.WorkloadIdentityPoolIamMember("member", new()
/// {
/// Project = example.Project,
/// WorkloadIdentityPoolId = example.WorkloadIdentityPoolId,
/// Role = "roles/iam.workloadIdentityPoolViewer",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.NewWorkloadIdentityPoolIamMember(ctx, "member", &iam.WorkloadIdentityPoolIamMemberArgs{
/// Project:                pulumi.Any(example.Project),
/// WorkloadIdentityPoolId: pulumi.Any(example.WorkloadIdentityPoolId),
/// Role:                   pulumi.String("roles/iam.workloadIdentityPoolViewer"),
/// Member:                 pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolIamMember;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolIamMemberArgs;
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
/// var member = new WorkloadIdentityPoolIamMember("member", WorkloadIdentityPoolIamMemberArgs.builder()
/// .project(example.project())
/// .workloadIdentityPoolId(example.workloadIdentityPoolId())
/// .role("roles/iam.workloadIdentityPoolViewer")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:iam:WorkloadIdentityPoolIamMember
/// properties:
/// project: ${example.project}
/// workloadIdentityPoolId: ${example.workloadIdentityPoolId}
/// role: roles/iam.workloadIdentityPoolViewer
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
/// const member = new gcp.iam.WorkloadIdentityPoolIamMember("member", {
/// project: example.project,
/// workloadIdentityPoolId: example.workloadIdentityPoolId,
/// role: "roles/iam.workloadIdentityPoolViewer",
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
/// member = gcp.iam.WorkloadIdentityPoolIamMember("member",
/// project=example["project"],
/// workload_identity_pool_id=example["workloadIdentityPoolId"],
/// role="roles/iam.workloadIdentityPoolViewer",
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
/// var member = new Gcp.Iam.WorkloadIdentityPoolIamMember("member", new()
/// {
/// Project = example.Project,
/// WorkloadIdentityPoolId = example.WorkloadIdentityPoolId,
/// Role = "roles/iam.workloadIdentityPoolViewer",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Iam.Inputs.WorkloadIdentityPoolIamMemberConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.NewWorkloadIdentityPoolIamMember(ctx, "member", &iam.WorkloadIdentityPoolIamMemberArgs{
/// Project:                pulumi.Any(example.Project),
/// WorkloadIdentityPoolId: pulumi.Any(example.WorkloadIdentityPoolId),
/// Role:                   pulumi.String("roles/iam.workloadIdentityPoolViewer"),
/// Member:                 pulumi.String("user:jane@example.com"),
/// Condition: &iam.WorkloadIdentityPoolIamMemberConditionArgs{
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolIamMember;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolIamMemberArgs;
/// import com.pulumi.gcp.iam.inputs.WorkloadIdentityPoolIamMemberConditionArgs;
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
/// var member = new WorkloadIdentityPoolIamMember("member", WorkloadIdentityPoolIamMemberArgs.builder()
/// .project(example.project())
/// .workloadIdentityPoolId(example.workloadIdentityPoolId())
/// .role("roles/iam.workloadIdentityPoolViewer")
/// .member("user:jane@example.com")
/// .condition(WorkloadIdentityPoolIamMemberConditionArgs.builder()
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
/// type: gcp:iam:WorkloadIdentityPoolIamMember
/// properties:
/// project: ${example.project}
/// workloadIdentityPoolId: ${example.workloadIdentityPoolId}
/// role: roles/iam.workloadIdentityPoolViewer
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
/// # IAM policy for Cloud IAM WorkloadIdentityPool
///
/// Three different resources help you manage your IAM policy for Cloud IAM WorkloadIdentityPool. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-dotnet="`gcp.iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-go="`iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-python="`iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-yaml="`gcp.iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-java="`gcp.iam.WorkloadIdentityPoolIamPolicy`">`gcp.iam.WorkloadIdentityPoolIamPolicy`</span>: Authoritative. Sets the IAM policy for the workloadidentitypool and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-dotnet="`gcp.iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-go="`iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-python="`iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-yaml="`gcp.iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-java="`gcp.iam.WorkloadIdentityPoolIamBinding`">`gcp.iam.WorkloadIdentityPoolIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the workloadidentitypool are preserved.
/// * <span pulumi-lang-nodejs="`gcp.iam.WorkloadIdentityPoolIamMember`" pulumi-lang-dotnet="`gcp.iam.WorkloadIdentityPoolIamMember`" pulumi-lang-go="`iam.WorkloadIdentityPoolIamMember`" pulumi-lang-python="`iam.WorkloadIdentityPoolIamMember`" pulumi-lang-yaml="`gcp.iam.WorkloadIdentityPoolIamMember`" pulumi-lang-java="`gcp.iam.WorkloadIdentityPoolIamMember`">`gcp.iam.WorkloadIdentityPoolIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the workloadidentitypool are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-dotnet="`gcp.iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-go="`iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-python="`iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-yaml="`gcp.iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-java="`gcp.iam.WorkloadIdentityPoolIamPolicy`">`gcp.iam.WorkloadIdentityPoolIamPolicy`</span>: Retrieves the IAM policy for the workloadidentitypool
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-dotnet="`gcp.iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-go="`iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-python="`iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-yaml="`gcp.iam.WorkloadIdentityPoolIamPolicy`" pulumi-lang-java="`gcp.iam.WorkloadIdentityPoolIamPolicy`">`gcp.iam.WorkloadIdentityPoolIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-dotnet="`gcp.iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-go="`iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-python="`iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-yaml="`gcp.iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-java="`gcp.iam.WorkloadIdentityPoolIamBinding`">`gcp.iam.WorkloadIdentityPoolIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.iam.WorkloadIdentityPoolIamMember`" pulumi-lang-dotnet="`gcp.iam.WorkloadIdentityPoolIamMember`" pulumi-lang-go="`iam.WorkloadIdentityPoolIamMember`" pulumi-lang-python="`iam.WorkloadIdentityPoolIamMember`" pulumi-lang-yaml="`gcp.iam.WorkloadIdentityPoolIamMember`" pulumi-lang-java="`gcp.iam.WorkloadIdentityPoolIamMember`">`gcp.iam.WorkloadIdentityPoolIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-dotnet="`gcp.iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-go="`iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-python="`iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-yaml="`gcp.iam.WorkloadIdentityPoolIamBinding`" pulumi-lang-java="`gcp.iam.WorkloadIdentityPoolIamBinding`">`gcp.iam.WorkloadIdentityPoolIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.iam.WorkloadIdentityPoolIamMember`" pulumi-lang-dotnet="`gcp.iam.WorkloadIdentityPoolIamMember`" pulumi-lang-go="`iam.WorkloadIdentityPoolIamMember`" pulumi-lang-python="`iam.WorkloadIdentityPoolIamMember`" pulumi-lang-yaml="`gcp.iam.WorkloadIdentityPoolIamMember`" pulumi-lang-java="`gcp.iam.WorkloadIdentityPoolIamMember`">`gcp.iam.WorkloadIdentityPoolIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
/// ##<span pulumi-lang-nodejs=" gcp.iam.WorkloadIdentityPoolIamPolicy
/// " pulumi-lang-dotnet=" gcp.iam.WorkloadIdentityPoolIamPolicy
/// " pulumi-lang-go=" iam.WorkloadIdentityPoolIamPolicy
/// " pulumi-lang-python=" iam.WorkloadIdentityPoolIamPolicy
/// " pulumi-lang-yaml=" gcp.iam.WorkloadIdentityPoolIamPolicy
/// " pulumi-lang-java=" gcp.iam.WorkloadIdentityPoolIamPolicy
/// "> gcp.iam.WorkloadIdentityPoolIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/iam.workloadIdentityPoolViewer",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.iam.WorkloadIdentityPoolIamPolicy("policy", {
/// project: example.project,
/// workloadIdentityPoolId: example.workloadIdentityPoolId,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/iam.workloadIdentityPoolViewer",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.iam.WorkloadIdentityPoolIamPolicy("policy",
/// project=example["project"],
/// workload_identity_pool_id=example["workloadIdentityPoolId"],
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
/// Role = "roles/iam.workloadIdentityPoolViewer",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Iam.WorkloadIdentityPoolIamPolicy("policy", new()
/// {
/// Project = example.Project,
/// WorkloadIdentityPoolId = example.WorkloadIdentityPoolId,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/iam.workloadIdentityPoolViewer",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewWorkloadIdentityPoolIamPolicy(ctx, "policy", &iam.WorkloadIdentityPoolIamPolicyArgs{
/// Project:                pulumi.Any(example.Project),
/// WorkloadIdentityPoolId: pulumi.Any(example.WorkloadIdentityPoolId),
/// PolicyData:             pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolIamPolicy;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolIamPolicyArgs;
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
/// .role("roles/iam.workloadIdentityPoolViewer")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new WorkloadIdentityPoolIamPolicy("policy", WorkloadIdentityPoolIamPolicyArgs.builder()
/// .project(example.project())
/// .workloadIdentityPoolId(example.workloadIdentityPoolId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:iam:WorkloadIdentityPoolIamPolicy
/// properties:
/// project: ${example.project}
/// workloadIdentityPoolId: ${example.workloadIdentityPoolId}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/iam.workloadIdentityPoolViewer
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
/// role: "roles/iam.workloadIdentityPoolViewer",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const policy = new gcp.iam.WorkloadIdentityPoolIamPolicy("policy", {
/// project: example.project,
/// workloadIdentityPoolId: example.workloadIdentityPoolId,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/iam.workloadIdentityPoolViewer",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }])
/// policy = gcp.iam.WorkloadIdentityPoolIamPolicy("policy",
/// project=example["project"],
/// workload_identity_pool_id=example["workloadIdentityPoolId"],
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
/// Role = "roles/iam.workloadIdentityPoolViewer",
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
/// var policy = new Gcp.Iam.WorkloadIdentityPoolIamPolicy("policy", new()
/// {
/// Project = example.Project,
/// WorkloadIdentityPoolId = example.WorkloadIdentityPoolId,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/iam.workloadIdentityPoolViewer",
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
/// _, err = iam.NewWorkloadIdentityPoolIamPolicy(ctx, "policy", &iam.WorkloadIdentityPoolIamPolicyArgs{
/// Project:                pulumi.Any(example.Project),
/// WorkloadIdentityPoolId: pulumi.Any(example.WorkloadIdentityPoolId),
/// PolicyData:             pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolIamPolicy;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolIamPolicyArgs;
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
/// .role("roles/iam.workloadIdentityPoolViewer")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var policy = new WorkloadIdentityPoolIamPolicy("policy", WorkloadIdentityPoolIamPolicyArgs.builder()
/// .project(example.project())
/// .workloadIdentityPoolId(example.workloadIdentityPoolId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:iam:WorkloadIdentityPoolIamPolicy
/// properties:
/// project: ${example.project}
/// workloadIdentityPoolId: ${example.workloadIdentityPoolId}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/iam.workloadIdentityPoolViewer
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.iam.WorkloadIdentityPoolIamBinding
/// " pulumi-lang-dotnet=" gcp.iam.WorkloadIdentityPoolIamBinding
/// " pulumi-lang-go=" iam.WorkloadIdentityPoolIamBinding
/// " pulumi-lang-python=" iam.WorkloadIdentityPoolIamBinding
/// " pulumi-lang-yaml=" gcp.iam.WorkloadIdentityPoolIamBinding
/// " pulumi-lang-java=" gcp.iam.WorkloadIdentityPoolIamBinding
/// "> gcp.iam.WorkloadIdentityPoolIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iam.WorkloadIdentityPoolIamBinding("binding", {
/// project: example.project,
/// workloadIdentityPoolId: example.workloadIdentityPoolId,
/// role: "roles/iam.workloadIdentityPoolViewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iam.WorkloadIdentityPoolIamBinding("binding",
/// project=example["project"],
/// workload_identity_pool_id=example["workloadIdentityPoolId"],
/// role="roles/iam.workloadIdentityPoolViewer",
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
/// var binding = new Gcp.Iam.WorkloadIdentityPoolIamBinding("binding", new()
/// {
/// Project = example.Project,
/// WorkloadIdentityPoolId = example.WorkloadIdentityPoolId,
/// Role = "roles/iam.workloadIdentityPoolViewer",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.NewWorkloadIdentityPoolIamBinding(ctx, "binding", &iam.WorkloadIdentityPoolIamBindingArgs{
/// Project:                pulumi.Any(example.Project),
/// WorkloadIdentityPoolId: pulumi.Any(example.WorkloadIdentityPoolId),
/// Role:                   pulumi.String("roles/iam.workloadIdentityPoolViewer"),
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolIamBinding;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolIamBindingArgs;
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
/// var binding = new WorkloadIdentityPoolIamBinding("binding", WorkloadIdentityPoolIamBindingArgs.builder()
/// .project(example.project())
/// .workloadIdentityPoolId(example.workloadIdentityPoolId())
/// .role("roles/iam.workloadIdentityPoolViewer")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:iam:WorkloadIdentityPoolIamBinding
/// properties:
/// project: ${example.project}
/// workloadIdentityPoolId: ${example.workloadIdentityPoolId}
/// role: roles/iam.workloadIdentityPoolViewer
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
/// const binding = new gcp.iam.WorkloadIdentityPoolIamBinding("binding", {
/// project: example.project,
/// workloadIdentityPoolId: example.workloadIdentityPoolId,
/// role: "roles/iam.workloadIdentityPoolViewer",
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
/// binding = gcp.iam.WorkloadIdentityPoolIamBinding("binding",
/// project=example["project"],
/// workload_identity_pool_id=example["workloadIdentityPoolId"],
/// role="roles/iam.workloadIdentityPoolViewer",
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
/// var binding = new Gcp.Iam.WorkloadIdentityPoolIamBinding("binding", new()
/// {
/// Project = example.Project,
/// WorkloadIdentityPoolId = example.WorkloadIdentityPoolId,
/// Role = "roles/iam.workloadIdentityPoolViewer",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Iam.Inputs.WorkloadIdentityPoolIamBindingConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.NewWorkloadIdentityPoolIamBinding(ctx, "binding", &iam.WorkloadIdentityPoolIamBindingArgs{
/// Project:                pulumi.Any(example.Project),
/// WorkloadIdentityPoolId: pulumi.Any(example.WorkloadIdentityPoolId),
/// Role:                   pulumi.String("roles/iam.workloadIdentityPoolViewer"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &iam.WorkloadIdentityPoolIamBindingConditionArgs{
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolIamBinding;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolIamBindingArgs;
/// import com.pulumi.gcp.iam.inputs.WorkloadIdentityPoolIamBindingConditionArgs;
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
/// var binding = new WorkloadIdentityPoolIamBinding("binding", WorkloadIdentityPoolIamBindingArgs.builder()
/// .project(example.project())
/// .workloadIdentityPoolId(example.workloadIdentityPoolId())
/// .role("roles/iam.workloadIdentityPoolViewer")
/// .members("user:jane@example.com")
/// .condition(WorkloadIdentityPoolIamBindingConditionArgs.builder()
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
/// type: gcp:iam:WorkloadIdentityPoolIamBinding
/// properties:
/// project: ${example.project}
/// workloadIdentityPoolId: ${example.workloadIdentityPoolId}
/// role: roles/iam.workloadIdentityPoolViewer
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.iam.WorkloadIdentityPoolIamMember
/// " pulumi-lang-dotnet=" gcp.iam.WorkloadIdentityPoolIamMember
/// " pulumi-lang-go=" iam.WorkloadIdentityPoolIamMember
/// " pulumi-lang-python=" iam.WorkloadIdentityPoolIamMember
/// " pulumi-lang-yaml=" gcp.iam.WorkloadIdentityPoolIamMember
/// " pulumi-lang-java=" gcp.iam.WorkloadIdentityPoolIamMember
/// "> gcp.iam.WorkloadIdentityPoolIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iam.WorkloadIdentityPoolIamMember("member", {
/// project: example.project,
/// workloadIdentityPoolId: example.workloadIdentityPoolId,
/// role: "roles/iam.workloadIdentityPoolViewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iam.WorkloadIdentityPoolIamMember("member",
/// project=example["project"],
/// workload_identity_pool_id=example["workloadIdentityPoolId"],
/// role="roles/iam.workloadIdentityPoolViewer",
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
/// var member = new Gcp.Iam.WorkloadIdentityPoolIamMember("member", new()
/// {
/// Project = example.Project,
/// WorkloadIdentityPoolId = example.WorkloadIdentityPoolId,
/// Role = "roles/iam.workloadIdentityPoolViewer",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.NewWorkloadIdentityPoolIamMember(ctx, "member", &iam.WorkloadIdentityPoolIamMemberArgs{
/// Project:                pulumi.Any(example.Project),
/// WorkloadIdentityPoolId: pulumi.Any(example.WorkloadIdentityPoolId),
/// Role:                   pulumi.String("roles/iam.workloadIdentityPoolViewer"),
/// Member:                 pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolIamMember;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolIamMemberArgs;
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
/// var member = new WorkloadIdentityPoolIamMember("member", WorkloadIdentityPoolIamMemberArgs.builder()
/// .project(example.project())
/// .workloadIdentityPoolId(example.workloadIdentityPoolId())
/// .role("roles/iam.workloadIdentityPoolViewer")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:iam:WorkloadIdentityPoolIamMember
/// properties:
/// project: ${example.project}
/// workloadIdentityPoolId: ${example.workloadIdentityPoolId}
/// role: roles/iam.workloadIdentityPoolViewer
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
/// const member = new gcp.iam.WorkloadIdentityPoolIamMember("member", {
/// project: example.project,
/// workloadIdentityPoolId: example.workloadIdentityPoolId,
/// role: "roles/iam.workloadIdentityPoolViewer",
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
/// member = gcp.iam.WorkloadIdentityPoolIamMember("member",
/// project=example["project"],
/// workload_identity_pool_id=example["workloadIdentityPoolId"],
/// role="roles/iam.workloadIdentityPoolViewer",
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
/// var member = new Gcp.Iam.WorkloadIdentityPoolIamMember("member", new()
/// {
/// Project = example.Project,
/// WorkloadIdentityPoolId = example.WorkloadIdentityPoolId,
/// Role = "roles/iam.workloadIdentityPoolViewer",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Iam.Inputs.WorkloadIdentityPoolIamMemberConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.NewWorkloadIdentityPoolIamMember(ctx, "member", &iam.WorkloadIdentityPoolIamMemberArgs{
/// Project:                pulumi.Any(example.Project),
/// WorkloadIdentityPoolId: pulumi.Any(example.WorkloadIdentityPoolId),
/// Role:                   pulumi.String("roles/iam.workloadIdentityPoolViewer"),
/// Member:                 pulumi.String("user:jane@example.com"),
/// Condition: &iam.WorkloadIdentityPoolIamMemberConditionArgs{
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolIamMember;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolIamMemberArgs;
/// import com.pulumi.gcp.iam.inputs.WorkloadIdentityPoolIamMemberConditionArgs;
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
/// var member = new WorkloadIdentityPoolIamMember("member", WorkloadIdentityPoolIamMemberArgs.builder()
/// .project(example.project())
/// .workloadIdentityPoolId(example.workloadIdentityPoolId())
/// .role("roles/iam.workloadIdentityPoolViewer")
/// .member("user:jane@example.com")
/// .condition(WorkloadIdentityPoolIamMemberConditionArgs.builder()
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
/// type: gcp:iam:WorkloadIdentityPoolIamMember
/// properties:
/// project: ${example.project}
/// workloadIdentityPoolId: ${example.workloadIdentityPoolId}
/// role: roles/iam.workloadIdentityPoolViewer
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
/// * projects/{{project}}/locations/global/workloadIdentityPools/{{workload_identity_pool_id}}
///
/// * {{project}}/{{workload_identity_pool_id}}
///
/// * {{workload_identity_pool_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud IAM workloadidentitypool IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPoolIamPolicy:WorkloadIdentityPoolIamPolicy editor "projects/{{project}}/locations/global/workloadIdentityPools/{{workload_identity_pool_id}} roles/iam.workloadIdentityPoolViewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPoolIamPolicy:WorkloadIdentityPoolIamPolicy editor "projects/{{project}}/locations/global/workloadIdentityPools/{{workload_identity_pool_id}} roles/iam.workloadIdentityPoolViewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPoolIamPolicy:WorkloadIdentityPoolIamPolicy editor projects/{{project}}/locations/global/workloadIdentityPools/{{workload_identity_pool_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class WorkloadIdentityPoolIamPolicy extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> workloadIdentityPoolId;

  WorkloadIdentityPoolIamPolicy(
    String name, {
    WorkloadIdentityPoolIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:iam/workloadIdentityPoolIamPolicy:WorkloadIdentityPoolIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.workloadIdentityPoolId =
        registerOutput<String>('workloadIdentityPoolId');
  }
}
