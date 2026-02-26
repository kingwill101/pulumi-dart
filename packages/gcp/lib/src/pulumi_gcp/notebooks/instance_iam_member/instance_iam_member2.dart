import 'package:pulumi/pulumi.dart';
import '../instance_iam_member_condition/instance_iam_member_condition2.dart';
import 'instance_iam_member_args2.dart';

/// Three different resources help you manage your IAM policy for Cloud AI Notebooks Instance. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.notebooks.InstanceIamPolicy`" pulumi-lang-dotnet="`gcp.notebooks.InstanceIamPolicy`" pulumi-lang-go="`notebooks.InstanceIamPolicy`" pulumi-lang-python="`notebooks.InstanceIamPolicy`" pulumi-lang-yaml="`gcp.notebooks.InstanceIamPolicy`" pulumi-lang-java="`gcp.notebooks.InstanceIamPolicy`">`gcp.notebooks.InstanceIamPolicy`</span>: Authoritative. Sets the IAM policy for the instance and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.notebooks.InstanceIamBinding`" pulumi-lang-dotnet="`gcp.notebooks.InstanceIamBinding`" pulumi-lang-go="`notebooks.InstanceIamBinding`" pulumi-lang-python="`notebooks.InstanceIamBinding`" pulumi-lang-yaml="`gcp.notebooks.InstanceIamBinding`" pulumi-lang-java="`gcp.notebooks.InstanceIamBinding`">`gcp.notebooks.InstanceIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the instance are preserved.
/// * <span pulumi-lang-nodejs="`gcp.notebooks.InstanceIamMember`" pulumi-lang-dotnet="`gcp.notebooks.InstanceIamMember`" pulumi-lang-go="`notebooks.InstanceIamMember`" pulumi-lang-python="`notebooks.InstanceIamMember`" pulumi-lang-yaml="`gcp.notebooks.InstanceIamMember`" pulumi-lang-java="`gcp.notebooks.InstanceIamMember`">`gcp.notebooks.InstanceIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the instance are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.notebooks.InstanceIamPolicy`" pulumi-lang-dotnet="`gcp.notebooks.InstanceIamPolicy`" pulumi-lang-go="`notebooks.InstanceIamPolicy`" pulumi-lang-python="`notebooks.InstanceIamPolicy`" pulumi-lang-yaml="`gcp.notebooks.InstanceIamPolicy`" pulumi-lang-java="`gcp.notebooks.InstanceIamPolicy`">`gcp.notebooks.InstanceIamPolicy`</span>: Retrieves the IAM policy for the instance
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.notebooks.InstanceIamPolicy`" pulumi-lang-dotnet="`gcp.notebooks.InstanceIamPolicy`" pulumi-lang-go="`notebooks.InstanceIamPolicy`" pulumi-lang-python="`notebooks.InstanceIamPolicy`" pulumi-lang-yaml="`gcp.notebooks.InstanceIamPolicy`" pulumi-lang-java="`gcp.notebooks.InstanceIamPolicy`">`gcp.notebooks.InstanceIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.notebooks.InstanceIamBinding`" pulumi-lang-dotnet="`gcp.notebooks.InstanceIamBinding`" pulumi-lang-go="`notebooks.InstanceIamBinding`" pulumi-lang-python="`notebooks.InstanceIamBinding`" pulumi-lang-yaml="`gcp.notebooks.InstanceIamBinding`" pulumi-lang-java="`gcp.notebooks.InstanceIamBinding`">`gcp.notebooks.InstanceIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.notebooks.InstanceIamMember`" pulumi-lang-dotnet="`gcp.notebooks.InstanceIamMember`" pulumi-lang-go="`notebooks.InstanceIamMember`" pulumi-lang-python="`notebooks.InstanceIamMember`" pulumi-lang-yaml="`gcp.notebooks.InstanceIamMember`" pulumi-lang-java="`gcp.notebooks.InstanceIamMember`">`gcp.notebooks.InstanceIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.notebooks.InstanceIamBinding`" pulumi-lang-dotnet="`gcp.notebooks.InstanceIamBinding`" pulumi-lang-go="`notebooks.InstanceIamBinding`" pulumi-lang-python="`notebooks.InstanceIamBinding`" pulumi-lang-yaml="`gcp.notebooks.InstanceIamBinding`" pulumi-lang-java="`gcp.notebooks.InstanceIamBinding`">`gcp.notebooks.InstanceIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.notebooks.InstanceIamMember`" pulumi-lang-dotnet="`gcp.notebooks.InstanceIamMember`" pulumi-lang-go="`notebooks.InstanceIamMember`" pulumi-lang-python="`notebooks.InstanceIamMember`" pulumi-lang-yaml="`gcp.notebooks.InstanceIamMember`" pulumi-lang-java="`gcp.notebooks.InstanceIamMember`">`gcp.notebooks.InstanceIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.notebooks.InstanceIamPolicy
/// " pulumi-lang-dotnet=" gcp.notebooks.InstanceIamPolicy
/// " pulumi-lang-go=" notebooks.InstanceIamPolicy
/// " pulumi-lang-python=" notebooks.InstanceIamPolicy
/// " pulumi-lang-yaml=" gcp.notebooks.InstanceIamPolicy
/// " pulumi-lang-java=" gcp.notebooks.InstanceIamPolicy
/// "> gcp.notebooks.InstanceIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.notebooks.InstanceIamPolicy("policy", {
/// project: instance.project,
/// location: instance.location,
/// instanceName: instance.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/viewer",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.notebooks.InstanceIamPolicy("policy",
/// project=instance["project"],
/// location=instance["location"],
/// instance_name=instance["name"],
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
/// Role = "roles/viewer",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Notebooks.InstanceIamPolicy("policy", new()
/// {
/// Project = instance.Project,
/// Location = instance.Location,
/// InstanceName = instance.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/viewer",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = notebooks.NewInstanceIamPolicy(ctx, "policy", &notebooks.InstanceIamPolicyArgs{
/// Project:      pulumi.Any(instance.Project),
/// Location:     pulumi.Any(instance.Location),
/// InstanceName: pulumi.Any(instance.Name),
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
/// import com.pulumi.gcp.notebooks.InstanceIamPolicy;
/// import com.pulumi.gcp.notebooks.InstanceIamPolicyArgs;
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
/// .role("roles/viewer")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new InstanceIamPolicy("policy", InstanceIamPolicyArgs.builder()
/// .project(instance.project())
/// .location(instance.location())
/// .instanceName(instance.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:notebooks:InstanceIamPolicy
/// properties:
/// project: ${instance.project}
/// location: ${instance.location}
/// instanceName: ${instance.name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.notebooks.InstanceIamBinding
/// " pulumi-lang-dotnet=" gcp.notebooks.InstanceIamBinding
/// " pulumi-lang-go=" notebooks.InstanceIamBinding
/// " pulumi-lang-python=" notebooks.InstanceIamBinding
/// " pulumi-lang-yaml=" gcp.notebooks.InstanceIamBinding
/// " pulumi-lang-java=" gcp.notebooks.InstanceIamBinding
/// "> gcp.notebooks.InstanceIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.notebooks.InstanceIamBinding("binding", {
/// project: instance.project,
/// location: instance.location,
/// instanceName: instance.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.notebooks.InstanceIamBinding("binding",
/// project=instance["project"],
/// location=instance["location"],
/// instance_name=instance["name"],
/// role="roles/viewer",
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
/// var binding = new Gcp.Notebooks.InstanceIamBinding("binding", new()
/// {
/// Project = instance.Project,
/// Location = instance.Location,
/// InstanceName = instance.Name,
/// Role = "roles/viewer",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := notebooks.NewInstanceIamBinding(ctx, "binding", &notebooks.InstanceIamBindingArgs{
/// Project:      pulumi.Any(instance.Project),
/// Location:     pulumi.Any(instance.Location),
/// InstanceName: pulumi.Any(instance.Name),
/// Role:         pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.notebooks.InstanceIamBinding;
/// import com.pulumi.gcp.notebooks.InstanceIamBindingArgs;
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
/// var binding = new InstanceIamBinding("binding", InstanceIamBindingArgs.builder()
/// .project(instance.project())
/// .location(instance.location())
/// .instanceName(instance.name())
/// .role("roles/viewer")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:notebooks:InstanceIamBinding
/// properties:
/// project: ${instance.project}
/// location: ${instance.location}
/// instanceName: ${instance.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.notebooks.InstanceIamMember
/// " pulumi-lang-dotnet=" gcp.notebooks.InstanceIamMember
/// " pulumi-lang-go=" notebooks.InstanceIamMember
/// " pulumi-lang-python=" notebooks.InstanceIamMember
/// " pulumi-lang-yaml=" gcp.notebooks.InstanceIamMember
/// " pulumi-lang-java=" gcp.notebooks.InstanceIamMember
/// "> gcp.notebooks.InstanceIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.notebooks.InstanceIamMember("member", {
/// project: instance.project,
/// location: instance.location,
/// instanceName: instance.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.notebooks.InstanceIamMember("member",
/// project=instance["project"],
/// location=instance["location"],
/// instance_name=instance["name"],
/// role="roles/viewer",
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
/// var member = new Gcp.Notebooks.InstanceIamMember("member", new()
/// {
/// Project = instance.Project,
/// Location = instance.Location,
/// InstanceName = instance.Name,
/// Role = "roles/viewer",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := notebooks.NewInstanceIamMember(ctx, "member", &notebooks.InstanceIamMemberArgs{
/// Project:      pulumi.Any(instance.Project),
/// Location:     pulumi.Any(instance.Location),
/// InstanceName: pulumi.Any(instance.Name),
/// Role:         pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.notebooks.InstanceIamMember;
/// import com.pulumi.gcp.notebooks.InstanceIamMemberArgs;
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
/// var member = new InstanceIamMember("member", InstanceIamMemberArgs.builder()
/// .project(instance.project())
/// .location(instance.location())
/// .instanceName(instance.name())
/// .role("roles/viewer")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:notebooks:InstanceIamMember
/// properties:
/// project: ${instance.project}
/// location: ${instance.location}
/// instanceName: ${instance.name}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Cloud AI Notebooks Instance
///
/// Three different resources help you manage your IAM policy for Cloud AI Notebooks Instance. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.notebooks.InstanceIamPolicy`" pulumi-lang-dotnet="`gcp.notebooks.InstanceIamPolicy`" pulumi-lang-go="`notebooks.InstanceIamPolicy`" pulumi-lang-python="`notebooks.InstanceIamPolicy`" pulumi-lang-yaml="`gcp.notebooks.InstanceIamPolicy`" pulumi-lang-java="`gcp.notebooks.InstanceIamPolicy`">`gcp.notebooks.InstanceIamPolicy`</span>: Authoritative. Sets the IAM policy for the instance and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.notebooks.InstanceIamBinding`" pulumi-lang-dotnet="`gcp.notebooks.InstanceIamBinding`" pulumi-lang-go="`notebooks.InstanceIamBinding`" pulumi-lang-python="`notebooks.InstanceIamBinding`" pulumi-lang-yaml="`gcp.notebooks.InstanceIamBinding`" pulumi-lang-java="`gcp.notebooks.InstanceIamBinding`">`gcp.notebooks.InstanceIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the instance are preserved.
/// * <span pulumi-lang-nodejs="`gcp.notebooks.InstanceIamMember`" pulumi-lang-dotnet="`gcp.notebooks.InstanceIamMember`" pulumi-lang-go="`notebooks.InstanceIamMember`" pulumi-lang-python="`notebooks.InstanceIamMember`" pulumi-lang-yaml="`gcp.notebooks.InstanceIamMember`" pulumi-lang-java="`gcp.notebooks.InstanceIamMember`">`gcp.notebooks.InstanceIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the instance are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.notebooks.InstanceIamPolicy`" pulumi-lang-dotnet="`gcp.notebooks.InstanceIamPolicy`" pulumi-lang-go="`notebooks.InstanceIamPolicy`" pulumi-lang-python="`notebooks.InstanceIamPolicy`" pulumi-lang-yaml="`gcp.notebooks.InstanceIamPolicy`" pulumi-lang-java="`gcp.notebooks.InstanceIamPolicy`">`gcp.notebooks.InstanceIamPolicy`</span>: Retrieves the IAM policy for the instance
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.notebooks.InstanceIamPolicy`" pulumi-lang-dotnet="`gcp.notebooks.InstanceIamPolicy`" pulumi-lang-go="`notebooks.InstanceIamPolicy`" pulumi-lang-python="`notebooks.InstanceIamPolicy`" pulumi-lang-yaml="`gcp.notebooks.InstanceIamPolicy`" pulumi-lang-java="`gcp.notebooks.InstanceIamPolicy`">`gcp.notebooks.InstanceIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.notebooks.InstanceIamBinding`" pulumi-lang-dotnet="`gcp.notebooks.InstanceIamBinding`" pulumi-lang-go="`notebooks.InstanceIamBinding`" pulumi-lang-python="`notebooks.InstanceIamBinding`" pulumi-lang-yaml="`gcp.notebooks.InstanceIamBinding`" pulumi-lang-java="`gcp.notebooks.InstanceIamBinding`">`gcp.notebooks.InstanceIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.notebooks.InstanceIamMember`" pulumi-lang-dotnet="`gcp.notebooks.InstanceIamMember`" pulumi-lang-go="`notebooks.InstanceIamMember`" pulumi-lang-python="`notebooks.InstanceIamMember`" pulumi-lang-yaml="`gcp.notebooks.InstanceIamMember`" pulumi-lang-java="`gcp.notebooks.InstanceIamMember`">`gcp.notebooks.InstanceIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.notebooks.InstanceIamBinding`" pulumi-lang-dotnet="`gcp.notebooks.InstanceIamBinding`" pulumi-lang-go="`notebooks.InstanceIamBinding`" pulumi-lang-python="`notebooks.InstanceIamBinding`" pulumi-lang-yaml="`gcp.notebooks.InstanceIamBinding`" pulumi-lang-java="`gcp.notebooks.InstanceIamBinding`">`gcp.notebooks.InstanceIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.notebooks.InstanceIamMember`" pulumi-lang-dotnet="`gcp.notebooks.InstanceIamMember`" pulumi-lang-go="`notebooks.InstanceIamMember`" pulumi-lang-python="`notebooks.InstanceIamMember`" pulumi-lang-yaml="`gcp.notebooks.InstanceIamMember`" pulumi-lang-java="`gcp.notebooks.InstanceIamMember`">`gcp.notebooks.InstanceIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.notebooks.InstanceIamPolicy
/// " pulumi-lang-dotnet=" gcp.notebooks.InstanceIamPolicy
/// " pulumi-lang-go=" notebooks.InstanceIamPolicy
/// " pulumi-lang-python=" notebooks.InstanceIamPolicy
/// " pulumi-lang-yaml=" gcp.notebooks.InstanceIamPolicy
/// " pulumi-lang-java=" gcp.notebooks.InstanceIamPolicy
/// "> gcp.notebooks.InstanceIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.notebooks.InstanceIamPolicy("policy", {
/// project: instance.project,
/// location: instance.location,
/// instanceName: instance.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/viewer",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.notebooks.InstanceIamPolicy("policy",
/// project=instance["project"],
/// location=instance["location"],
/// instance_name=instance["name"],
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
/// Role = "roles/viewer",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Notebooks.InstanceIamPolicy("policy", new()
/// {
/// Project = instance.Project,
/// Location = instance.Location,
/// InstanceName = instance.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/viewer",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = notebooks.NewInstanceIamPolicy(ctx, "policy", &notebooks.InstanceIamPolicyArgs{
/// Project:      pulumi.Any(instance.Project),
/// Location:     pulumi.Any(instance.Location),
/// InstanceName: pulumi.Any(instance.Name),
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
/// import com.pulumi.gcp.notebooks.InstanceIamPolicy;
/// import com.pulumi.gcp.notebooks.InstanceIamPolicyArgs;
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
/// .role("roles/viewer")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new InstanceIamPolicy("policy", InstanceIamPolicyArgs.builder()
/// .project(instance.project())
/// .location(instance.location())
/// .instanceName(instance.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:notebooks:InstanceIamPolicy
/// properties:
/// project: ${instance.project}
/// location: ${instance.location}
/// instanceName: ${instance.name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.notebooks.InstanceIamBinding
/// " pulumi-lang-dotnet=" gcp.notebooks.InstanceIamBinding
/// " pulumi-lang-go=" notebooks.InstanceIamBinding
/// " pulumi-lang-python=" notebooks.InstanceIamBinding
/// " pulumi-lang-yaml=" gcp.notebooks.InstanceIamBinding
/// " pulumi-lang-java=" gcp.notebooks.InstanceIamBinding
/// "> gcp.notebooks.InstanceIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.notebooks.InstanceIamBinding("binding", {
/// project: instance.project,
/// location: instance.location,
/// instanceName: instance.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.notebooks.InstanceIamBinding("binding",
/// project=instance["project"],
/// location=instance["location"],
/// instance_name=instance["name"],
/// role="roles/viewer",
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
/// var binding = new Gcp.Notebooks.InstanceIamBinding("binding", new()
/// {
/// Project = instance.Project,
/// Location = instance.Location,
/// InstanceName = instance.Name,
/// Role = "roles/viewer",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := notebooks.NewInstanceIamBinding(ctx, "binding", &notebooks.InstanceIamBindingArgs{
/// Project:      pulumi.Any(instance.Project),
/// Location:     pulumi.Any(instance.Location),
/// InstanceName: pulumi.Any(instance.Name),
/// Role:         pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.notebooks.InstanceIamBinding;
/// import com.pulumi.gcp.notebooks.InstanceIamBindingArgs;
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
/// var binding = new InstanceIamBinding("binding", InstanceIamBindingArgs.builder()
/// .project(instance.project())
/// .location(instance.location())
/// .instanceName(instance.name())
/// .role("roles/viewer")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:notebooks:InstanceIamBinding
/// properties:
/// project: ${instance.project}
/// location: ${instance.location}
/// instanceName: ${instance.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.notebooks.InstanceIamMember
/// " pulumi-lang-dotnet=" gcp.notebooks.InstanceIamMember
/// " pulumi-lang-go=" notebooks.InstanceIamMember
/// " pulumi-lang-python=" notebooks.InstanceIamMember
/// " pulumi-lang-yaml=" gcp.notebooks.InstanceIamMember
/// " pulumi-lang-java=" gcp.notebooks.InstanceIamMember
/// "> gcp.notebooks.InstanceIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.notebooks.InstanceIamMember("member", {
/// project: instance.project,
/// location: instance.location,
/// instanceName: instance.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.notebooks.InstanceIamMember("member",
/// project=instance["project"],
/// location=instance["location"],
/// instance_name=instance["name"],
/// role="roles/viewer",
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
/// var member = new Gcp.Notebooks.InstanceIamMember("member", new()
/// {
/// Project = instance.Project,
/// Location = instance.Location,
/// InstanceName = instance.Name,
/// Role = "roles/viewer",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := notebooks.NewInstanceIamMember(ctx, "member", &notebooks.InstanceIamMemberArgs{
/// Project:      pulumi.Any(instance.Project),
/// Location:     pulumi.Any(instance.Location),
/// InstanceName: pulumi.Any(instance.Name),
/// Role:         pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.notebooks.InstanceIamMember;
/// import com.pulumi.gcp.notebooks.InstanceIamMemberArgs;
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
/// var member = new InstanceIamMember("member", InstanceIamMemberArgs.builder()
/// .project(instance.project())
/// .location(instance.location())
/// .instanceName(instance.name())
/// .role("roles/viewer")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:notebooks:InstanceIamMember
/// properties:
/// project: ${instance.project}
/// location: ${instance.location}
/// instanceName: ${instance.name}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/instances/{{instance_name}}
///
/// * {{project}}/{{location}}/{{instance_name}}
///
/// * {{location}}/{{instance_name}}
///
/// * {{instance_name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud AI Notebooks instance IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:notebooks/instanceIamMember:InstanceIamMember editor "projects/{{project}}/locations/{{location}}/instances/{{instance_name}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:notebooks/instanceIamMember:InstanceIamMember editor "projects/{{project}}/locations/{{location}}/instances/{{instance_name}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:notebooks/instanceIamMember:InstanceIamMember editor projects/{{project}}/locations/{{location}}/instances/{{instance_name}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class InstanceIamMember2 extends CustomResource {
  late final Output<InstanceIamMemberCondition2?> condition;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> instanceName;

  /// A reference to the zone where the machine resides. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final Output<String> location;

  /// Identities that will be granted the privilege in <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * **projectOwner:projectid**: Owners of the given project. For example, "projectOwner:my-example-project"
  /// * **projectEditor:projectid**: Editors of the given project. For example, "projectEditor:my-example-project"
  /// * **projectViewer:projectid**: Viewers of the given project. For example, "projectViewer:my-example-project"
  /// * **Federated identities**: One or more federated identities in a workload or workforce identity pool, workload running on GKE, etc. Refer to the [Principal identifiers documentation](https://cloud.google.com/iam/docs/principal-identifiers#allow) for examples of targets and valid configuration. For example, "principal://iam.googleapis.com/locations/global/workforcePools/example-contractors/subject/joe@example.com"
  late final Output<String> member;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.notebooks.InstanceIamBinding`" pulumi-lang-dotnet="`gcp.notebooks.InstanceIamBinding`" pulumi-lang-go="`notebooks.InstanceIamBinding`" pulumi-lang-python="`notebooks.InstanceIamBinding`" pulumi-lang-yaml="`gcp.notebooks.InstanceIamBinding`" pulumi-lang-java="`gcp.notebooks.InstanceIamBinding`">`gcp.notebooks.InstanceIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  InstanceIamMember2(
    String name, {
    InstanceIamMemberArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:notebooks/instanceIamMember:InstanceIamMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = Output.createUnknown<InstanceIamMemberCondition2?>();
    this.etag = Output.createUnknown<String>();
    this.instanceName = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.member = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
  }
}
