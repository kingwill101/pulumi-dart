import 'package:pulumi/pulumi.dart';
import 'region_backend_service_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Compute Engine RegionBackendService. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.compute.RegionBackendServiceIamPolicy`" pulumi-lang-dotnet="`gcp.compute.RegionBackendServiceIamPolicy`" pulumi-lang-go="`compute.RegionBackendServiceIamPolicy`" pulumi-lang-python="`compute.RegionBackendServiceIamPolicy`" pulumi-lang-yaml="`gcp.compute.RegionBackendServiceIamPolicy`" pulumi-lang-java="`gcp.compute.RegionBackendServiceIamPolicy`">`gcp.compute.RegionBackendServiceIamPolicy`</span>: Authoritative. Sets the IAM policy for the regionbackendservice and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.compute.RegionBackendServiceIamBinding`" pulumi-lang-dotnet="`gcp.compute.RegionBackendServiceIamBinding`" pulumi-lang-go="`compute.RegionBackendServiceIamBinding`" pulumi-lang-python="`compute.RegionBackendServiceIamBinding`" pulumi-lang-yaml="`gcp.compute.RegionBackendServiceIamBinding`" pulumi-lang-java="`gcp.compute.RegionBackendServiceIamBinding`">`gcp.compute.RegionBackendServiceIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the regionbackendservice are preserved.
/// * <span pulumi-lang-nodejs="`gcp.compute.RegionBackendServiceIamMember`" pulumi-lang-dotnet="`gcp.compute.RegionBackendServiceIamMember`" pulumi-lang-go="`compute.RegionBackendServiceIamMember`" pulumi-lang-python="`compute.RegionBackendServiceIamMember`" pulumi-lang-yaml="`gcp.compute.RegionBackendServiceIamMember`" pulumi-lang-java="`gcp.compute.RegionBackendServiceIamMember`">`gcp.compute.RegionBackendServiceIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the regionbackendservice are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.compute.RegionBackendServiceIamPolicy`" pulumi-lang-dotnet="`gcp.compute.RegionBackendServiceIamPolicy`" pulumi-lang-go="`compute.RegionBackendServiceIamPolicy`" pulumi-lang-python="`compute.RegionBackendServiceIamPolicy`" pulumi-lang-yaml="`gcp.compute.RegionBackendServiceIamPolicy`" pulumi-lang-java="`gcp.compute.RegionBackendServiceIamPolicy`">`gcp.compute.RegionBackendServiceIamPolicy`</span>: Retrieves the IAM policy for the regionbackendservice
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.RegionBackendServiceIamPolicy`" pulumi-lang-dotnet="`gcp.compute.RegionBackendServiceIamPolicy`" pulumi-lang-go="`compute.RegionBackendServiceIamPolicy`" pulumi-lang-python="`compute.RegionBackendServiceIamPolicy`" pulumi-lang-yaml="`gcp.compute.RegionBackendServiceIamPolicy`" pulumi-lang-java="`gcp.compute.RegionBackendServiceIamPolicy`">`gcp.compute.RegionBackendServiceIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.RegionBackendServiceIamBinding`" pulumi-lang-dotnet="`gcp.compute.RegionBackendServiceIamBinding`" pulumi-lang-go="`compute.RegionBackendServiceIamBinding`" pulumi-lang-python="`compute.RegionBackendServiceIamBinding`" pulumi-lang-yaml="`gcp.compute.RegionBackendServiceIamBinding`" pulumi-lang-java="`gcp.compute.RegionBackendServiceIamBinding`">`gcp.compute.RegionBackendServiceIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.compute.RegionBackendServiceIamMember`" pulumi-lang-dotnet="`gcp.compute.RegionBackendServiceIamMember`" pulumi-lang-go="`compute.RegionBackendServiceIamMember`" pulumi-lang-python="`compute.RegionBackendServiceIamMember`" pulumi-lang-yaml="`gcp.compute.RegionBackendServiceIamMember`" pulumi-lang-java="`gcp.compute.RegionBackendServiceIamMember`">`gcp.compute.RegionBackendServiceIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.RegionBackendServiceIamBinding`" pulumi-lang-dotnet="`gcp.compute.RegionBackendServiceIamBinding`" pulumi-lang-go="`compute.RegionBackendServiceIamBinding`" pulumi-lang-python="`compute.RegionBackendServiceIamBinding`" pulumi-lang-yaml="`gcp.compute.RegionBackendServiceIamBinding`" pulumi-lang-java="`gcp.compute.RegionBackendServiceIamBinding`">`gcp.compute.RegionBackendServiceIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.RegionBackendServiceIamMember`" pulumi-lang-dotnet="`gcp.compute.RegionBackendServiceIamMember`" pulumi-lang-go="`compute.RegionBackendServiceIamMember`" pulumi-lang-python="`compute.RegionBackendServiceIamMember`" pulumi-lang-yaml="`gcp.compute.RegionBackendServiceIamMember`" pulumi-lang-java="`gcp.compute.RegionBackendServiceIamMember`">`gcp.compute.RegionBackendServiceIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
/// ##<span pulumi-lang-nodejs=" gcp.compute.RegionBackendServiceIamPolicy
/// " pulumi-lang-dotnet=" gcp.compute.RegionBackendServiceIamPolicy
/// " pulumi-lang-go=" compute.RegionBackendServiceIamPolicy
/// " pulumi-lang-python=" compute.RegionBackendServiceIamPolicy
/// " pulumi-lang-yaml=" gcp.compute.RegionBackendServiceIamPolicy
/// " pulumi-lang-java=" gcp.compute.RegionBackendServiceIamPolicy
/// "> gcp.compute.RegionBackendServiceIamPolicy
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
/// const policy = new gcp.compute.RegionBackendServiceIamPolicy("policy", {
/// project: _default.project,
/// region: _default.region,
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
/// policy = gcp.compute.RegionBackendServiceIamPolicy("policy",
/// project=default["project"],
/// region=default["region"],
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
/// var policy = new Gcp.Compute.RegionBackendServiceIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// Region = @default.Region,
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
/// _, err = compute.NewRegionBackendServiceIamPolicy(ctx, "policy", &compute.RegionBackendServiceIamPolicyArgs{
/// Project:    pulumi.Any(_default.Project),
/// Region:     pulumi.Any(_default.Region),
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
/// import com.pulumi.gcp.compute.RegionBackendServiceIamPolicy;
/// import com.pulumi.gcp.compute.RegionBackendServiceIamPolicyArgs;
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
/// var policy = new RegionBackendServiceIamPolicy("policy", RegionBackendServiceIamPolicyArgs.builder()
/// .project(default_.project())
/// .region(default_.region())
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
/// type: gcp:compute:RegionBackendServiceIamPolicy
/// properties:
/// project: ${default.project}
/// region: ${default.region}
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
/// const policy = new gcp.compute.RegionBackendServiceIamPolicy("policy", {
/// project: _default.project,
/// region: _default.region,
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
/// policy = gcp.compute.RegionBackendServiceIamPolicy("policy",
/// project=default["project"],
/// region=default["region"],
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
/// var policy = new Gcp.Compute.RegionBackendServiceIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// Region = @default.Region,
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
/// _, err = compute.NewRegionBackendServiceIamPolicy(ctx, "policy", &compute.RegionBackendServiceIamPolicyArgs{
/// Project:    pulumi.Any(_default.Project),
/// Region:     pulumi.Any(_default.Region),
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
/// import com.pulumi.gcp.compute.RegionBackendServiceIamPolicy;
/// import com.pulumi.gcp.compute.RegionBackendServiceIamPolicyArgs;
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
/// var policy = new RegionBackendServiceIamPolicy("policy", RegionBackendServiceIamPolicyArgs.builder()
/// .project(default_.project())
/// .region(default_.region())
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
/// type: gcp:compute:RegionBackendServiceIamPolicy
/// properties:
/// project: ${default.project}
/// region: ${default.region}
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
/// ##<span pulumi-lang-nodejs=" gcp.compute.RegionBackendServiceIamBinding
/// " pulumi-lang-dotnet=" gcp.compute.RegionBackendServiceIamBinding
/// " pulumi-lang-go=" compute.RegionBackendServiceIamBinding
/// " pulumi-lang-python=" compute.RegionBackendServiceIamBinding
/// " pulumi-lang-yaml=" gcp.compute.RegionBackendServiceIamBinding
/// " pulumi-lang-java=" gcp.compute.RegionBackendServiceIamBinding
/// "> gcp.compute.RegionBackendServiceIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.RegionBackendServiceIamBinding("binding", {
/// project: _default.project,
/// region: _default.region,
/// name: _default.name,
/// role: "roles/compute.admin",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.RegionBackendServiceIamBinding("binding",
/// project=default["project"],
/// region=default["region"],
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
/// var binding = new Gcp.Compute.RegionBackendServiceIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// Region = @default.Region,
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
/// _, err := compute.NewRegionBackendServiceIamBinding(ctx, "binding", &compute.RegionBackendServiceIamBindingArgs{
/// Project: pulumi.Any(_default.Project),
/// Region:  pulumi.Any(_default.Region),
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
/// import com.pulumi.gcp.compute.RegionBackendServiceIamBinding;
/// import com.pulumi.gcp.compute.RegionBackendServiceIamBindingArgs;
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
/// var binding = new RegionBackendServiceIamBinding("binding", RegionBackendServiceIamBindingArgs.builder()
/// .project(default_.project())
/// .region(default_.region())
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
/// type: gcp:compute:RegionBackendServiceIamBinding
/// properties:
/// project: ${default.project}
/// region: ${default.region}
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
/// const binding = new gcp.compute.RegionBackendServiceIamBinding("binding", {
/// project: _default.project,
/// region: _default.region,
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
/// binding = gcp.compute.RegionBackendServiceIamBinding("binding",
/// project=default["project"],
/// region=default["region"],
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
/// var binding = new Gcp.Compute.RegionBackendServiceIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// Region = @default.Region,
/// Name = @default.Name,
/// Role = "roles/compute.admin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Compute.Inputs.RegionBackendServiceIamBindingConditionArgs
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
/// _, err := compute.NewRegionBackendServiceIamBinding(ctx, "binding", &compute.RegionBackendServiceIamBindingArgs{
/// Project: pulumi.Any(_default.Project),
/// Region:  pulumi.Any(_default.Region),
/// Name:    pulumi.Any(_default.Name),
/// Role:    pulumi.String("roles/compute.admin"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &compute.RegionBackendServiceIamBindingConditionArgs{
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
/// import com.pulumi.gcp.compute.RegionBackendServiceIamBinding;
/// import com.pulumi.gcp.compute.RegionBackendServiceIamBindingArgs;
/// import com.pulumi.gcp.compute.inputs.RegionBackendServiceIamBindingConditionArgs;
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
/// var binding = new RegionBackendServiceIamBinding("binding", RegionBackendServiceIamBindingArgs.builder()
/// .project(default_.project())
/// .region(default_.region())
/// .name(default_.name())
/// .role("roles/compute.admin")
/// .members("user:jane@example.com")
/// .condition(RegionBackendServiceIamBindingConditionArgs.builder()
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
/// type: gcp:compute:RegionBackendServiceIamBinding
/// properties:
/// project: ${default.project}
/// region: ${default.region}
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
/// ##<span pulumi-lang-nodejs=" gcp.compute.RegionBackendServiceIamMember
/// " pulumi-lang-dotnet=" gcp.compute.RegionBackendServiceIamMember
/// " pulumi-lang-go=" compute.RegionBackendServiceIamMember
/// " pulumi-lang-python=" compute.RegionBackendServiceIamMember
/// " pulumi-lang-yaml=" gcp.compute.RegionBackendServiceIamMember
/// " pulumi-lang-java=" gcp.compute.RegionBackendServiceIamMember
/// "> gcp.compute.RegionBackendServiceIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.RegionBackendServiceIamMember("member", {
/// project: _default.project,
/// region: _default.region,
/// name: _default.name,
/// role: "roles/compute.admin",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.RegionBackendServiceIamMember("member",
/// project=default["project"],
/// region=default["region"],
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
/// var member = new Gcp.Compute.RegionBackendServiceIamMember("member", new()
/// {
/// Project = @default.Project,
/// Region = @default.Region,
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
/// _, err := compute.NewRegionBackendServiceIamMember(ctx, "member", &compute.RegionBackendServiceIamMemberArgs{
/// Project: pulumi.Any(_default.Project),
/// Region:  pulumi.Any(_default.Region),
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
/// import com.pulumi.gcp.compute.RegionBackendServiceIamMember;
/// import com.pulumi.gcp.compute.RegionBackendServiceIamMemberArgs;
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
/// var member = new RegionBackendServiceIamMember("member", RegionBackendServiceIamMemberArgs.builder()
/// .project(default_.project())
/// .region(default_.region())
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
/// type: gcp:compute:RegionBackendServiceIamMember
/// properties:
/// project: ${default.project}
/// region: ${default.region}
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
/// const member = new gcp.compute.RegionBackendServiceIamMember("member", {
/// project: _default.project,
/// region: _default.region,
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
/// member = gcp.compute.RegionBackendServiceIamMember("member",
/// project=default["project"],
/// region=default["region"],
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
/// var member = new Gcp.Compute.RegionBackendServiceIamMember("member", new()
/// {
/// Project = @default.Project,
/// Region = @default.Region,
/// Name = @default.Name,
/// Role = "roles/compute.admin",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Compute.Inputs.RegionBackendServiceIamMemberConditionArgs
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
/// _, err := compute.NewRegionBackendServiceIamMember(ctx, "member", &compute.RegionBackendServiceIamMemberArgs{
/// Project: pulumi.Any(_default.Project),
/// Region:  pulumi.Any(_default.Region),
/// Name:    pulumi.Any(_default.Name),
/// Role:    pulumi.String("roles/compute.admin"),
/// Member:  pulumi.String("user:jane@example.com"),
/// Condition: &compute.RegionBackendServiceIamMemberConditionArgs{
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
/// import com.pulumi.gcp.compute.RegionBackendServiceIamMember;
/// import com.pulumi.gcp.compute.RegionBackendServiceIamMemberArgs;
/// import com.pulumi.gcp.compute.inputs.RegionBackendServiceIamMemberConditionArgs;
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
/// var member = new RegionBackendServiceIamMember("member", RegionBackendServiceIamMemberArgs.builder()
/// .project(default_.project())
/// .region(default_.region())
/// .name(default_.name())
/// .role("roles/compute.admin")
/// .member("user:jane@example.com")
/// .condition(RegionBackendServiceIamMemberConditionArgs.builder()
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
/// type: gcp:compute:RegionBackendServiceIamMember
/// properties:
/// project: ${default.project}
/// region: ${default.region}
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
/// # IAM policy for Compute Engine RegionBackendService
///
/// Three different resources help you manage your IAM policy for Compute Engine RegionBackendService. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.compute.RegionBackendServiceIamPolicy`" pulumi-lang-dotnet="`gcp.compute.RegionBackendServiceIamPolicy`" pulumi-lang-go="`compute.RegionBackendServiceIamPolicy`" pulumi-lang-python="`compute.RegionBackendServiceIamPolicy`" pulumi-lang-yaml="`gcp.compute.RegionBackendServiceIamPolicy`" pulumi-lang-java="`gcp.compute.RegionBackendServiceIamPolicy`">`gcp.compute.RegionBackendServiceIamPolicy`</span>: Authoritative. Sets the IAM policy for the regionbackendservice and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.compute.RegionBackendServiceIamBinding`" pulumi-lang-dotnet="`gcp.compute.RegionBackendServiceIamBinding`" pulumi-lang-go="`compute.RegionBackendServiceIamBinding`" pulumi-lang-python="`compute.RegionBackendServiceIamBinding`" pulumi-lang-yaml="`gcp.compute.RegionBackendServiceIamBinding`" pulumi-lang-java="`gcp.compute.RegionBackendServiceIamBinding`">`gcp.compute.RegionBackendServiceIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the regionbackendservice are preserved.
/// * <span pulumi-lang-nodejs="`gcp.compute.RegionBackendServiceIamMember`" pulumi-lang-dotnet="`gcp.compute.RegionBackendServiceIamMember`" pulumi-lang-go="`compute.RegionBackendServiceIamMember`" pulumi-lang-python="`compute.RegionBackendServiceIamMember`" pulumi-lang-yaml="`gcp.compute.RegionBackendServiceIamMember`" pulumi-lang-java="`gcp.compute.RegionBackendServiceIamMember`">`gcp.compute.RegionBackendServiceIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the regionbackendservice are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.compute.RegionBackendServiceIamPolicy`" pulumi-lang-dotnet="`gcp.compute.RegionBackendServiceIamPolicy`" pulumi-lang-go="`compute.RegionBackendServiceIamPolicy`" pulumi-lang-python="`compute.RegionBackendServiceIamPolicy`" pulumi-lang-yaml="`gcp.compute.RegionBackendServiceIamPolicy`" pulumi-lang-java="`gcp.compute.RegionBackendServiceIamPolicy`">`gcp.compute.RegionBackendServiceIamPolicy`</span>: Retrieves the IAM policy for the regionbackendservice
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.RegionBackendServiceIamPolicy`" pulumi-lang-dotnet="`gcp.compute.RegionBackendServiceIamPolicy`" pulumi-lang-go="`compute.RegionBackendServiceIamPolicy`" pulumi-lang-python="`compute.RegionBackendServiceIamPolicy`" pulumi-lang-yaml="`gcp.compute.RegionBackendServiceIamPolicy`" pulumi-lang-java="`gcp.compute.RegionBackendServiceIamPolicy`">`gcp.compute.RegionBackendServiceIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.RegionBackendServiceIamBinding`" pulumi-lang-dotnet="`gcp.compute.RegionBackendServiceIamBinding`" pulumi-lang-go="`compute.RegionBackendServiceIamBinding`" pulumi-lang-python="`compute.RegionBackendServiceIamBinding`" pulumi-lang-yaml="`gcp.compute.RegionBackendServiceIamBinding`" pulumi-lang-java="`gcp.compute.RegionBackendServiceIamBinding`">`gcp.compute.RegionBackendServiceIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.compute.RegionBackendServiceIamMember`" pulumi-lang-dotnet="`gcp.compute.RegionBackendServiceIamMember`" pulumi-lang-go="`compute.RegionBackendServiceIamMember`" pulumi-lang-python="`compute.RegionBackendServiceIamMember`" pulumi-lang-yaml="`gcp.compute.RegionBackendServiceIamMember`" pulumi-lang-java="`gcp.compute.RegionBackendServiceIamMember`">`gcp.compute.RegionBackendServiceIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.RegionBackendServiceIamBinding`" pulumi-lang-dotnet="`gcp.compute.RegionBackendServiceIamBinding`" pulumi-lang-go="`compute.RegionBackendServiceIamBinding`" pulumi-lang-python="`compute.RegionBackendServiceIamBinding`" pulumi-lang-yaml="`gcp.compute.RegionBackendServiceIamBinding`" pulumi-lang-java="`gcp.compute.RegionBackendServiceIamBinding`">`gcp.compute.RegionBackendServiceIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.RegionBackendServiceIamMember`" pulumi-lang-dotnet="`gcp.compute.RegionBackendServiceIamMember`" pulumi-lang-go="`compute.RegionBackendServiceIamMember`" pulumi-lang-python="`compute.RegionBackendServiceIamMember`" pulumi-lang-yaml="`gcp.compute.RegionBackendServiceIamMember`" pulumi-lang-java="`gcp.compute.RegionBackendServiceIamMember`">`gcp.compute.RegionBackendServiceIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
/// ##<span pulumi-lang-nodejs=" gcp.compute.RegionBackendServiceIamPolicy
/// " pulumi-lang-dotnet=" gcp.compute.RegionBackendServiceIamPolicy
/// " pulumi-lang-go=" compute.RegionBackendServiceIamPolicy
/// " pulumi-lang-python=" compute.RegionBackendServiceIamPolicy
/// " pulumi-lang-yaml=" gcp.compute.RegionBackendServiceIamPolicy
/// " pulumi-lang-java=" gcp.compute.RegionBackendServiceIamPolicy
/// "> gcp.compute.RegionBackendServiceIamPolicy
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
/// const policy = new gcp.compute.RegionBackendServiceIamPolicy("policy", {
/// project: _default.project,
/// region: _default.region,
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
/// policy = gcp.compute.RegionBackendServiceIamPolicy("policy",
/// project=default["project"],
/// region=default["region"],
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
/// var policy = new Gcp.Compute.RegionBackendServiceIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// Region = @default.Region,
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
/// _, err = compute.NewRegionBackendServiceIamPolicy(ctx, "policy", &compute.RegionBackendServiceIamPolicyArgs{
/// Project:    pulumi.Any(_default.Project),
/// Region:     pulumi.Any(_default.Region),
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
/// import com.pulumi.gcp.compute.RegionBackendServiceIamPolicy;
/// import com.pulumi.gcp.compute.RegionBackendServiceIamPolicyArgs;
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
/// var policy = new RegionBackendServiceIamPolicy("policy", RegionBackendServiceIamPolicyArgs.builder()
/// .project(default_.project())
/// .region(default_.region())
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
/// type: gcp:compute:RegionBackendServiceIamPolicy
/// properties:
/// project: ${default.project}
/// region: ${default.region}
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
/// const policy = new gcp.compute.RegionBackendServiceIamPolicy("policy", {
/// project: _default.project,
/// region: _default.region,
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
/// policy = gcp.compute.RegionBackendServiceIamPolicy("policy",
/// project=default["project"],
/// region=default["region"],
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
/// var policy = new Gcp.Compute.RegionBackendServiceIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// Region = @default.Region,
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
/// _, err = compute.NewRegionBackendServiceIamPolicy(ctx, "policy", &compute.RegionBackendServiceIamPolicyArgs{
/// Project:    pulumi.Any(_default.Project),
/// Region:     pulumi.Any(_default.Region),
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
/// import com.pulumi.gcp.compute.RegionBackendServiceIamPolicy;
/// import com.pulumi.gcp.compute.RegionBackendServiceIamPolicyArgs;
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
/// var policy = new RegionBackendServiceIamPolicy("policy", RegionBackendServiceIamPolicyArgs.builder()
/// .project(default_.project())
/// .region(default_.region())
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
/// type: gcp:compute:RegionBackendServiceIamPolicy
/// properties:
/// project: ${default.project}
/// region: ${default.region}
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
/// ##<span pulumi-lang-nodejs=" gcp.compute.RegionBackendServiceIamBinding
/// " pulumi-lang-dotnet=" gcp.compute.RegionBackendServiceIamBinding
/// " pulumi-lang-go=" compute.RegionBackendServiceIamBinding
/// " pulumi-lang-python=" compute.RegionBackendServiceIamBinding
/// " pulumi-lang-yaml=" gcp.compute.RegionBackendServiceIamBinding
/// " pulumi-lang-java=" gcp.compute.RegionBackendServiceIamBinding
/// "> gcp.compute.RegionBackendServiceIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.RegionBackendServiceIamBinding("binding", {
/// project: _default.project,
/// region: _default.region,
/// name: _default.name,
/// role: "roles/compute.admin",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.RegionBackendServiceIamBinding("binding",
/// project=default["project"],
/// region=default["region"],
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
/// var binding = new Gcp.Compute.RegionBackendServiceIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// Region = @default.Region,
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
/// _, err := compute.NewRegionBackendServiceIamBinding(ctx, "binding", &compute.RegionBackendServiceIamBindingArgs{
/// Project: pulumi.Any(_default.Project),
/// Region:  pulumi.Any(_default.Region),
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
/// import com.pulumi.gcp.compute.RegionBackendServiceIamBinding;
/// import com.pulumi.gcp.compute.RegionBackendServiceIamBindingArgs;
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
/// var binding = new RegionBackendServiceIamBinding("binding", RegionBackendServiceIamBindingArgs.builder()
/// .project(default_.project())
/// .region(default_.region())
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
/// type: gcp:compute:RegionBackendServiceIamBinding
/// properties:
/// project: ${default.project}
/// region: ${default.region}
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
/// const binding = new gcp.compute.RegionBackendServiceIamBinding("binding", {
/// project: _default.project,
/// region: _default.region,
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
/// binding = gcp.compute.RegionBackendServiceIamBinding("binding",
/// project=default["project"],
/// region=default["region"],
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
/// var binding = new Gcp.Compute.RegionBackendServiceIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// Region = @default.Region,
/// Name = @default.Name,
/// Role = "roles/compute.admin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Compute.Inputs.RegionBackendServiceIamBindingConditionArgs
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
/// _, err := compute.NewRegionBackendServiceIamBinding(ctx, "binding", &compute.RegionBackendServiceIamBindingArgs{
/// Project: pulumi.Any(_default.Project),
/// Region:  pulumi.Any(_default.Region),
/// Name:    pulumi.Any(_default.Name),
/// Role:    pulumi.String("roles/compute.admin"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &compute.RegionBackendServiceIamBindingConditionArgs{
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
/// import com.pulumi.gcp.compute.RegionBackendServiceIamBinding;
/// import com.pulumi.gcp.compute.RegionBackendServiceIamBindingArgs;
/// import com.pulumi.gcp.compute.inputs.RegionBackendServiceIamBindingConditionArgs;
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
/// var binding = new RegionBackendServiceIamBinding("binding", RegionBackendServiceIamBindingArgs.builder()
/// .project(default_.project())
/// .region(default_.region())
/// .name(default_.name())
/// .role("roles/compute.admin")
/// .members("user:jane@example.com")
/// .condition(RegionBackendServiceIamBindingConditionArgs.builder()
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
/// type: gcp:compute:RegionBackendServiceIamBinding
/// properties:
/// project: ${default.project}
/// region: ${default.region}
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
/// ##<span pulumi-lang-nodejs=" gcp.compute.RegionBackendServiceIamMember
/// " pulumi-lang-dotnet=" gcp.compute.RegionBackendServiceIamMember
/// " pulumi-lang-go=" compute.RegionBackendServiceIamMember
/// " pulumi-lang-python=" compute.RegionBackendServiceIamMember
/// " pulumi-lang-yaml=" gcp.compute.RegionBackendServiceIamMember
/// " pulumi-lang-java=" gcp.compute.RegionBackendServiceIamMember
/// "> gcp.compute.RegionBackendServiceIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.RegionBackendServiceIamMember("member", {
/// project: _default.project,
/// region: _default.region,
/// name: _default.name,
/// role: "roles/compute.admin",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.RegionBackendServiceIamMember("member",
/// project=default["project"],
/// region=default["region"],
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
/// var member = new Gcp.Compute.RegionBackendServiceIamMember("member", new()
/// {
/// Project = @default.Project,
/// Region = @default.Region,
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
/// _, err := compute.NewRegionBackendServiceIamMember(ctx, "member", &compute.RegionBackendServiceIamMemberArgs{
/// Project: pulumi.Any(_default.Project),
/// Region:  pulumi.Any(_default.Region),
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
/// import com.pulumi.gcp.compute.RegionBackendServiceIamMember;
/// import com.pulumi.gcp.compute.RegionBackendServiceIamMemberArgs;
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
/// var member = new RegionBackendServiceIamMember("member", RegionBackendServiceIamMemberArgs.builder()
/// .project(default_.project())
/// .region(default_.region())
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
/// type: gcp:compute:RegionBackendServiceIamMember
/// properties:
/// project: ${default.project}
/// region: ${default.region}
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
/// const member = new gcp.compute.RegionBackendServiceIamMember("member", {
/// project: _default.project,
/// region: _default.region,
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
/// member = gcp.compute.RegionBackendServiceIamMember("member",
/// project=default["project"],
/// region=default["region"],
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
/// var member = new Gcp.Compute.RegionBackendServiceIamMember("member", new()
/// {
/// Project = @default.Project,
/// Region = @default.Region,
/// Name = @default.Name,
/// Role = "roles/compute.admin",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Compute.Inputs.RegionBackendServiceIamMemberConditionArgs
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
/// _, err := compute.NewRegionBackendServiceIamMember(ctx, "member", &compute.RegionBackendServiceIamMemberArgs{
/// Project: pulumi.Any(_default.Project),
/// Region:  pulumi.Any(_default.Region),
/// Name:    pulumi.Any(_default.Name),
/// Role:    pulumi.String("roles/compute.admin"),
/// Member:  pulumi.String("user:jane@example.com"),
/// Condition: &compute.RegionBackendServiceIamMemberConditionArgs{
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
/// import com.pulumi.gcp.compute.RegionBackendServiceIamMember;
/// import com.pulumi.gcp.compute.RegionBackendServiceIamMemberArgs;
/// import com.pulumi.gcp.compute.inputs.RegionBackendServiceIamMemberConditionArgs;
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
/// var member = new RegionBackendServiceIamMember("member", RegionBackendServiceIamMemberArgs.builder()
/// .project(default_.project())
/// .region(default_.region())
/// .name(default_.name())
/// .role("roles/compute.admin")
/// .member("user:jane@example.com")
/// .condition(RegionBackendServiceIamMemberConditionArgs.builder()
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
/// type: gcp:compute:RegionBackendServiceIamMember
/// properties:
/// project: ${default.project}
/// region: ${default.region}
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
/// * projects/{{project}}/regions/{{region}}/backendServices/{{name}}
///
/// * {{project}}/{{region}}/{{name}}
///
/// * {{region}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Compute Engine regionbackendservice IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/regionBackendServiceIamPolicy:RegionBackendServiceIamPolicy editor "projects/{{project}}/regions/{{region}}/backendServices/{{region_backend_service}} roles/compute.admin user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/regionBackendServiceIamPolicy:RegionBackendServiceIamPolicy editor "projects/{{project}}/regions/{{region}}/backendServices/{{region_backend_service}} roles/compute.admin"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/regionBackendServiceIamPolicy:RegionBackendServiceIamPolicy editor projects/{{project}}/regions/{{region}}/backendServices/{{region_backend_service}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class RegionBackendServiceIamPolicy extends CustomResource {
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

  /// The Region in which the created backend service should reside.
  /// If it is not provided, the provider region is used.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  late final Output<String> region;

  RegionBackendServiceIamPolicy(
    String name, {
    RegionBackendServiceIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionBackendServiceIamPolicy:RegionBackendServiceIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.policyData = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
