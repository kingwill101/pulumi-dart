import 'package:pulumi/pulumi.dart';
import 'instant_snapshot_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Compute Engine InstantSnapshot. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.compute.InstantSnapshotIamPolicy`" pulumi-lang-dotnet="`gcp.compute.InstantSnapshotIamPolicy`" pulumi-lang-go="`compute.InstantSnapshotIamPolicy`" pulumi-lang-python="`compute.InstantSnapshotIamPolicy`" pulumi-lang-yaml="`gcp.compute.InstantSnapshotIamPolicy`" pulumi-lang-java="`gcp.compute.InstantSnapshotIamPolicy`">`gcp.compute.InstantSnapshotIamPolicy`</span>: Authoritative. Sets the IAM policy for the instantsnapshot and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.compute.InstantSnapshotIamBinding`" pulumi-lang-dotnet="`gcp.compute.InstantSnapshotIamBinding`" pulumi-lang-go="`compute.InstantSnapshotIamBinding`" pulumi-lang-python="`compute.InstantSnapshotIamBinding`" pulumi-lang-yaml="`gcp.compute.InstantSnapshotIamBinding`" pulumi-lang-java="`gcp.compute.InstantSnapshotIamBinding`">`gcp.compute.InstantSnapshotIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the instantsnapshot are preserved.
/// * <span pulumi-lang-nodejs="`gcp.compute.InstantSnapshotIamMember`" pulumi-lang-dotnet="`gcp.compute.InstantSnapshotIamMember`" pulumi-lang-go="`compute.InstantSnapshotIamMember`" pulumi-lang-python="`compute.InstantSnapshotIamMember`" pulumi-lang-yaml="`gcp.compute.InstantSnapshotIamMember`" pulumi-lang-java="`gcp.compute.InstantSnapshotIamMember`">`gcp.compute.InstantSnapshotIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the instantsnapshot are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.compute.InstantSnapshotIamPolicy`" pulumi-lang-dotnet="`gcp.compute.InstantSnapshotIamPolicy`" pulumi-lang-go="`compute.InstantSnapshotIamPolicy`" pulumi-lang-python="`compute.InstantSnapshotIamPolicy`" pulumi-lang-yaml="`gcp.compute.InstantSnapshotIamPolicy`" pulumi-lang-java="`gcp.compute.InstantSnapshotIamPolicy`">`gcp.compute.InstantSnapshotIamPolicy`</span>: Retrieves the IAM policy for the instantsnapshot
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.InstantSnapshotIamPolicy`" pulumi-lang-dotnet="`gcp.compute.InstantSnapshotIamPolicy`" pulumi-lang-go="`compute.InstantSnapshotIamPolicy`" pulumi-lang-python="`compute.InstantSnapshotIamPolicy`" pulumi-lang-yaml="`gcp.compute.InstantSnapshotIamPolicy`" pulumi-lang-java="`gcp.compute.InstantSnapshotIamPolicy`">`gcp.compute.InstantSnapshotIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.InstantSnapshotIamBinding`" pulumi-lang-dotnet="`gcp.compute.InstantSnapshotIamBinding`" pulumi-lang-go="`compute.InstantSnapshotIamBinding`" pulumi-lang-python="`compute.InstantSnapshotIamBinding`" pulumi-lang-yaml="`gcp.compute.InstantSnapshotIamBinding`" pulumi-lang-java="`gcp.compute.InstantSnapshotIamBinding`">`gcp.compute.InstantSnapshotIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.compute.InstantSnapshotIamMember`" pulumi-lang-dotnet="`gcp.compute.InstantSnapshotIamMember`" pulumi-lang-go="`compute.InstantSnapshotIamMember`" pulumi-lang-python="`compute.InstantSnapshotIamMember`" pulumi-lang-yaml="`gcp.compute.InstantSnapshotIamMember`" pulumi-lang-java="`gcp.compute.InstantSnapshotIamMember`">`gcp.compute.InstantSnapshotIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.InstantSnapshotIamBinding`" pulumi-lang-dotnet="`gcp.compute.InstantSnapshotIamBinding`" pulumi-lang-go="`compute.InstantSnapshotIamBinding`" pulumi-lang-python="`compute.InstantSnapshotIamBinding`" pulumi-lang-yaml="`gcp.compute.InstantSnapshotIamBinding`" pulumi-lang-java="`gcp.compute.InstantSnapshotIamBinding`">`gcp.compute.InstantSnapshotIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.InstantSnapshotIamMember`" pulumi-lang-dotnet="`gcp.compute.InstantSnapshotIamMember`" pulumi-lang-go="`compute.InstantSnapshotIamMember`" pulumi-lang-python="`compute.InstantSnapshotIamMember`" pulumi-lang-yaml="`gcp.compute.InstantSnapshotIamMember`" pulumi-lang-java="`gcp.compute.InstantSnapshotIamMember`">`gcp.compute.InstantSnapshotIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.compute.InstantSnapshotIamPolicy
/// " pulumi-lang-dotnet=" gcp.compute.InstantSnapshotIamPolicy
/// " pulumi-lang-go=" compute.InstantSnapshotIamPolicy
/// " pulumi-lang-python=" compute.InstantSnapshotIamPolicy
/// " pulumi-lang-yaml=" gcp.compute.InstantSnapshotIamPolicy
/// " pulumi-lang-java=" gcp.compute.InstantSnapshotIamPolicy
/// "> gcp.compute.InstantSnapshotIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/compute.storageAdmin",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.compute.InstantSnapshotIamPolicy("policy", {
/// project: _default.project,
/// zone: _default.zone,
/// name: _default.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/compute.storageAdmin",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.compute.InstantSnapshotIamPolicy("policy",
/// project=default["project"],
/// zone=default["zone"],
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
/// Role = "roles/compute.storageAdmin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Compute.InstantSnapshotIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
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
/// Role: "roles/compute.storageAdmin",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewInstantSnapshotIamPolicy(ctx, "policy", &compute.InstantSnapshotIamPolicyArgs{
/// Project:    pulumi.Any(_default.Project),
/// Zone:       pulumi.Any(_default.Zone),
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
/// import com.pulumi.gcp.compute.InstantSnapshotIamPolicy;
/// import com.pulumi.gcp.compute.InstantSnapshotIamPolicyArgs;
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
/// .role("roles/compute.storageAdmin")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new InstantSnapshotIamPolicy("policy", InstantSnapshotIamPolicyArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
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
/// type: gcp:compute:InstantSnapshotIamPolicy
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
/// name: ${default.name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/compute.storageAdmin
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
/// role: "roles/compute.storageAdmin",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const policy = new gcp.compute.InstantSnapshotIamPolicy("policy", {
/// project: _default.project,
/// zone: _default.zone,
/// name: _default.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/compute.storageAdmin",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }])
/// policy = gcp.compute.InstantSnapshotIamPolicy("policy",
/// project=default["project"],
/// zone=default["zone"],
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
/// Role = "roles/compute.storageAdmin",
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
/// var policy = new Gcp.Compute.InstantSnapshotIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
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
/// Role: "roles/compute.storageAdmin",
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
/// _, err = compute.NewInstantSnapshotIamPolicy(ctx, "policy", &compute.InstantSnapshotIamPolicyArgs{
/// Project:    pulumi.Any(_default.Project),
/// Zone:       pulumi.Any(_default.Zone),
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
/// import com.pulumi.gcp.compute.InstantSnapshotIamPolicy;
/// import com.pulumi.gcp.compute.InstantSnapshotIamPolicyArgs;
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
/// .role("roles/compute.storageAdmin")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var policy = new InstantSnapshotIamPolicy("policy", InstantSnapshotIamPolicyArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
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
/// type: gcp:compute:InstantSnapshotIamPolicy
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
/// name: ${default.name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/compute.storageAdmin
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.compute.InstantSnapshotIamBinding
/// " pulumi-lang-dotnet=" gcp.compute.InstantSnapshotIamBinding
/// " pulumi-lang-go=" compute.InstantSnapshotIamBinding
/// " pulumi-lang-python=" compute.InstantSnapshotIamBinding
/// " pulumi-lang-yaml=" gcp.compute.InstantSnapshotIamBinding
/// " pulumi-lang-java=" gcp.compute.InstantSnapshotIamBinding
/// "> gcp.compute.InstantSnapshotIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.InstantSnapshotIamBinding("binding", {
/// project: _default.project,
/// zone: _default.zone,
/// name: _default.name,
/// role: "roles/compute.storageAdmin",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.InstantSnapshotIamBinding("binding",
/// project=default["project"],
/// zone=default["zone"],
/// name=default["name"],
/// role="roles/compute.storageAdmin",
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
/// var binding = new Gcp.Compute.InstantSnapshotIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
/// Name = @default.Name,
/// Role = "roles/compute.storageAdmin",
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
/// _, err := compute.NewInstantSnapshotIamBinding(ctx, "binding", &compute.InstantSnapshotIamBindingArgs{
/// Project: pulumi.Any(_default.Project),
/// Zone:    pulumi.Any(_default.Zone),
/// Name:    pulumi.Any(_default.Name),
/// Role:    pulumi.String("roles/compute.storageAdmin"),
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
/// import com.pulumi.gcp.compute.InstantSnapshotIamBinding;
/// import com.pulumi.gcp.compute.InstantSnapshotIamBindingArgs;
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
/// var binding = new InstantSnapshotIamBinding("binding", InstantSnapshotIamBindingArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
/// .name(default_.name())
/// .role("roles/compute.storageAdmin")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:compute:InstantSnapshotIamBinding
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
/// name: ${default.name}
/// role: roles/compute.storageAdmin
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
/// const binding = new gcp.compute.InstantSnapshotIamBinding("binding", {
/// project: _default.project,
/// zone: _default.zone,
/// name: _default.name,
/// role: "roles/compute.storageAdmin",
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
/// binding = gcp.compute.InstantSnapshotIamBinding("binding",
/// project=default["project"],
/// zone=default["zone"],
/// name=default["name"],
/// role="roles/compute.storageAdmin",
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
/// var binding = new Gcp.Compute.InstantSnapshotIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
/// Name = @default.Name,
/// Role = "roles/compute.storageAdmin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Compute.Inputs.InstantSnapshotIamBindingConditionArgs
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
/// _, err := compute.NewInstantSnapshotIamBinding(ctx, "binding", &compute.InstantSnapshotIamBindingArgs{
/// Project: pulumi.Any(_default.Project),
/// Zone:    pulumi.Any(_default.Zone),
/// Name:    pulumi.Any(_default.Name),
/// Role:    pulumi.String("roles/compute.storageAdmin"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &compute.InstantSnapshotIamBindingConditionArgs{
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
/// import com.pulumi.gcp.compute.InstantSnapshotIamBinding;
/// import com.pulumi.gcp.compute.InstantSnapshotIamBindingArgs;
/// import com.pulumi.gcp.compute.inputs.InstantSnapshotIamBindingConditionArgs;
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
/// var binding = new InstantSnapshotIamBinding("binding", InstantSnapshotIamBindingArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
/// .name(default_.name())
/// .role("roles/compute.storageAdmin")
/// .members("user:jane@example.com")
/// .condition(InstantSnapshotIamBindingConditionArgs.builder()
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
/// type: gcp:compute:InstantSnapshotIamBinding
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
/// name: ${default.name}
/// role: roles/compute.storageAdmin
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.compute.InstantSnapshotIamMember
/// " pulumi-lang-dotnet=" gcp.compute.InstantSnapshotIamMember
/// " pulumi-lang-go=" compute.InstantSnapshotIamMember
/// " pulumi-lang-python=" compute.InstantSnapshotIamMember
/// " pulumi-lang-yaml=" gcp.compute.InstantSnapshotIamMember
/// " pulumi-lang-java=" gcp.compute.InstantSnapshotIamMember
/// "> gcp.compute.InstantSnapshotIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.InstantSnapshotIamMember("member", {
/// project: _default.project,
/// zone: _default.zone,
/// name: _default.name,
/// role: "roles/compute.storageAdmin",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.InstantSnapshotIamMember("member",
/// project=default["project"],
/// zone=default["zone"],
/// name=default["name"],
/// role="roles/compute.storageAdmin",
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
/// var member = new Gcp.Compute.InstantSnapshotIamMember("member", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
/// Name = @default.Name,
/// Role = "roles/compute.storageAdmin",
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
/// _, err := compute.NewInstantSnapshotIamMember(ctx, "member", &compute.InstantSnapshotIamMemberArgs{
/// Project: pulumi.Any(_default.Project),
/// Zone:    pulumi.Any(_default.Zone),
/// Name:    pulumi.Any(_default.Name),
/// Role:    pulumi.String("roles/compute.storageAdmin"),
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
/// import com.pulumi.gcp.compute.InstantSnapshotIamMember;
/// import com.pulumi.gcp.compute.InstantSnapshotIamMemberArgs;
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
/// var member = new InstantSnapshotIamMember("member", InstantSnapshotIamMemberArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
/// .name(default_.name())
/// .role("roles/compute.storageAdmin")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:compute:InstantSnapshotIamMember
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
/// name: ${default.name}
/// role: roles/compute.storageAdmin
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
/// const member = new gcp.compute.InstantSnapshotIamMember("member", {
/// project: _default.project,
/// zone: _default.zone,
/// name: _default.name,
/// role: "roles/compute.storageAdmin",
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
/// member = gcp.compute.InstantSnapshotIamMember("member",
/// project=default["project"],
/// zone=default["zone"],
/// name=default["name"],
/// role="roles/compute.storageAdmin",
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
/// var member = new Gcp.Compute.InstantSnapshotIamMember("member", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
/// Name = @default.Name,
/// Role = "roles/compute.storageAdmin",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Compute.Inputs.InstantSnapshotIamMemberConditionArgs
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
/// _, err := compute.NewInstantSnapshotIamMember(ctx, "member", &compute.InstantSnapshotIamMemberArgs{
/// Project: pulumi.Any(_default.Project),
/// Zone:    pulumi.Any(_default.Zone),
/// Name:    pulumi.Any(_default.Name),
/// Role:    pulumi.String("roles/compute.storageAdmin"),
/// Member:  pulumi.String("user:jane@example.com"),
/// Condition: &compute.InstantSnapshotIamMemberConditionArgs{
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
/// import com.pulumi.gcp.compute.InstantSnapshotIamMember;
/// import com.pulumi.gcp.compute.InstantSnapshotIamMemberArgs;
/// import com.pulumi.gcp.compute.inputs.InstantSnapshotIamMemberConditionArgs;
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
/// var member = new InstantSnapshotIamMember("member", InstantSnapshotIamMemberArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
/// .name(default_.name())
/// .role("roles/compute.storageAdmin")
/// .member("user:jane@example.com")
/// .condition(InstantSnapshotIamMemberConditionArgs.builder()
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
/// type: gcp:compute:InstantSnapshotIamMember
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
/// name: ${default.name}
/// role: roles/compute.storageAdmin
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
/// # IAM policy for Compute Engine InstantSnapshot
///
/// Three different resources help you manage your IAM policy for Compute Engine InstantSnapshot. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.compute.InstantSnapshotIamPolicy`" pulumi-lang-dotnet="`gcp.compute.InstantSnapshotIamPolicy`" pulumi-lang-go="`compute.InstantSnapshotIamPolicy`" pulumi-lang-python="`compute.InstantSnapshotIamPolicy`" pulumi-lang-yaml="`gcp.compute.InstantSnapshotIamPolicy`" pulumi-lang-java="`gcp.compute.InstantSnapshotIamPolicy`">`gcp.compute.InstantSnapshotIamPolicy`</span>: Authoritative. Sets the IAM policy for the instantsnapshot and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.compute.InstantSnapshotIamBinding`" pulumi-lang-dotnet="`gcp.compute.InstantSnapshotIamBinding`" pulumi-lang-go="`compute.InstantSnapshotIamBinding`" pulumi-lang-python="`compute.InstantSnapshotIamBinding`" pulumi-lang-yaml="`gcp.compute.InstantSnapshotIamBinding`" pulumi-lang-java="`gcp.compute.InstantSnapshotIamBinding`">`gcp.compute.InstantSnapshotIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the instantsnapshot are preserved.
/// * <span pulumi-lang-nodejs="`gcp.compute.InstantSnapshotIamMember`" pulumi-lang-dotnet="`gcp.compute.InstantSnapshotIamMember`" pulumi-lang-go="`compute.InstantSnapshotIamMember`" pulumi-lang-python="`compute.InstantSnapshotIamMember`" pulumi-lang-yaml="`gcp.compute.InstantSnapshotIamMember`" pulumi-lang-java="`gcp.compute.InstantSnapshotIamMember`">`gcp.compute.InstantSnapshotIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the instantsnapshot are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.compute.InstantSnapshotIamPolicy`" pulumi-lang-dotnet="`gcp.compute.InstantSnapshotIamPolicy`" pulumi-lang-go="`compute.InstantSnapshotIamPolicy`" pulumi-lang-python="`compute.InstantSnapshotIamPolicy`" pulumi-lang-yaml="`gcp.compute.InstantSnapshotIamPolicy`" pulumi-lang-java="`gcp.compute.InstantSnapshotIamPolicy`">`gcp.compute.InstantSnapshotIamPolicy`</span>: Retrieves the IAM policy for the instantsnapshot
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.InstantSnapshotIamPolicy`" pulumi-lang-dotnet="`gcp.compute.InstantSnapshotIamPolicy`" pulumi-lang-go="`compute.InstantSnapshotIamPolicy`" pulumi-lang-python="`compute.InstantSnapshotIamPolicy`" pulumi-lang-yaml="`gcp.compute.InstantSnapshotIamPolicy`" pulumi-lang-java="`gcp.compute.InstantSnapshotIamPolicy`">`gcp.compute.InstantSnapshotIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.InstantSnapshotIamBinding`" pulumi-lang-dotnet="`gcp.compute.InstantSnapshotIamBinding`" pulumi-lang-go="`compute.InstantSnapshotIamBinding`" pulumi-lang-python="`compute.InstantSnapshotIamBinding`" pulumi-lang-yaml="`gcp.compute.InstantSnapshotIamBinding`" pulumi-lang-java="`gcp.compute.InstantSnapshotIamBinding`">`gcp.compute.InstantSnapshotIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.compute.InstantSnapshotIamMember`" pulumi-lang-dotnet="`gcp.compute.InstantSnapshotIamMember`" pulumi-lang-go="`compute.InstantSnapshotIamMember`" pulumi-lang-python="`compute.InstantSnapshotIamMember`" pulumi-lang-yaml="`gcp.compute.InstantSnapshotIamMember`" pulumi-lang-java="`gcp.compute.InstantSnapshotIamMember`">`gcp.compute.InstantSnapshotIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.InstantSnapshotIamBinding`" pulumi-lang-dotnet="`gcp.compute.InstantSnapshotIamBinding`" pulumi-lang-go="`compute.InstantSnapshotIamBinding`" pulumi-lang-python="`compute.InstantSnapshotIamBinding`" pulumi-lang-yaml="`gcp.compute.InstantSnapshotIamBinding`" pulumi-lang-java="`gcp.compute.InstantSnapshotIamBinding`">`gcp.compute.InstantSnapshotIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.InstantSnapshotIamMember`" pulumi-lang-dotnet="`gcp.compute.InstantSnapshotIamMember`" pulumi-lang-go="`compute.InstantSnapshotIamMember`" pulumi-lang-python="`compute.InstantSnapshotIamMember`" pulumi-lang-yaml="`gcp.compute.InstantSnapshotIamMember`" pulumi-lang-java="`gcp.compute.InstantSnapshotIamMember`">`gcp.compute.InstantSnapshotIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.compute.InstantSnapshotIamPolicy
/// " pulumi-lang-dotnet=" gcp.compute.InstantSnapshotIamPolicy
/// " pulumi-lang-go=" compute.InstantSnapshotIamPolicy
/// " pulumi-lang-python=" compute.InstantSnapshotIamPolicy
/// " pulumi-lang-yaml=" gcp.compute.InstantSnapshotIamPolicy
/// " pulumi-lang-java=" gcp.compute.InstantSnapshotIamPolicy
/// "> gcp.compute.InstantSnapshotIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/compute.storageAdmin",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.compute.InstantSnapshotIamPolicy("policy", {
/// project: _default.project,
/// zone: _default.zone,
/// name: _default.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/compute.storageAdmin",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.compute.InstantSnapshotIamPolicy("policy",
/// project=default["project"],
/// zone=default["zone"],
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
/// Role = "roles/compute.storageAdmin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Compute.InstantSnapshotIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
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
/// Role: "roles/compute.storageAdmin",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewInstantSnapshotIamPolicy(ctx, "policy", &compute.InstantSnapshotIamPolicyArgs{
/// Project:    pulumi.Any(_default.Project),
/// Zone:       pulumi.Any(_default.Zone),
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
/// import com.pulumi.gcp.compute.InstantSnapshotIamPolicy;
/// import com.pulumi.gcp.compute.InstantSnapshotIamPolicyArgs;
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
/// .role("roles/compute.storageAdmin")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new InstantSnapshotIamPolicy("policy", InstantSnapshotIamPolicyArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
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
/// type: gcp:compute:InstantSnapshotIamPolicy
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
/// name: ${default.name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/compute.storageAdmin
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
/// role: "roles/compute.storageAdmin",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const policy = new gcp.compute.InstantSnapshotIamPolicy("policy", {
/// project: _default.project,
/// zone: _default.zone,
/// name: _default.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/compute.storageAdmin",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }])
/// policy = gcp.compute.InstantSnapshotIamPolicy("policy",
/// project=default["project"],
/// zone=default["zone"],
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
/// Role = "roles/compute.storageAdmin",
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
/// var policy = new Gcp.Compute.InstantSnapshotIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
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
/// Role: "roles/compute.storageAdmin",
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
/// _, err = compute.NewInstantSnapshotIamPolicy(ctx, "policy", &compute.InstantSnapshotIamPolicyArgs{
/// Project:    pulumi.Any(_default.Project),
/// Zone:       pulumi.Any(_default.Zone),
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
/// import com.pulumi.gcp.compute.InstantSnapshotIamPolicy;
/// import com.pulumi.gcp.compute.InstantSnapshotIamPolicyArgs;
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
/// .role("roles/compute.storageAdmin")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var policy = new InstantSnapshotIamPolicy("policy", InstantSnapshotIamPolicyArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
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
/// type: gcp:compute:InstantSnapshotIamPolicy
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
/// name: ${default.name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/compute.storageAdmin
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.compute.InstantSnapshotIamBinding
/// " pulumi-lang-dotnet=" gcp.compute.InstantSnapshotIamBinding
/// " pulumi-lang-go=" compute.InstantSnapshotIamBinding
/// " pulumi-lang-python=" compute.InstantSnapshotIamBinding
/// " pulumi-lang-yaml=" gcp.compute.InstantSnapshotIamBinding
/// " pulumi-lang-java=" gcp.compute.InstantSnapshotIamBinding
/// "> gcp.compute.InstantSnapshotIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.InstantSnapshotIamBinding("binding", {
/// project: _default.project,
/// zone: _default.zone,
/// name: _default.name,
/// role: "roles/compute.storageAdmin",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.InstantSnapshotIamBinding("binding",
/// project=default["project"],
/// zone=default["zone"],
/// name=default["name"],
/// role="roles/compute.storageAdmin",
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
/// var binding = new Gcp.Compute.InstantSnapshotIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
/// Name = @default.Name,
/// Role = "roles/compute.storageAdmin",
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
/// _, err := compute.NewInstantSnapshotIamBinding(ctx, "binding", &compute.InstantSnapshotIamBindingArgs{
/// Project: pulumi.Any(_default.Project),
/// Zone:    pulumi.Any(_default.Zone),
/// Name:    pulumi.Any(_default.Name),
/// Role:    pulumi.String("roles/compute.storageAdmin"),
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
/// import com.pulumi.gcp.compute.InstantSnapshotIamBinding;
/// import com.pulumi.gcp.compute.InstantSnapshotIamBindingArgs;
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
/// var binding = new InstantSnapshotIamBinding("binding", InstantSnapshotIamBindingArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
/// .name(default_.name())
/// .role("roles/compute.storageAdmin")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:compute:InstantSnapshotIamBinding
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
/// name: ${default.name}
/// role: roles/compute.storageAdmin
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
/// const binding = new gcp.compute.InstantSnapshotIamBinding("binding", {
/// project: _default.project,
/// zone: _default.zone,
/// name: _default.name,
/// role: "roles/compute.storageAdmin",
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
/// binding = gcp.compute.InstantSnapshotIamBinding("binding",
/// project=default["project"],
/// zone=default["zone"],
/// name=default["name"],
/// role="roles/compute.storageAdmin",
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
/// var binding = new Gcp.Compute.InstantSnapshotIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
/// Name = @default.Name,
/// Role = "roles/compute.storageAdmin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Compute.Inputs.InstantSnapshotIamBindingConditionArgs
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
/// _, err := compute.NewInstantSnapshotIamBinding(ctx, "binding", &compute.InstantSnapshotIamBindingArgs{
/// Project: pulumi.Any(_default.Project),
/// Zone:    pulumi.Any(_default.Zone),
/// Name:    pulumi.Any(_default.Name),
/// Role:    pulumi.String("roles/compute.storageAdmin"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &compute.InstantSnapshotIamBindingConditionArgs{
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
/// import com.pulumi.gcp.compute.InstantSnapshotIamBinding;
/// import com.pulumi.gcp.compute.InstantSnapshotIamBindingArgs;
/// import com.pulumi.gcp.compute.inputs.InstantSnapshotIamBindingConditionArgs;
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
/// var binding = new InstantSnapshotIamBinding("binding", InstantSnapshotIamBindingArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
/// .name(default_.name())
/// .role("roles/compute.storageAdmin")
/// .members("user:jane@example.com")
/// .condition(InstantSnapshotIamBindingConditionArgs.builder()
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
/// type: gcp:compute:InstantSnapshotIamBinding
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
/// name: ${default.name}
/// role: roles/compute.storageAdmin
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.compute.InstantSnapshotIamMember
/// " pulumi-lang-dotnet=" gcp.compute.InstantSnapshotIamMember
/// " pulumi-lang-go=" compute.InstantSnapshotIamMember
/// " pulumi-lang-python=" compute.InstantSnapshotIamMember
/// " pulumi-lang-yaml=" gcp.compute.InstantSnapshotIamMember
/// " pulumi-lang-java=" gcp.compute.InstantSnapshotIamMember
/// "> gcp.compute.InstantSnapshotIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.InstantSnapshotIamMember("member", {
/// project: _default.project,
/// zone: _default.zone,
/// name: _default.name,
/// role: "roles/compute.storageAdmin",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.InstantSnapshotIamMember("member",
/// project=default["project"],
/// zone=default["zone"],
/// name=default["name"],
/// role="roles/compute.storageAdmin",
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
/// var member = new Gcp.Compute.InstantSnapshotIamMember("member", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
/// Name = @default.Name,
/// Role = "roles/compute.storageAdmin",
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
/// _, err := compute.NewInstantSnapshotIamMember(ctx, "member", &compute.InstantSnapshotIamMemberArgs{
/// Project: pulumi.Any(_default.Project),
/// Zone:    pulumi.Any(_default.Zone),
/// Name:    pulumi.Any(_default.Name),
/// Role:    pulumi.String("roles/compute.storageAdmin"),
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
/// import com.pulumi.gcp.compute.InstantSnapshotIamMember;
/// import com.pulumi.gcp.compute.InstantSnapshotIamMemberArgs;
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
/// var member = new InstantSnapshotIamMember("member", InstantSnapshotIamMemberArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
/// .name(default_.name())
/// .role("roles/compute.storageAdmin")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:compute:InstantSnapshotIamMember
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
/// name: ${default.name}
/// role: roles/compute.storageAdmin
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
/// const member = new gcp.compute.InstantSnapshotIamMember("member", {
/// project: _default.project,
/// zone: _default.zone,
/// name: _default.name,
/// role: "roles/compute.storageAdmin",
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
/// member = gcp.compute.InstantSnapshotIamMember("member",
/// project=default["project"],
/// zone=default["zone"],
/// name=default["name"],
/// role="roles/compute.storageAdmin",
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
/// var member = new Gcp.Compute.InstantSnapshotIamMember("member", new()
/// {
/// Project = @default.Project,
/// Zone = @default.Zone,
/// Name = @default.Name,
/// Role = "roles/compute.storageAdmin",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Compute.Inputs.InstantSnapshotIamMemberConditionArgs
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
/// _, err := compute.NewInstantSnapshotIamMember(ctx, "member", &compute.InstantSnapshotIamMemberArgs{
/// Project: pulumi.Any(_default.Project),
/// Zone:    pulumi.Any(_default.Zone),
/// Name:    pulumi.Any(_default.Name),
/// Role:    pulumi.String("roles/compute.storageAdmin"),
/// Member:  pulumi.String("user:jane@example.com"),
/// Condition: &compute.InstantSnapshotIamMemberConditionArgs{
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
/// import com.pulumi.gcp.compute.InstantSnapshotIamMember;
/// import com.pulumi.gcp.compute.InstantSnapshotIamMemberArgs;
/// import com.pulumi.gcp.compute.inputs.InstantSnapshotIamMemberConditionArgs;
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
/// var member = new InstantSnapshotIamMember("member", InstantSnapshotIamMemberArgs.builder()
/// .project(default_.project())
/// .zone(default_.zone())
/// .name(default_.name())
/// .role("roles/compute.storageAdmin")
/// .member("user:jane@example.com")
/// .condition(InstantSnapshotIamMemberConditionArgs.builder()
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
/// type: gcp:compute:InstantSnapshotIamMember
/// properties:
/// project: ${default.project}
/// zone: ${default.zone}
/// name: ${default.name}
/// role: roles/compute.storageAdmin
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
/// * projects/{{project}}/zones/{{zone}}/instantSnapshots/{{name}}
///
/// * {{project}}/{{zone}}/{{name}}
///
/// * {{zone}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Compute Engine instantsnapshot IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/instantSnapshotIamPolicy:InstantSnapshotIamPolicy editor "projects/{{project}}/zones/{{zone}}/instantSnapshots/{{instant_snapshot}} roles/compute.storageAdmin user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/instantSnapshotIamPolicy:InstantSnapshotIamPolicy editor "projects/{{project}}/zones/{{zone}}/instantSnapshots/{{instant_snapshot}} roles/compute.storageAdmin"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/instantSnapshotIamPolicy:InstantSnapshotIamPolicy editor projects/{{project}}/zones/{{zone}}/instantSnapshots/{{instant_snapshot}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class InstantSnapshotIamPolicy extends CustomResource {
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

  /// A reference to the zone where the disk is located. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no zone is provided in the parent identifier and no
  /// zone is specified, it is taken from the provider configuration.
  late final Output<String> zone;

  InstantSnapshotIamPolicy(
    String name, {
    InstantSnapshotIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instantSnapshotIamPolicy:InstantSnapshotIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.zone = registerOutput<String>('zone');
  }
}
