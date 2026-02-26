import 'package:pulumi/pulumi.dart';
import 'backend_service_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Compute Engine BackendService. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.compute.BackendServiceIamPolicy`" pulumi-lang-dotnet="`gcp.compute.BackendServiceIamPolicy`" pulumi-lang-go="`compute.BackendServiceIamPolicy`" pulumi-lang-python="`compute.BackendServiceIamPolicy`" pulumi-lang-yaml="`gcp.compute.BackendServiceIamPolicy`" pulumi-lang-java="`gcp.compute.BackendServiceIamPolicy`">`gcp.compute.BackendServiceIamPolicy`</span>: Authoritative. Sets the IAM policy for the backendservice and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.compute.BackendServiceIamBinding`" pulumi-lang-dotnet="`gcp.compute.BackendServiceIamBinding`" pulumi-lang-go="`compute.BackendServiceIamBinding`" pulumi-lang-python="`compute.BackendServiceIamBinding`" pulumi-lang-yaml="`gcp.compute.BackendServiceIamBinding`" pulumi-lang-java="`gcp.compute.BackendServiceIamBinding`">`gcp.compute.BackendServiceIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the backendservice are preserved.
/// * <span pulumi-lang-nodejs="`gcp.compute.BackendServiceIamMember`" pulumi-lang-dotnet="`gcp.compute.BackendServiceIamMember`" pulumi-lang-go="`compute.BackendServiceIamMember`" pulumi-lang-python="`compute.BackendServiceIamMember`" pulumi-lang-yaml="`gcp.compute.BackendServiceIamMember`" pulumi-lang-java="`gcp.compute.BackendServiceIamMember`">`gcp.compute.BackendServiceIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the backendservice are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.compute.BackendServiceIamPolicy`" pulumi-lang-dotnet="`gcp.compute.BackendServiceIamPolicy`" pulumi-lang-go="`compute.BackendServiceIamPolicy`" pulumi-lang-python="`compute.BackendServiceIamPolicy`" pulumi-lang-yaml="`gcp.compute.BackendServiceIamPolicy`" pulumi-lang-java="`gcp.compute.BackendServiceIamPolicy`">`gcp.compute.BackendServiceIamPolicy`</span>: Retrieves the IAM policy for the backendservice
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.BackendServiceIamPolicy`" pulumi-lang-dotnet="`gcp.compute.BackendServiceIamPolicy`" pulumi-lang-go="`compute.BackendServiceIamPolicy`" pulumi-lang-python="`compute.BackendServiceIamPolicy`" pulumi-lang-yaml="`gcp.compute.BackendServiceIamPolicy`" pulumi-lang-java="`gcp.compute.BackendServiceIamPolicy`">`gcp.compute.BackendServiceIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.BackendServiceIamBinding`" pulumi-lang-dotnet="`gcp.compute.BackendServiceIamBinding`" pulumi-lang-go="`compute.BackendServiceIamBinding`" pulumi-lang-python="`compute.BackendServiceIamBinding`" pulumi-lang-yaml="`gcp.compute.BackendServiceIamBinding`" pulumi-lang-java="`gcp.compute.BackendServiceIamBinding`">`gcp.compute.BackendServiceIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.compute.BackendServiceIamMember`" pulumi-lang-dotnet="`gcp.compute.BackendServiceIamMember`" pulumi-lang-go="`compute.BackendServiceIamMember`" pulumi-lang-python="`compute.BackendServiceIamMember`" pulumi-lang-yaml="`gcp.compute.BackendServiceIamMember`" pulumi-lang-java="`gcp.compute.BackendServiceIamMember`">`gcp.compute.BackendServiceIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.BackendServiceIamBinding`" pulumi-lang-dotnet="`gcp.compute.BackendServiceIamBinding`" pulumi-lang-go="`compute.BackendServiceIamBinding`" pulumi-lang-python="`compute.BackendServiceIamBinding`" pulumi-lang-yaml="`gcp.compute.BackendServiceIamBinding`" pulumi-lang-java="`gcp.compute.BackendServiceIamBinding`">`gcp.compute.BackendServiceIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.BackendServiceIamMember`" pulumi-lang-dotnet="`gcp.compute.BackendServiceIamMember`" pulumi-lang-go="`compute.BackendServiceIamMember`" pulumi-lang-python="`compute.BackendServiceIamMember`" pulumi-lang-yaml="`gcp.compute.BackendServiceIamMember`" pulumi-lang-java="`gcp.compute.BackendServiceIamMember`">`gcp.compute.BackendServiceIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
/// ##<span pulumi-lang-nodejs=" gcp.compute.BackendServiceIamPolicy
/// " pulumi-lang-dotnet=" gcp.compute.BackendServiceIamPolicy
/// " pulumi-lang-go=" compute.BackendServiceIamPolicy
/// " pulumi-lang-python=" compute.BackendServiceIamPolicy
/// " pulumi-lang-yaml=" gcp.compute.BackendServiceIamPolicy
/// " pulumi-lang-java=" gcp.compute.BackendServiceIamPolicy
/// "> gcp.compute.BackendServiceIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/compute.admin",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.compute.BackendServiceIamPolicy("policy", {
/// project: _default.project,
/// name: _default.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/compute.admin",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.compute.BackendServiceIamPolicy("policy",
/// project=default["project"],
/// name=default["name"],
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
/// Role = "roles/compute.admin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Compute.BackendServiceIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// Name = @default.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/compute.admin",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewBackendServiceIamPolicy(ctx, "policy", &compute.BackendServiceIamPolicyArgs{
/// Project:    pulumi.Any(_default.Project),
/// Name:       pulumi.Any(_default.Name),
/// PolicyData: pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.compute.BackendServiceIamPolicy;
/// import com.pulumi.gcp.compute.BackendServiceIamPolicyArgs;
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
/// .role("roles/compute.admin")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new BackendServiceIamPolicy("policy", BackendServiceIamPolicyArgs.builder()
/// .project(default_.project())
/// .name(default_.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:compute:BackendServiceIamPolicy
/// properties:
/// project: ${default.project}
/// name: ${default.name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/compute.admin
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
/// role: "roles/compute.admin",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const policy = new gcp.compute.BackendServiceIamPolicy("policy", {
/// project: _default.project,
/// name: _default.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/compute.admin",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }])
/// policy = gcp.compute.BackendServiceIamPolicy("policy",
/// project=default["project"],
/// name=default["name"],
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
/// Role = "roles/compute.admin",
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
/// var policy = new Gcp.Compute.BackendServiceIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// Name = @default.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/compute.admin",
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
/// _, err = compute.NewBackendServiceIamPolicy(ctx, "policy", &compute.BackendServiceIamPolicyArgs{
/// Project:    pulumi.Any(_default.Project),
/// Name:       pulumi.Any(_default.Name),
/// PolicyData: pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.compute.BackendServiceIamPolicy;
/// import com.pulumi.gcp.compute.BackendServiceIamPolicyArgs;
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
/// .role("roles/compute.admin")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var policy = new BackendServiceIamPolicy("policy", BackendServiceIamPolicyArgs.builder()
/// .project(default_.project())
/// .name(default_.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:compute:BackendServiceIamPolicy
/// properties:
/// project: ${default.project}
/// name: ${default.name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/compute.admin
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.compute.BackendServiceIamBinding
/// " pulumi-lang-dotnet=" gcp.compute.BackendServiceIamBinding
/// " pulumi-lang-go=" compute.BackendServiceIamBinding
/// " pulumi-lang-python=" compute.BackendServiceIamBinding
/// " pulumi-lang-yaml=" gcp.compute.BackendServiceIamBinding
/// " pulumi-lang-java=" gcp.compute.BackendServiceIamBinding
/// "> gcp.compute.BackendServiceIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.BackendServiceIamBinding("binding", {
/// project: _default.project,
/// name: _default.name,
/// role: "roles/compute.admin",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.BackendServiceIamBinding("binding",
/// project=default["project"],
/// name=default["name"],
/// role="roles/compute.admin",
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
/// var binding = new Gcp.Compute.BackendServiceIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// Name = @default.Name,
/// Role = "roles/compute.admin",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewBackendServiceIamBinding(ctx, "binding", &compute.BackendServiceIamBindingArgs{
/// Project: pulumi.Any(_default.Project),
/// Name:    pulumi.Any(_default.Name),
/// Role:    pulumi.String("roles/compute.admin"),
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
/// import com.pulumi.gcp.compute.BackendServiceIamBinding;
/// import com.pulumi.gcp.compute.BackendServiceIamBindingArgs;
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
/// var binding = new BackendServiceIamBinding("binding", BackendServiceIamBindingArgs.builder()
/// .project(default_.project())
/// .name(default_.name())
/// .role("roles/compute.admin")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:compute:BackendServiceIamBinding
/// properties:
/// project: ${default.project}
/// name: ${default.name}
/// role: roles/compute.admin
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
/// const binding = new gcp.compute.BackendServiceIamBinding("binding", {
/// project: _default.project,
/// name: _default.name,
/// role: "roles/compute.admin",
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
/// binding = gcp.compute.BackendServiceIamBinding("binding",
/// project=default["project"],
/// name=default["name"],
/// role="roles/compute.admin",
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
/// var binding = new Gcp.Compute.BackendServiceIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// Name = @default.Name,
/// Role = "roles/compute.admin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Compute.Inputs.BackendServiceIamBindingConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewBackendServiceIamBinding(ctx, "binding", &compute.BackendServiceIamBindingArgs{
/// Project: pulumi.Any(_default.Project),
/// Name:    pulumi.Any(_default.Name),
/// Role:    pulumi.String("roles/compute.admin"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &compute.BackendServiceIamBindingConditionArgs{
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
/// import com.pulumi.gcp.compute.BackendServiceIamBinding;
/// import com.pulumi.gcp.compute.BackendServiceIamBindingArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceIamBindingConditionArgs;
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
/// var binding = new BackendServiceIamBinding("binding", BackendServiceIamBindingArgs.builder()
/// .project(default_.project())
/// .name(default_.name())
/// .role("roles/compute.admin")
/// .members("user:jane@example.com")
/// .condition(BackendServiceIamBindingConditionArgs.builder()
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
/// type: gcp:compute:BackendServiceIamBinding
/// properties:
/// project: ${default.project}
/// name: ${default.name}
/// role: roles/compute.admin
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.compute.BackendServiceIamMember
/// " pulumi-lang-dotnet=" gcp.compute.BackendServiceIamMember
/// " pulumi-lang-go=" compute.BackendServiceIamMember
/// " pulumi-lang-python=" compute.BackendServiceIamMember
/// " pulumi-lang-yaml=" gcp.compute.BackendServiceIamMember
/// " pulumi-lang-java=" gcp.compute.BackendServiceIamMember
/// "> gcp.compute.BackendServiceIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.BackendServiceIamMember("member", {
/// project: _default.project,
/// name: _default.name,
/// role: "roles/compute.admin",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.BackendServiceIamMember("member",
/// project=default["project"],
/// name=default["name"],
/// role="roles/compute.admin",
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
/// var member = new Gcp.Compute.BackendServiceIamMember("member", new()
/// {
/// Project = @default.Project,
/// Name = @default.Name,
/// Role = "roles/compute.admin",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewBackendServiceIamMember(ctx, "member", &compute.BackendServiceIamMemberArgs{
/// Project: pulumi.Any(_default.Project),
/// Name:    pulumi.Any(_default.Name),
/// Role:    pulumi.String("roles/compute.admin"),
/// Member:  pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.compute.BackendServiceIamMember;
/// import com.pulumi.gcp.compute.BackendServiceIamMemberArgs;
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
/// var member = new BackendServiceIamMember("member", BackendServiceIamMemberArgs.builder()
/// .project(default_.project())
/// .name(default_.name())
/// .role("roles/compute.admin")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:compute:BackendServiceIamMember
/// properties:
/// project: ${default.project}
/// name: ${default.name}
/// role: roles/compute.admin
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
/// const member = new gcp.compute.BackendServiceIamMember("member", {
/// project: _default.project,
/// name: _default.name,
/// role: "roles/compute.admin",
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
/// member = gcp.compute.BackendServiceIamMember("member",
/// project=default["project"],
/// name=default["name"],
/// role="roles/compute.admin",
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
/// var member = new Gcp.Compute.BackendServiceIamMember("member", new()
/// {
/// Project = @default.Project,
/// Name = @default.Name,
/// Role = "roles/compute.admin",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Compute.Inputs.BackendServiceIamMemberConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewBackendServiceIamMember(ctx, "member", &compute.BackendServiceIamMemberArgs{
/// Project: pulumi.Any(_default.Project),
/// Name:    pulumi.Any(_default.Name),
/// Role:    pulumi.String("roles/compute.admin"),
/// Member:  pulumi.String("user:jane@example.com"),
/// Condition: &compute.BackendServiceIamMemberConditionArgs{
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
/// import com.pulumi.gcp.compute.BackendServiceIamMember;
/// import com.pulumi.gcp.compute.BackendServiceIamMemberArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceIamMemberConditionArgs;
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
/// var member = new BackendServiceIamMember("member", BackendServiceIamMemberArgs.builder()
/// .project(default_.project())
/// .name(default_.name())
/// .role("roles/compute.admin")
/// .member("user:jane@example.com")
/// .condition(BackendServiceIamMemberConditionArgs.builder()
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
/// type: gcp:compute:BackendServiceIamMember
/// properties:
/// project: ${default.project}
/// name: ${default.name}
/// role: roles/compute.admin
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
/// # IAM policy for Compute Engine BackendService
///
/// Three different resources help you manage your IAM policy for Compute Engine BackendService. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.compute.BackendServiceIamPolicy`" pulumi-lang-dotnet="`gcp.compute.BackendServiceIamPolicy`" pulumi-lang-go="`compute.BackendServiceIamPolicy`" pulumi-lang-python="`compute.BackendServiceIamPolicy`" pulumi-lang-yaml="`gcp.compute.BackendServiceIamPolicy`" pulumi-lang-java="`gcp.compute.BackendServiceIamPolicy`">`gcp.compute.BackendServiceIamPolicy`</span>: Authoritative. Sets the IAM policy for the backendservice and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.compute.BackendServiceIamBinding`" pulumi-lang-dotnet="`gcp.compute.BackendServiceIamBinding`" pulumi-lang-go="`compute.BackendServiceIamBinding`" pulumi-lang-python="`compute.BackendServiceIamBinding`" pulumi-lang-yaml="`gcp.compute.BackendServiceIamBinding`" pulumi-lang-java="`gcp.compute.BackendServiceIamBinding`">`gcp.compute.BackendServiceIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the backendservice are preserved.
/// * <span pulumi-lang-nodejs="`gcp.compute.BackendServiceIamMember`" pulumi-lang-dotnet="`gcp.compute.BackendServiceIamMember`" pulumi-lang-go="`compute.BackendServiceIamMember`" pulumi-lang-python="`compute.BackendServiceIamMember`" pulumi-lang-yaml="`gcp.compute.BackendServiceIamMember`" pulumi-lang-java="`gcp.compute.BackendServiceIamMember`">`gcp.compute.BackendServiceIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the backendservice are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.compute.BackendServiceIamPolicy`" pulumi-lang-dotnet="`gcp.compute.BackendServiceIamPolicy`" pulumi-lang-go="`compute.BackendServiceIamPolicy`" pulumi-lang-python="`compute.BackendServiceIamPolicy`" pulumi-lang-yaml="`gcp.compute.BackendServiceIamPolicy`" pulumi-lang-java="`gcp.compute.BackendServiceIamPolicy`">`gcp.compute.BackendServiceIamPolicy`</span>: Retrieves the IAM policy for the backendservice
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.BackendServiceIamPolicy`" pulumi-lang-dotnet="`gcp.compute.BackendServiceIamPolicy`" pulumi-lang-go="`compute.BackendServiceIamPolicy`" pulumi-lang-python="`compute.BackendServiceIamPolicy`" pulumi-lang-yaml="`gcp.compute.BackendServiceIamPolicy`" pulumi-lang-java="`gcp.compute.BackendServiceIamPolicy`">`gcp.compute.BackendServiceIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.BackendServiceIamBinding`" pulumi-lang-dotnet="`gcp.compute.BackendServiceIamBinding`" pulumi-lang-go="`compute.BackendServiceIamBinding`" pulumi-lang-python="`compute.BackendServiceIamBinding`" pulumi-lang-yaml="`gcp.compute.BackendServiceIamBinding`" pulumi-lang-java="`gcp.compute.BackendServiceIamBinding`">`gcp.compute.BackendServiceIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.compute.BackendServiceIamMember`" pulumi-lang-dotnet="`gcp.compute.BackendServiceIamMember`" pulumi-lang-go="`compute.BackendServiceIamMember`" pulumi-lang-python="`compute.BackendServiceIamMember`" pulumi-lang-yaml="`gcp.compute.BackendServiceIamMember`" pulumi-lang-java="`gcp.compute.BackendServiceIamMember`">`gcp.compute.BackendServiceIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.BackendServiceIamBinding`" pulumi-lang-dotnet="`gcp.compute.BackendServiceIamBinding`" pulumi-lang-go="`compute.BackendServiceIamBinding`" pulumi-lang-python="`compute.BackendServiceIamBinding`" pulumi-lang-yaml="`gcp.compute.BackendServiceIamBinding`" pulumi-lang-java="`gcp.compute.BackendServiceIamBinding`">`gcp.compute.BackendServiceIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.BackendServiceIamMember`" pulumi-lang-dotnet="`gcp.compute.BackendServiceIamMember`" pulumi-lang-go="`compute.BackendServiceIamMember`" pulumi-lang-python="`compute.BackendServiceIamMember`" pulumi-lang-yaml="`gcp.compute.BackendServiceIamMember`" pulumi-lang-java="`gcp.compute.BackendServiceIamMember`">`gcp.compute.BackendServiceIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
/// ##<span pulumi-lang-nodejs=" gcp.compute.BackendServiceIamPolicy
/// " pulumi-lang-dotnet=" gcp.compute.BackendServiceIamPolicy
/// " pulumi-lang-go=" compute.BackendServiceIamPolicy
/// " pulumi-lang-python=" compute.BackendServiceIamPolicy
/// " pulumi-lang-yaml=" gcp.compute.BackendServiceIamPolicy
/// " pulumi-lang-java=" gcp.compute.BackendServiceIamPolicy
/// "> gcp.compute.BackendServiceIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/compute.admin",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.compute.BackendServiceIamPolicy("policy", {
/// project: _default.project,
/// name: _default.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/compute.admin",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.compute.BackendServiceIamPolicy("policy",
/// project=default["project"],
/// name=default["name"],
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
/// Role = "roles/compute.admin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Compute.BackendServiceIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// Name = @default.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/compute.admin",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewBackendServiceIamPolicy(ctx, "policy", &compute.BackendServiceIamPolicyArgs{
/// Project:    pulumi.Any(_default.Project),
/// Name:       pulumi.Any(_default.Name),
/// PolicyData: pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.compute.BackendServiceIamPolicy;
/// import com.pulumi.gcp.compute.BackendServiceIamPolicyArgs;
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
/// .role("roles/compute.admin")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new BackendServiceIamPolicy("policy", BackendServiceIamPolicyArgs.builder()
/// .project(default_.project())
/// .name(default_.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:compute:BackendServiceIamPolicy
/// properties:
/// project: ${default.project}
/// name: ${default.name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/compute.admin
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
/// role: "roles/compute.admin",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const policy = new gcp.compute.BackendServiceIamPolicy("policy", {
/// project: _default.project,
/// name: _default.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/compute.admin",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }])
/// policy = gcp.compute.BackendServiceIamPolicy("policy",
/// project=default["project"],
/// name=default["name"],
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
/// Role = "roles/compute.admin",
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
/// var policy = new Gcp.Compute.BackendServiceIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// Name = @default.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/compute.admin",
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
/// _, err = compute.NewBackendServiceIamPolicy(ctx, "policy", &compute.BackendServiceIamPolicyArgs{
/// Project:    pulumi.Any(_default.Project),
/// Name:       pulumi.Any(_default.Name),
/// PolicyData: pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.compute.BackendServiceIamPolicy;
/// import com.pulumi.gcp.compute.BackendServiceIamPolicyArgs;
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
/// .role("roles/compute.admin")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var policy = new BackendServiceIamPolicy("policy", BackendServiceIamPolicyArgs.builder()
/// .project(default_.project())
/// .name(default_.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:compute:BackendServiceIamPolicy
/// properties:
/// project: ${default.project}
/// name: ${default.name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/compute.admin
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.compute.BackendServiceIamBinding
/// " pulumi-lang-dotnet=" gcp.compute.BackendServiceIamBinding
/// " pulumi-lang-go=" compute.BackendServiceIamBinding
/// " pulumi-lang-python=" compute.BackendServiceIamBinding
/// " pulumi-lang-yaml=" gcp.compute.BackendServiceIamBinding
/// " pulumi-lang-java=" gcp.compute.BackendServiceIamBinding
/// "> gcp.compute.BackendServiceIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.BackendServiceIamBinding("binding", {
/// project: _default.project,
/// name: _default.name,
/// role: "roles/compute.admin",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.BackendServiceIamBinding("binding",
/// project=default["project"],
/// name=default["name"],
/// role="roles/compute.admin",
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
/// var binding = new Gcp.Compute.BackendServiceIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// Name = @default.Name,
/// Role = "roles/compute.admin",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewBackendServiceIamBinding(ctx, "binding", &compute.BackendServiceIamBindingArgs{
/// Project: pulumi.Any(_default.Project),
/// Name:    pulumi.Any(_default.Name),
/// Role:    pulumi.String("roles/compute.admin"),
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
/// import com.pulumi.gcp.compute.BackendServiceIamBinding;
/// import com.pulumi.gcp.compute.BackendServiceIamBindingArgs;
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
/// var binding = new BackendServiceIamBinding("binding", BackendServiceIamBindingArgs.builder()
/// .project(default_.project())
/// .name(default_.name())
/// .role("roles/compute.admin")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:compute:BackendServiceIamBinding
/// properties:
/// project: ${default.project}
/// name: ${default.name}
/// role: roles/compute.admin
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
/// const binding = new gcp.compute.BackendServiceIamBinding("binding", {
/// project: _default.project,
/// name: _default.name,
/// role: "roles/compute.admin",
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
/// binding = gcp.compute.BackendServiceIamBinding("binding",
/// project=default["project"],
/// name=default["name"],
/// role="roles/compute.admin",
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
/// var binding = new Gcp.Compute.BackendServiceIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// Name = @default.Name,
/// Role = "roles/compute.admin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Compute.Inputs.BackendServiceIamBindingConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewBackendServiceIamBinding(ctx, "binding", &compute.BackendServiceIamBindingArgs{
/// Project: pulumi.Any(_default.Project),
/// Name:    pulumi.Any(_default.Name),
/// Role:    pulumi.String("roles/compute.admin"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &compute.BackendServiceIamBindingConditionArgs{
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
/// import com.pulumi.gcp.compute.BackendServiceIamBinding;
/// import com.pulumi.gcp.compute.BackendServiceIamBindingArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceIamBindingConditionArgs;
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
/// var binding = new BackendServiceIamBinding("binding", BackendServiceIamBindingArgs.builder()
/// .project(default_.project())
/// .name(default_.name())
/// .role("roles/compute.admin")
/// .members("user:jane@example.com")
/// .condition(BackendServiceIamBindingConditionArgs.builder()
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
/// type: gcp:compute:BackendServiceIamBinding
/// properties:
/// project: ${default.project}
/// name: ${default.name}
/// role: roles/compute.admin
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.compute.BackendServiceIamMember
/// " pulumi-lang-dotnet=" gcp.compute.BackendServiceIamMember
/// " pulumi-lang-go=" compute.BackendServiceIamMember
/// " pulumi-lang-python=" compute.BackendServiceIamMember
/// " pulumi-lang-yaml=" gcp.compute.BackendServiceIamMember
/// " pulumi-lang-java=" gcp.compute.BackendServiceIamMember
/// "> gcp.compute.BackendServiceIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.BackendServiceIamMember("member", {
/// project: _default.project,
/// name: _default.name,
/// role: "roles/compute.admin",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.BackendServiceIamMember("member",
/// project=default["project"],
/// name=default["name"],
/// role="roles/compute.admin",
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
/// var member = new Gcp.Compute.BackendServiceIamMember("member", new()
/// {
/// Project = @default.Project,
/// Name = @default.Name,
/// Role = "roles/compute.admin",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewBackendServiceIamMember(ctx, "member", &compute.BackendServiceIamMemberArgs{
/// Project: pulumi.Any(_default.Project),
/// Name:    pulumi.Any(_default.Name),
/// Role:    pulumi.String("roles/compute.admin"),
/// Member:  pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.compute.BackendServiceIamMember;
/// import com.pulumi.gcp.compute.BackendServiceIamMemberArgs;
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
/// var member = new BackendServiceIamMember("member", BackendServiceIamMemberArgs.builder()
/// .project(default_.project())
/// .name(default_.name())
/// .role("roles/compute.admin")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:compute:BackendServiceIamMember
/// properties:
/// project: ${default.project}
/// name: ${default.name}
/// role: roles/compute.admin
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
/// const member = new gcp.compute.BackendServiceIamMember("member", {
/// project: _default.project,
/// name: _default.name,
/// role: "roles/compute.admin",
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
/// member = gcp.compute.BackendServiceIamMember("member",
/// project=default["project"],
/// name=default["name"],
/// role="roles/compute.admin",
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
/// var member = new Gcp.Compute.BackendServiceIamMember("member", new()
/// {
/// Project = @default.Project,
/// Name = @default.Name,
/// Role = "roles/compute.admin",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Compute.Inputs.BackendServiceIamMemberConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewBackendServiceIamMember(ctx, "member", &compute.BackendServiceIamMemberArgs{
/// Project: pulumi.Any(_default.Project),
/// Name:    pulumi.Any(_default.Name),
/// Role:    pulumi.String("roles/compute.admin"),
/// Member:  pulumi.String("user:jane@example.com"),
/// Condition: &compute.BackendServiceIamMemberConditionArgs{
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
/// import com.pulumi.gcp.compute.BackendServiceIamMember;
/// import com.pulumi.gcp.compute.BackendServiceIamMemberArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceIamMemberConditionArgs;
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
/// var member = new BackendServiceIamMember("member", BackendServiceIamMemberArgs.builder()
/// .project(default_.project())
/// .name(default_.name())
/// .role("roles/compute.admin")
/// .member("user:jane@example.com")
/// .condition(BackendServiceIamMemberConditionArgs.builder()
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
/// type: gcp:compute:BackendServiceIamMember
/// properties:
/// project: ${default.project}
/// name: ${default.name}
/// role: roles/compute.admin
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
/// * projects/{{project}}/global/backendServices/{{name}}
///
/// * {{project}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Compute Engine backendservice IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/backendServiceIamPolicy:BackendServiceIamPolicy editor "projects/{{project}}/global/backendServices/{{backend_service}} roles/compute.admin user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/backendServiceIamPolicy:BackendServiceIamPolicy editor "projects/{{project}}/global/backendServices/{{backend_service}} roles/compute.admin"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/backendServiceIamPolicy:BackendServiceIamPolicy editor projects/{{project}}/global/backendServices/{{backend_service}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class BackendServiceIamPolicy extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> name;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  BackendServiceIamPolicy(
    String name, {
    BackendServiceIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/backendServiceIamPolicy:BackendServiceIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}
