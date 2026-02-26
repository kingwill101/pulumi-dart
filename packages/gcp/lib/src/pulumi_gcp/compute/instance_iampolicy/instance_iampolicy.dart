import 'package:pulumi/pulumi.dart';
import 'instance_iampolicy_args.dart';

/// Three different resources help you manage your IAM policy for Compute Engine Instance. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.compute.InstanceIAMPolicy`" pulumi-lang-dotnet="`gcp.compute.InstanceIAMPolicy`" pulumi-lang-go="`compute.InstanceIAMPolicy`" pulumi-lang-python="`compute.InstanceIAMPolicy`" pulumi-lang-yaml="`gcp.compute.InstanceIAMPolicy`" pulumi-lang-java="`gcp.compute.InstanceIAMPolicy`">`gcp.compute.InstanceIAMPolicy`</span>: Authoritative. Sets the IAM policy for the instance and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.compute.InstanceIAMBinding`" pulumi-lang-dotnet="`gcp.compute.InstanceIAMBinding`" pulumi-lang-go="`compute.InstanceIAMBinding`" pulumi-lang-python="`compute.InstanceIAMBinding`" pulumi-lang-yaml="`gcp.compute.InstanceIAMBinding`" pulumi-lang-java="`gcp.compute.InstanceIAMBinding`">`gcp.compute.InstanceIAMBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the instance are preserved.
/// * <span pulumi-lang-nodejs="`gcp.compute.InstanceIAMMember`" pulumi-lang-dotnet="`gcp.compute.InstanceIAMMember`" pulumi-lang-go="`compute.InstanceIAMMember`" pulumi-lang-python="`compute.InstanceIAMMember`" pulumi-lang-yaml="`gcp.compute.InstanceIAMMember`" pulumi-lang-java="`gcp.compute.InstanceIAMMember`">`gcp.compute.InstanceIAMMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the instance are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.compute.InstanceIAMPolicy`" pulumi-lang-dotnet="`gcp.compute.InstanceIAMPolicy`" pulumi-lang-go="`compute.InstanceIAMPolicy`" pulumi-lang-python="`compute.InstanceIAMPolicy`" pulumi-lang-yaml="`gcp.compute.InstanceIAMPolicy`" pulumi-lang-java="`gcp.compute.InstanceIAMPolicy`">`gcp.compute.InstanceIAMPolicy`</span>: Retrieves the IAM policy for the instance
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.InstanceIAMPolicy`" pulumi-lang-dotnet="`gcp.compute.InstanceIAMPolicy`" pulumi-lang-go="`compute.InstanceIAMPolicy`" pulumi-lang-python="`compute.InstanceIAMPolicy`" pulumi-lang-yaml="`gcp.compute.InstanceIAMPolicy`" pulumi-lang-java="`gcp.compute.InstanceIAMPolicy`">`gcp.compute.InstanceIAMPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.InstanceIAMBinding`" pulumi-lang-dotnet="`gcp.compute.InstanceIAMBinding`" pulumi-lang-go="`compute.InstanceIAMBinding`" pulumi-lang-python="`compute.InstanceIAMBinding`" pulumi-lang-yaml="`gcp.compute.InstanceIAMBinding`" pulumi-lang-java="`gcp.compute.InstanceIAMBinding`">`gcp.compute.InstanceIAMBinding`</span> and <span pulumi-lang-nodejs="`gcp.compute.InstanceIAMMember`" pulumi-lang-dotnet="`gcp.compute.InstanceIAMMember`" pulumi-lang-go="`compute.InstanceIAMMember`" pulumi-lang-python="`compute.InstanceIAMMember`" pulumi-lang-yaml="`gcp.compute.InstanceIAMMember`" pulumi-lang-java="`gcp.compute.InstanceIAMMember`">`gcp.compute.InstanceIAMMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.InstanceIAMBinding`" pulumi-lang-dotnet="`gcp.compute.InstanceIAMBinding`" pulumi-lang-go="`compute.InstanceIAMBinding`" pulumi-lang-python="`compute.InstanceIAMBinding`" pulumi-lang-yaml="`gcp.compute.InstanceIAMBinding`" pulumi-lang-java="`gcp.compute.InstanceIAMBinding`">`gcp.compute.InstanceIAMBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.InstanceIAMMember`" pulumi-lang-dotnet="`gcp.compute.InstanceIAMMember`" pulumi-lang-go="`compute.InstanceIAMMember`" pulumi-lang-python="`compute.InstanceIAMMember`" pulumi-lang-yaml="`gcp.compute.InstanceIAMMember`" pulumi-lang-java="`gcp.compute.InstanceIAMMember`">`gcp.compute.InstanceIAMMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.compute.InstanceIAMPolicy
/// " pulumi-lang-dotnet=" gcp.compute.InstanceIAMPolicy
/// " pulumi-lang-go=" compute.InstanceIAMPolicy
/// " pulumi-lang-python=" compute.InstanceIAMPolicy
/// " pulumi-lang-yaml=" gcp.compute.InstanceIAMPolicy
/// " pulumi-lang-java=" gcp.compute.InstanceIAMPolicy
/// "> gcp.compute.InstanceIAMPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/compute.osLogin",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.compute.InstanceIAMPolicy("policy", {
/// project: _default.project,
/// zone: _default.zone,
/// instanceName: _default.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/compute.osLogin",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.compute.InstanceIAMPolicy("policy",
/// project=default["project"],
/// zone=default["zone"],
/// instance_name=default["name"],
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
/// Role = "roles/compute.osLogin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Compute.InstanceIAMPolicy("policy", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
/// InstanceName = @default.Name,
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
/// Role: "roles/compute.osLogin",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewInstanceIAMPolicy(ctx, "policy", &compute.InstanceIAMPolicyArgs{
/// Project:      pulumi.Any(_default.Project),
/// Zone:         pulumi.Any(_default.Zone),
/// InstanceName: pulumi.Any(_default.Name),
/// PolicyData:   pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.compute.InstanceIAMPolicy;
/// import com.pulumi.gcp.compute.InstanceIAMPolicyArgs;
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
/// .role("roles/compute.osLogin")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new InstanceIAMPolicy("policy", InstanceIAMPolicyArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
/// .instanceName(default_.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:compute:InstanceIAMPolicy
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
/// instanceName: ${default.name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/compute.osLogin
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
/// role: "roles/compute.osLogin",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const policy = new gcp.compute.InstanceIAMPolicy("policy", {
/// project: _default.project,
/// zone: _default.zone,
/// instanceName: _default.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/compute.osLogin",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }])
/// policy = gcp.compute.InstanceIAMPolicy("policy",
/// project=default["project"],
/// zone=default["zone"],
/// instance_name=default["name"],
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
/// Role = "roles/compute.osLogin",
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
/// var policy = new Gcp.Compute.InstanceIAMPolicy("policy", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
/// InstanceName = @default.Name,
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
/// Role: "roles/compute.osLogin",
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
/// _, err = compute.NewInstanceIAMPolicy(ctx, "policy", &compute.InstanceIAMPolicyArgs{
/// Project:      pulumi.Any(_default.Project),
/// Zone:         pulumi.Any(_default.Zone),
/// InstanceName: pulumi.Any(_default.Name),
/// PolicyData:   pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.compute.InstanceIAMPolicy;
/// import com.pulumi.gcp.compute.InstanceIAMPolicyArgs;
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
/// .role("roles/compute.osLogin")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var policy = new InstanceIAMPolicy("policy", InstanceIAMPolicyArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
/// .instanceName(default_.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:compute:InstanceIAMPolicy
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
/// instanceName: ${default.name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/compute.osLogin
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.compute.InstanceIAMBinding
/// " pulumi-lang-dotnet=" gcp.compute.InstanceIAMBinding
/// " pulumi-lang-go=" compute.InstanceIAMBinding
/// " pulumi-lang-python=" compute.InstanceIAMBinding
/// " pulumi-lang-yaml=" gcp.compute.InstanceIAMBinding
/// " pulumi-lang-java=" gcp.compute.InstanceIAMBinding
/// "> gcp.compute.InstanceIAMBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.InstanceIAMBinding("binding", {
/// project: _default.project,
/// zone: _default.zone,
/// instanceName: _default.name,
/// role: "roles/compute.osLogin",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.InstanceIAMBinding("binding",
/// project=default["project"],
/// zone=default["zone"],
/// instance_name=default["name"],
/// role="roles/compute.osLogin",
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
/// var binding = new Gcp.Compute.InstanceIAMBinding("binding", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
/// InstanceName = @default.Name,
/// Role = "roles/compute.osLogin",
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
/// _, err := compute.NewInstanceIAMBinding(ctx, "binding", &compute.InstanceIAMBindingArgs{
/// Project:      pulumi.Any(_default.Project),
/// Zone:         pulumi.Any(_default.Zone),
/// InstanceName: pulumi.Any(_default.Name),
/// Role:         pulumi.String("roles/compute.osLogin"),
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
/// import com.pulumi.gcp.compute.InstanceIAMBinding;
/// import com.pulumi.gcp.compute.InstanceIAMBindingArgs;
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
/// var binding = new InstanceIAMBinding("binding", InstanceIAMBindingArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
/// .instanceName(default_.name())
/// .role("roles/compute.osLogin")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:compute:InstanceIAMBinding
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
/// instanceName: ${default.name}
/// role: roles/compute.osLogin
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
/// const binding = new gcp.compute.InstanceIAMBinding("binding", {
/// project: _default.project,
/// zone: _default.zone,
/// instanceName: _default.name,
/// role: "roles/compute.osLogin",
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
/// binding = gcp.compute.InstanceIAMBinding("binding",
/// project=default["project"],
/// zone=default["zone"],
/// instance_name=default["name"],
/// role="roles/compute.osLogin",
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
/// var binding = new Gcp.Compute.InstanceIAMBinding("binding", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
/// InstanceName = @default.Name,
/// Role = "roles/compute.osLogin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Compute.Inputs.InstanceIAMBindingConditionArgs
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
/// _, err := compute.NewInstanceIAMBinding(ctx, "binding", &compute.InstanceIAMBindingArgs{
/// Project:      pulumi.Any(_default.Project),
/// Zone:         pulumi.Any(_default.Zone),
/// InstanceName: pulumi.Any(_default.Name),
/// Role:         pulumi.String("roles/compute.osLogin"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &compute.InstanceIAMBindingConditionArgs{
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
/// import com.pulumi.gcp.compute.InstanceIAMBinding;
/// import com.pulumi.gcp.compute.InstanceIAMBindingArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceIAMBindingConditionArgs;
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
/// var binding = new InstanceIAMBinding("binding", InstanceIAMBindingArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
/// .instanceName(default_.name())
/// .role("roles/compute.osLogin")
/// .members("user:jane@example.com")
/// .condition(InstanceIAMBindingConditionArgs.builder()
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
/// type: gcp:compute:InstanceIAMBinding
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
/// instanceName: ${default.name}
/// role: roles/compute.osLogin
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.compute.InstanceIAMMember
/// " pulumi-lang-dotnet=" gcp.compute.InstanceIAMMember
/// " pulumi-lang-go=" compute.InstanceIAMMember
/// " pulumi-lang-python=" compute.InstanceIAMMember
/// " pulumi-lang-yaml=" gcp.compute.InstanceIAMMember
/// " pulumi-lang-java=" gcp.compute.InstanceIAMMember
/// "> gcp.compute.InstanceIAMMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.InstanceIAMMember("member", {
/// project: _default.project,
/// zone: _default.zone,
/// instanceName: _default.name,
/// role: "roles/compute.osLogin",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.InstanceIAMMember("member",
/// project=default["project"],
/// zone=default["zone"],
/// instance_name=default["name"],
/// role="roles/compute.osLogin",
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
/// var member = new Gcp.Compute.InstanceIAMMember("member", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
/// InstanceName = @default.Name,
/// Role = "roles/compute.osLogin",
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
/// _, err := compute.NewInstanceIAMMember(ctx, "member", &compute.InstanceIAMMemberArgs{
/// Project:      pulumi.Any(_default.Project),
/// Zone:         pulumi.Any(_default.Zone),
/// InstanceName: pulumi.Any(_default.Name),
/// Role:         pulumi.String("roles/compute.osLogin"),
/// Member:       pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.compute.InstanceIAMMember;
/// import com.pulumi.gcp.compute.InstanceIAMMemberArgs;
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
/// var member = new InstanceIAMMember("member", InstanceIAMMemberArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
/// .instanceName(default_.name())
/// .role("roles/compute.osLogin")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:compute:InstanceIAMMember
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
/// instanceName: ${default.name}
/// role: roles/compute.osLogin
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
/// const member = new gcp.compute.InstanceIAMMember("member", {
/// project: _default.project,
/// zone: _default.zone,
/// instanceName: _default.name,
/// role: "roles/compute.osLogin",
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
/// member = gcp.compute.InstanceIAMMember("member",
/// project=default["project"],
/// zone=default["zone"],
/// instance_name=default["name"],
/// role="roles/compute.osLogin",
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
/// var member = new Gcp.Compute.InstanceIAMMember("member", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
/// InstanceName = @default.Name,
/// Role = "roles/compute.osLogin",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Compute.Inputs.InstanceIAMMemberConditionArgs
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
/// _, err := compute.NewInstanceIAMMember(ctx, "member", &compute.InstanceIAMMemberArgs{
/// Project:      pulumi.Any(_default.Project),
/// Zone:         pulumi.Any(_default.Zone),
/// InstanceName: pulumi.Any(_default.Name),
/// Role:         pulumi.String("roles/compute.osLogin"),
/// Member:       pulumi.String("user:jane@example.com"),
/// Condition: &compute.InstanceIAMMemberConditionArgs{
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
/// import com.pulumi.gcp.compute.InstanceIAMMember;
/// import com.pulumi.gcp.compute.InstanceIAMMemberArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceIAMMemberConditionArgs;
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
/// var member = new InstanceIAMMember("member", InstanceIAMMemberArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
/// .instanceName(default_.name())
/// .role("roles/compute.osLogin")
/// .member("user:jane@example.com")
/// .condition(InstanceIAMMemberConditionArgs.builder()
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
/// type: gcp:compute:InstanceIAMMember
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
/// instanceName: ${default.name}
/// role: roles/compute.osLogin
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
/// # IAM policy for Compute Engine Instance
///
/// Three different resources help you manage your IAM policy for Compute Engine Instance. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.compute.InstanceIAMPolicy`" pulumi-lang-dotnet="`gcp.compute.InstanceIAMPolicy`" pulumi-lang-go="`compute.InstanceIAMPolicy`" pulumi-lang-python="`compute.InstanceIAMPolicy`" pulumi-lang-yaml="`gcp.compute.InstanceIAMPolicy`" pulumi-lang-java="`gcp.compute.InstanceIAMPolicy`">`gcp.compute.InstanceIAMPolicy`</span>: Authoritative. Sets the IAM policy for the instance and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.compute.InstanceIAMBinding`" pulumi-lang-dotnet="`gcp.compute.InstanceIAMBinding`" pulumi-lang-go="`compute.InstanceIAMBinding`" pulumi-lang-python="`compute.InstanceIAMBinding`" pulumi-lang-yaml="`gcp.compute.InstanceIAMBinding`" pulumi-lang-java="`gcp.compute.InstanceIAMBinding`">`gcp.compute.InstanceIAMBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the instance are preserved.
/// * <span pulumi-lang-nodejs="`gcp.compute.InstanceIAMMember`" pulumi-lang-dotnet="`gcp.compute.InstanceIAMMember`" pulumi-lang-go="`compute.InstanceIAMMember`" pulumi-lang-python="`compute.InstanceIAMMember`" pulumi-lang-yaml="`gcp.compute.InstanceIAMMember`" pulumi-lang-java="`gcp.compute.InstanceIAMMember`">`gcp.compute.InstanceIAMMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the instance are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.compute.InstanceIAMPolicy`" pulumi-lang-dotnet="`gcp.compute.InstanceIAMPolicy`" pulumi-lang-go="`compute.InstanceIAMPolicy`" pulumi-lang-python="`compute.InstanceIAMPolicy`" pulumi-lang-yaml="`gcp.compute.InstanceIAMPolicy`" pulumi-lang-java="`gcp.compute.InstanceIAMPolicy`">`gcp.compute.InstanceIAMPolicy`</span>: Retrieves the IAM policy for the instance
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.InstanceIAMPolicy`" pulumi-lang-dotnet="`gcp.compute.InstanceIAMPolicy`" pulumi-lang-go="`compute.InstanceIAMPolicy`" pulumi-lang-python="`compute.InstanceIAMPolicy`" pulumi-lang-yaml="`gcp.compute.InstanceIAMPolicy`" pulumi-lang-java="`gcp.compute.InstanceIAMPolicy`">`gcp.compute.InstanceIAMPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.InstanceIAMBinding`" pulumi-lang-dotnet="`gcp.compute.InstanceIAMBinding`" pulumi-lang-go="`compute.InstanceIAMBinding`" pulumi-lang-python="`compute.InstanceIAMBinding`" pulumi-lang-yaml="`gcp.compute.InstanceIAMBinding`" pulumi-lang-java="`gcp.compute.InstanceIAMBinding`">`gcp.compute.InstanceIAMBinding`</span> and <span pulumi-lang-nodejs="`gcp.compute.InstanceIAMMember`" pulumi-lang-dotnet="`gcp.compute.InstanceIAMMember`" pulumi-lang-go="`compute.InstanceIAMMember`" pulumi-lang-python="`compute.InstanceIAMMember`" pulumi-lang-yaml="`gcp.compute.InstanceIAMMember`" pulumi-lang-java="`gcp.compute.InstanceIAMMember`">`gcp.compute.InstanceIAMMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.InstanceIAMBinding`" pulumi-lang-dotnet="`gcp.compute.InstanceIAMBinding`" pulumi-lang-go="`compute.InstanceIAMBinding`" pulumi-lang-python="`compute.InstanceIAMBinding`" pulumi-lang-yaml="`gcp.compute.InstanceIAMBinding`" pulumi-lang-java="`gcp.compute.InstanceIAMBinding`">`gcp.compute.InstanceIAMBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.InstanceIAMMember`" pulumi-lang-dotnet="`gcp.compute.InstanceIAMMember`" pulumi-lang-go="`compute.InstanceIAMMember`" pulumi-lang-python="`compute.InstanceIAMMember`" pulumi-lang-yaml="`gcp.compute.InstanceIAMMember`" pulumi-lang-java="`gcp.compute.InstanceIAMMember`">`gcp.compute.InstanceIAMMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.compute.InstanceIAMPolicy
/// " pulumi-lang-dotnet=" gcp.compute.InstanceIAMPolicy
/// " pulumi-lang-go=" compute.InstanceIAMPolicy
/// " pulumi-lang-python=" compute.InstanceIAMPolicy
/// " pulumi-lang-yaml=" gcp.compute.InstanceIAMPolicy
/// " pulumi-lang-java=" gcp.compute.InstanceIAMPolicy
/// "> gcp.compute.InstanceIAMPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/compute.osLogin",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.compute.InstanceIAMPolicy("policy", {
/// project: _default.project,
/// zone: _default.zone,
/// instanceName: _default.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/compute.osLogin",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.compute.InstanceIAMPolicy("policy",
/// project=default["project"],
/// zone=default["zone"],
/// instance_name=default["name"],
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
/// Role = "roles/compute.osLogin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Compute.InstanceIAMPolicy("policy", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
/// InstanceName = @default.Name,
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
/// Role: "roles/compute.osLogin",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewInstanceIAMPolicy(ctx, "policy", &compute.InstanceIAMPolicyArgs{
/// Project:      pulumi.Any(_default.Project),
/// Zone:         pulumi.Any(_default.Zone),
/// InstanceName: pulumi.Any(_default.Name),
/// PolicyData:   pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.compute.InstanceIAMPolicy;
/// import com.pulumi.gcp.compute.InstanceIAMPolicyArgs;
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
/// .role("roles/compute.osLogin")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new InstanceIAMPolicy("policy", InstanceIAMPolicyArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
/// .instanceName(default_.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:compute:InstanceIAMPolicy
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
/// instanceName: ${default.name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/compute.osLogin
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
/// role: "roles/compute.osLogin",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const policy = new gcp.compute.InstanceIAMPolicy("policy", {
/// project: _default.project,
/// zone: _default.zone,
/// instanceName: _default.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/compute.osLogin",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }])
/// policy = gcp.compute.InstanceIAMPolicy("policy",
/// project=default["project"],
/// zone=default["zone"],
/// instance_name=default["name"],
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
/// Role = "roles/compute.osLogin",
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
/// var policy = new Gcp.Compute.InstanceIAMPolicy("policy", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
/// InstanceName = @default.Name,
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
/// Role: "roles/compute.osLogin",
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
/// _, err = compute.NewInstanceIAMPolicy(ctx, "policy", &compute.InstanceIAMPolicyArgs{
/// Project:      pulumi.Any(_default.Project),
/// Zone:         pulumi.Any(_default.Zone),
/// InstanceName: pulumi.Any(_default.Name),
/// PolicyData:   pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.compute.InstanceIAMPolicy;
/// import com.pulumi.gcp.compute.InstanceIAMPolicyArgs;
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
/// .role("roles/compute.osLogin")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var policy = new InstanceIAMPolicy("policy", InstanceIAMPolicyArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
/// .instanceName(default_.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:compute:InstanceIAMPolicy
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
/// instanceName: ${default.name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/compute.osLogin
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.compute.InstanceIAMBinding
/// " pulumi-lang-dotnet=" gcp.compute.InstanceIAMBinding
/// " pulumi-lang-go=" compute.InstanceIAMBinding
/// " pulumi-lang-python=" compute.InstanceIAMBinding
/// " pulumi-lang-yaml=" gcp.compute.InstanceIAMBinding
/// " pulumi-lang-java=" gcp.compute.InstanceIAMBinding
/// "> gcp.compute.InstanceIAMBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.InstanceIAMBinding("binding", {
/// project: _default.project,
/// zone: _default.zone,
/// instanceName: _default.name,
/// role: "roles/compute.osLogin",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.InstanceIAMBinding("binding",
/// project=default["project"],
/// zone=default["zone"],
/// instance_name=default["name"],
/// role="roles/compute.osLogin",
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
/// var binding = new Gcp.Compute.InstanceIAMBinding("binding", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
/// InstanceName = @default.Name,
/// Role = "roles/compute.osLogin",
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
/// _, err := compute.NewInstanceIAMBinding(ctx, "binding", &compute.InstanceIAMBindingArgs{
/// Project:      pulumi.Any(_default.Project),
/// Zone:         pulumi.Any(_default.Zone),
/// InstanceName: pulumi.Any(_default.Name),
/// Role:         pulumi.String("roles/compute.osLogin"),
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
/// import com.pulumi.gcp.compute.InstanceIAMBinding;
/// import com.pulumi.gcp.compute.InstanceIAMBindingArgs;
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
/// var binding = new InstanceIAMBinding("binding", InstanceIAMBindingArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
/// .instanceName(default_.name())
/// .role("roles/compute.osLogin")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:compute:InstanceIAMBinding
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
/// instanceName: ${default.name}
/// role: roles/compute.osLogin
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
/// const binding = new gcp.compute.InstanceIAMBinding("binding", {
/// project: _default.project,
/// zone: _default.zone,
/// instanceName: _default.name,
/// role: "roles/compute.osLogin",
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
/// binding = gcp.compute.InstanceIAMBinding("binding",
/// project=default["project"],
/// zone=default["zone"],
/// instance_name=default["name"],
/// role="roles/compute.osLogin",
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
/// var binding = new Gcp.Compute.InstanceIAMBinding("binding", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
/// InstanceName = @default.Name,
/// Role = "roles/compute.osLogin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Compute.Inputs.InstanceIAMBindingConditionArgs
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
/// _, err := compute.NewInstanceIAMBinding(ctx, "binding", &compute.InstanceIAMBindingArgs{
/// Project:      pulumi.Any(_default.Project),
/// Zone:         pulumi.Any(_default.Zone),
/// InstanceName: pulumi.Any(_default.Name),
/// Role:         pulumi.String("roles/compute.osLogin"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &compute.InstanceIAMBindingConditionArgs{
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
/// import com.pulumi.gcp.compute.InstanceIAMBinding;
/// import com.pulumi.gcp.compute.InstanceIAMBindingArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceIAMBindingConditionArgs;
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
/// var binding = new InstanceIAMBinding("binding", InstanceIAMBindingArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
/// .instanceName(default_.name())
/// .role("roles/compute.osLogin")
/// .members("user:jane@example.com")
/// .condition(InstanceIAMBindingConditionArgs.builder()
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
/// type: gcp:compute:InstanceIAMBinding
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
/// instanceName: ${default.name}
/// role: roles/compute.osLogin
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.compute.InstanceIAMMember
/// " pulumi-lang-dotnet=" gcp.compute.InstanceIAMMember
/// " pulumi-lang-go=" compute.InstanceIAMMember
/// " pulumi-lang-python=" compute.InstanceIAMMember
/// " pulumi-lang-yaml=" gcp.compute.InstanceIAMMember
/// " pulumi-lang-java=" gcp.compute.InstanceIAMMember
/// "> gcp.compute.InstanceIAMMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.InstanceIAMMember("member", {
/// project: _default.project,
/// zone: _default.zone,
/// instanceName: _default.name,
/// role: "roles/compute.osLogin",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.InstanceIAMMember("member",
/// project=default["project"],
/// zone=default["zone"],
/// instance_name=default["name"],
/// role="roles/compute.osLogin",
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
/// var member = new Gcp.Compute.InstanceIAMMember("member", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
/// InstanceName = @default.Name,
/// Role = "roles/compute.osLogin",
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
/// _, err := compute.NewInstanceIAMMember(ctx, "member", &compute.InstanceIAMMemberArgs{
/// Project:      pulumi.Any(_default.Project),
/// Zone:         pulumi.Any(_default.Zone),
/// InstanceName: pulumi.Any(_default.Name),
/// Role:         pulumi.String("roles/compute.osLogin"),
/// Member:       pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.compute.InstanceIAMMember;
/// import com.pulumi.gcp.compute.InstanceIAMMemberArgs;
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
/// var member = new InstanceIAMMember("member", InstanceIAMMemberArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
/// .instanceName(default_.name())
/// .role("roles/compute.osLogin")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:compute:InstanceIAMMember
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
/// instanceName: ${default.name}
/// role: roles/compute.osLogin
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
/// const member = new gcp.compute.InstanceIAMMember("member", {
/// project: _default.project,
/// zone: _default.zone,
/// instanceName: _default.name,
/// role: "roles/compute.osLogin",
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
/// member = gcp.compute.InstanceIAMMember("member",
/// project=default["project"],
/// zone=default["zone"],
/// instance_name=default["name"],
/// role="roles/compute.osLogin",
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
/// var member = new Gcp.Compute.InstanceIAMMember("member", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
/// InstanceName = @default.Name,
/// Role = "roles/compute.osLogin",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Compute.Inputs.InstanceIAMMemberConditionArgs
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
/// _, err := compute.NewInstanceIAMMember(ctx, "member", &compute.InstanceIAMMemberArgs{
/// Project:      pulumi.Any(_default.Project),
/// Zone:         pulumi.Any(_default.Zone),
/// InstanceName: pulumi.Any(_default.Name),
/// Role:         pulumi.String("roles/compute.osLogin"),
/// Member:       pulumi.String("user:jane@example.com"),
/// Condition: &compute.InstanceIAMMemberConditionArgs{
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
/// import com.pulumi.gcp.compute.InstanceIAMMember;
/// import com.pulumi.gcp.compute.InstanceIAMMemberArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceIAMMemberConditionArgs;
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
/// var member = new InstanceIAMMember("member", InstanceIAMMemberArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
/// .instanceName(default_.name())
/// .role("roles/compute.osLogin")
/// .member("user:jane@example.com")
/// .condition(InstanceIAMMemberConditionArgs.builder()
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
/// type: gcp:compute:InstanceIAMMember
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
/// instanceName: ${default.name}
/// role: roles/compute.osLogin
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
/// * projects/{{project}}/zones/{{zone}}/instances/{{name}}
///
/// * {{project}}/{{zone}}/{{name}}
///
/// * {{zone}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Compute Engine instance IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/instanceIAMPolicy:InstanceIAMPolicy editor "projects/{{project}}/zones/{{zone}}/instances/{{instance}} roles/compute.osLogin user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/instanceIAMPolicy:InstanceIAMPolicy editor "projects/{{project}}/zones/{{zone}}/instances/{{instance}} roles/compute.osLogin"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/instanceIAMPolicy:InstanceIAMPolicy editor projects/{{project}}/zones/{{zone}}/instances/{{instance}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class InstanceIAMPolicy extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> instanceName;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// A reference to the zone where the machine resides. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no zone is provided in the parent identifier and no
  /// zone is specified, it is taken from the provider configuration.
  late final Output<String> zone;

  InstanceIAMPolicy(
    String name, {
    InstanceIAMPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instanceIAMPolicy:InstanceIAMPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.instanceName = registerOutput<String>('instanceName');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.zone = registerOutput<String>('zone');
  }
}
