import 'package:pulumi/pulumi.dart';
import 'connection_iampolicy_args.dart';

/// Three different resources help you manage your IAM policy for Cloud Build v2 Connection. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-dotnet="`gcp.cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-go="`cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-python="`cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-yaml="`gcp.cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-java="`gcp.cloudbuildv2.ConnectionIAMPolicy`">`gcp.cloudbuildv2.ConnectionIAMPolicy`</span>: Authoritative. Sets the IAM policy for the connection and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-dotnet="`gcp.cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-go="`cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-python="`cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-yaml="`gcp.cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-java="`gcp.cloudbuildv2.ConnectionIAMBinding`">`gcp.cloudbuildv2.ConnectionIAMBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the connection are preserved.
/// * <span pulumi-lang-nodejs="`gcp.cloudbuildv2.ConnectionIAMMember`" pulumi-lang-dotnet="`gcp.cloudbuildv2.ConnectionIAMMember`" pulumi-lang-go="`cloudbuildv2.ConnectionIAMMember`" pulumi-lang-python="`cloudbuildv2.ConnectionIAMMember`" pulumi-lang-yaml="`gcp.cloudbuildv2.ConnectionIAMMember`" pulumi-lang-java="`gcp.cloudbuildv2.ConnectionIAMMember`">`gcp.cloudbuildv2.ConnectionIAMMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the connection are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-dotnet="`gcp.cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-go="`cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-python="`cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-yaml="`gcp.cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-java="`gcp.cloudbuildv2.ConnectionIAMPolicy`">`gcp.cloudbuildv2.ConnectionIAMPolicy`</span>: Retrieves the IAM policy for the connection
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-dotnet="`gcp.cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-go="`cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-python="`cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-yaml="`gcp.cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-java="`gcp.cloudbuildv2.ConnectionIAMPolicy`">`gcp.cloudbuildv2.ConnectionIAMPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-dotnet="`gcp.cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-go="`cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-python="`cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-yaml="`gcp.cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-java="`gcp.cloudbuildv2.ConnectionIAMBinding`">`gcp.cloudbuildv2.ConnectionIAMBinding`</span> and <span pulumi-lang-nodejs="`gcp.cloudbuildv2.ConnectionIAMMember`" pulumi-lang-dotnet="`gcp.cloudbuildv2.ConnectionIAMMember`" pulumi-lang-go="`cloudbuildv2.ConnectionIAMMember`" pulumi-lang-python="`cloudbuildv2.ConnectionIAMMember`" pulumi-lang-yaml="`gcp.cloudbuildv2.ConnectionIAMMember`" pulumi-lang-java="`gcp.cloudbuildv2.ConnectionIAMMember`">`gcp.cloudbuildv2.ConnectionIAMMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-dotnet="`gcp.cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-go="`cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-python="`cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-yaml="`gcp.cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-java="`gcp.cloudbuildv2.ConnectionIAMBinding`">`gcp.cloudbuildv2.ConnectionIAMBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.cloudbuildv2.ConnectionIAMMember`" pulumi-lang-dotnet="`gcp.cloudbuildv2.ConnectionIAMMember`" pulumi-lang-go="`cloudbuildv2.ConnectionIAMMember`" pulumi-lang-python="`cloudbuildv2.ConnectionIAMMember`" pulumi-lang-yaml="`gcp.cloudbuildv2.ConnectionIAMMember`" pulumi-lang-java="`gcp.cloudbuildv2.ConnectionIAMMember`">`gcp.cloudbuildv2.ConnectionIAMMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.cloudbuildv2.ConnectionIAMPolicy
/// " pulumi-lang-dotnet=" gcp.cloudbuildv2.ConnectionIAMPolicy
/// " pulumi-lang-go=" cloudbuildv2.ConnectionIAMPolicy
/// " pulumi-lang-python=" cloudbuildv2.ConnectionIAMPolicy
/// " pulumi-lang-yaml=" gcp.cloudbuildv2.ConnectionIAMPolicy
/// " pulumi-lang-java=" gcp.cloudbuildv2.ConnectionIAMPolicy
/// "> gcp.cloudbuildv2.ConnectionIAMPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/cloudbuild.connectionViewer",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.cloudbuildv2.ConnectionIAMPolicy("policy", {
/// project: my_connection.project,
/// location: my_connection.location,
/// name: my_connection.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/cloudbuild.connectionViewer",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.cloudbuildv2.ConnectionIAMPolicy("policy",
/// project=my_connection["project"],
/// location=my_connection["location"],
/// name=my_connection["name"],
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
/// Role = "roles/cloudbuild.connectionViewer",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.CloudBuildV2.ConnectionIAMPolicy("policy", new()
/// {
/// Project = my_connection.Project,
/// Location = my_connection.Location,
/// Name = my_connection.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuildv2"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/cloudbuild.connectionViewer",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = cloudbuildv2.NewConnectionIAMPolicy(ctx, "policy", &cloudbuildv2.ConnectionIAMPolicyArgs{
/// Project:    pulumi.Any(my_connection.Project),
/// Location:   pulumi.Any(my_connection.Location),
/// Name:       pulumi.Any(my_connection.Name),
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
/// import com.pulumi.gcp.cloudbuildv2.ConnectionIAMPolicy;
/// import com.pulumi.gcp.cloudbuildv2.ConnectionIAMPolicyArgs;
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
/// .role("roles/cloudbuild.connectionViewer")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new ConnectionIAMPolicy("policy", ConnectionIAMPolicyArgs.builder()
/// .project(my_connection.project())
/// .location(my_connection.location())
/// .name(my_connection.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:cloudbuildv2:ConnectionIAMPolicy
/// properties:
/// project: ${["my-connection"].project}
/// location: ${["my-connection"].location}
/// name: ${["my-connection"].name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/cloudbuild.connectionViewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.cloudbuildv2.ConnectionIAMBinding
/// " pulumi-lang-dotnet=" gcp.cloudbuildv2.ConnectionIAMBinding
/// " pulumi-lang-go=" cloudbuildv2.ConnectionIAMBinding
/// " pulumi-lang-python=" cloudbuildv2.ConnectionIAMBinding
/// " pulumi-lang-yaml=" gcp.cloudbuildv2.ConnectionIAMBinding
/// " pulumi-lang-java=" gcp.cloudbuildv2.ConnectionIAMBinding
/// "> gcp.cloudbuildv2.ConnectionIAMBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.cloudbuildv2.ConnectionIAMBinding("binding", {
/// project: my_connection.project,
/// location: my_connection.location,
/// name: my_connection.name,
/// role: "roles/cloudbuild.connectionViewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.cloudbuildv2.ConnectionIAMBinding("binding",
/// project=my_connection["project"],
/// location=my_connection["location"],
/// name=my_connection["name"],
/// role="roles/cloudbuild.connectionViewer",
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
/// var binding = new Gcp.CloudBuildV2.ConnectionIAMBinding("binding", new()
/// {
/// Project = my_connection.Project,
/// Location = my_connection.Location,
/// Name = my_connection.Name,
/// Role = "roles/cloudbuild.connectionViewer",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuildv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudbuildv2.NewConnectionIAMBinding(ctx, "binding", &cloudbuildv2.ConnectionIAMBindingArgs{
/// Project:  pulumi.Any(my_connection.Project),
/// Location: pulumi.Any(my_connection.Location),
/// Name:     pulumi.Any(my_connection.Name),
/// Role:     pulumi.String("roles/cloudbuild.connectionViewer"),
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
/// import com.pulumi.gcp.cloudbuildv2.ConnectionIAMBinding;
/// import com.pulumi.gcp.cloudbuildv2.ConnectionIAMBindingArgs;
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
/// var binding = new ConnectionIAMBinding("binding", ConnectionIAMBindingArgs.builder()
/// .project(my_connection.project())
/// .location(my_connection.location())
/// .name(my_connection.name())
/// .role("roles/cloudbuild.connectionViewer")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:cloudbuildv2:ConnectionIAMBinding
/// properties:
/// project: ${["my-connection"].project}
/// location: ${["my-connection"].location}
/// name: ${["my-connection"].name}
/// role: roles/cloudbuild.connectionViewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.cloudbuildv2.ConnectionIAMMember
/// " pulumi-lang-dotnet=" gcp.cloudbuildv2.ConnectionIAMMember
/// " pulumi-lang-go=" cloudbuildv2.ConnectionIAMMember
/// " pulumi-lang-python=" cloudbuildv2.ConnectionIAMMember
/// " pulumi-lang-yaml=" gcp.cloudbuildv2.ConnectionIAMMember
/// " pulumi-lang-java=" gcp.cloudbuildv2.ConnectionIAMMember
/// "> gcp.cloudbuildv2.ConnectionIAMMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.cloudbuildv2.ConnectionIAMMember("member", {
/// project: my_connection.project,
/// location: my_connection.location,
/// name: my_connection.name,
/// role: "roles/cloudbuild.connectionViewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.cloudbuildv2.ConnectionIAMMember("member",
/// project=my_connection["project"],
/// location=my_connection["location"],
/// name=my_connection["name"],
/// role="roles/cloudbuild.connectionViewer",
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
/// var member = new Gcp.CloudBuildV2.ConnectionIAMMember("member", new()
/// {
/// Project = my_connection.Project,
/// Location = my_connection.Location,
/// Name = my_connection.Name,
/// Role = "roles/cloudbuild.connectionViewer",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuildv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudbuildv2.NewConnectionIAMMember(ctx, "member", &cloudbuildv2.ConnectionIAMMemberArgs{
/// Project:  pulumi.Any(my_connection.Project),
/// Location: pulumi.Any(my_connection.Location),
/// Name:     pulumi.Any(my_connection.Name),
/// Role:     pulumi.String("roles/cloudbuild.connectionViewer"),
/// Member:   pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.cloudbuildv2.ConnectionIAMMember;
/// import com.pulumi.gcp.cloudbuildv2.ConnectionIAMMemberArgs;
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
/// var member = new ConnectionIAMMember("member", ConnectionIAMMemberArgs.builder()
/// .project(my_connection.project())
/// .location(my_connection.location())
/// .name(my_connection.name())
/// .role("roles/cloudbuild.connectionViewer")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:cloudbuildv2:ConnectionIAMMember
/// properties:
/// project: ${["my-connection"].project}
/// location: ${["my-connection"].location}
/// name: ${["my-connection"].name}
/// role: roles/cloudbuild.connectionViewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Cloud Build v2 Connection
///
/// Three different resources help you manage your IAM policy for Cloud Build v2 Connection. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-dotnet="`gcp.cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-go="`cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-python="`cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-yaml="`gcp.cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-java="`gcp.cloudbuildv2.ConnectionIAMPolicy`">`gcp.cloudbuildv2.ConnectionIAMPolicy`</span>: Authoritative. Sets the IAM policy for the connection and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-dotnet="`gcp.cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-go="`cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-python="`cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-yaml="`gcp.cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-java="`gcp.cloudbuildv2.ConnectionIAMBinding`">`gcp.cloudbuildv2.ConnectionIAMBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the connection are preserved.
/// * <span pulumi-lang-nodejs="`gcp.cloudbuildv2.ConnectionIAMMember`" pulumi-lang-dotnet="`gcp.cloudbuildv2.ConnectionIAMMember`" pulumi-lang-go="`cloudbuildv2.ConnectionIAMMember`" pulumi-lang-python="`cloudbuildv2.ConnectionIAMMember`" pulumi-lang-yaml="`gcp.cloudbuildv2.ConnectionIAMMember`" pulumi-lang-java="`gcp.cloudbuildv2.ConnectionIAMMember`">`gcp.cloudbuildv2.ConnectionIAMMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the connection are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-dotnet="`gcp.cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-go="`cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-python="`cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-yaml="`gcp.cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-java="`gcp.cloudbuildv2.ConnectionIAMPolicy`">`gcp.cloudbuildv2.ConnectionIAMPolicy`</span>: Retrieves the IAM policy for the connection
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-dotnet="`gcp.cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-go="`cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-python="`cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-yaml="`gcp.cloudbuildv2.ConnectionIAMPolicy`" pulumi-lang-java="`gcp.cloudbuildv2.ConnectionIAMPolicy`">`gcp.cloudbuildv2.ConnectionIAMPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-dotnet="`gcp.cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-go="`cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-python="`cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-yaml="`gcp.cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-java="`gcp.cloudbuildv2.ConnectionIAMBinding`">`gcp.cloudbuildv2.ConnectionIAMBinding`</span> and <span pulumi-lang-nodejs="`gcp.cloudbuildv2.ConnectionIAMMember`" pulumi-lang-dotnet="`gcp.cloudbuildv2.ConnectionIAMMember`" pulumi-lang-go="`cloudbuildv2.ConnectionIAMMember`" pulumi-lang-python="`cloudbuildv2.ConnectionIAMMember`" pulumi-lang-yaml="`gcp.cloudbuildv2.ConnectionIAMMember`" pulumi-lang-java="`gcp.cloudbuildv2.ConnectionIAMMember`">`gcp.cloudbuildv2.ConnectionIAMMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-dotnet="`gcp.cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-go="`cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-python="`cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-yaml="`gcp.cloudbuildv2.ConnectionIAMBinding`" pulumi-lang-java="`gcp.cloudbuildv2.ConnectionIAMBinding`">`gcp.cloudbuildv2.ConnectionIAMBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.cloudbuildv2.ConnectionIAMMember`" pulumi-lang-dotnet="`gcp.cloudbuildv2.ConnectionIAMMember`" pulumi-lang-go="`cloudbuildv2.ConnectionIAMMember`" pulumi-lang-python="`cloudbuildv2.ConnectionIAMMember`" pulumi-lang-yaml="`gcp.cloudbuildv2.ConnectionIAMMember`" pulumi-lang-java="`gcp.cloudbuildv2.ConnectionIAMMember`">`gcp.cloudbuildv2.ConnectionIAMMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.cloudbuildv2.ConnectionIAMPolicy
/// " pulumi-lang-dotnet=" gcp.cloudbuildv2.ConnectionIAMPolicy
/// " pulumi-lang-go=" cloudbuildv2.ConnectionIAMPolicy
/// " pulumi-lang-python=" cloudbuildv2.ConnectionIAMPolicy
/// " pulumi-lang-yaml=" gcp.cloudbuildv2.ConnectionIAMPolicy
/// " pulumi-lang-java=" gcp.cloudbuildv2.ConnectionIAMPolicy
/// "> gcp.cloudbuildv2.ConnectionIAMPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/cloudbuild.connectionViewer",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.cloudbuildv2.ConnectionIAMPolicy("policy", {
/// project: my_connection.project,
/// location: my_connection.location,
/// name: my_connection.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/cloudbuild.connectionViewer",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.cloudbuildv2.ConnectionIAMPolicy("policy",
/// project=my_connection["project"],
/// location=my_connection["location"],
/// name=my_connection["name"],
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
/// Role = "roles/cloudbuild.connectionViewer",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.CloudBuildV2.ConnectionIAMPolicy("policy", new()
/// {
/// Project = my_connection.Project,
/// Location = my_connection.Location,
/// Name = my_connection.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuildv2"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/cloudbuild.connectionViewer",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = cloudbuildv2.NewConnectionIAMPolicy(ctx, "policy", &cloudbuildv2.ConnectionIAMPolicyArgs{
/// Project:    pulumi.Any(my_connection.Project),
/// Location:   pulumi.Any(my_connection.Location),
/// Name:       pulumi.Any(my_connection.Name),
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
/// import com.pulumi.gcp.cloudbuildv2.ConnectionIAMPolicy;
/// import com.pulumi.gcp.cloudbuildv2.ConnectionIAMPolicyArgs;
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
/// .role("roles/cloudbuild.connectionViewer")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new ConnectionIAMPolicy("policy", ConnectionIAMPolicyArgs.builder()
/// .project(my_connection.project())
/// .location(my_connection.location())
/// .name(my_connection.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:cloudbuildv2:ConnectionIAMPolicy
/// properties:
/// project: ${["my-connection"].project}
/// location: ${["my-connection"].location}
/// name: ${["my-connection"].name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/cloudbuild.connectionViewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.cloudbuildv2.ConnectionIAMBinding
/// " pulumi-lang-dotnet=" gcp.cloudbuildv2.ConnectionIAMBinding
/// " pulumi-lang-go=" cloudbuildv2.ConnectionIAMBinding
/// " pulumi-lang-python=" cloudbuildv2.ConnectionIAMBinding
/// " pulumi-lang-yaml=" gcp.cloudbuildv2.ConnectionIAMBinding
/// " pulumi-lang-java=" gcp.cloudbuildv2.ConnectionIAMBinding
/// "> gcp.cloudbuildv2.ConnectionIAMBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.cloudbuildv2.ConnectionIAMBinding("binding", {
/// project: my_connection.project,
/// location: my_connection.location,
/// name: my_connection.name,
/// role: "roles/cloudbuild.connectionViewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.cloudbuildv2.ConnectionIAMBinding("binding",
/// project=my_connection["project"],
/// location=my_connection["location"],
/// name=my_connection["name"],
/// role="roles/cloudbuild.connectionViewer",
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
/// var binding = new Gcp.CloudBuildV2.ConnectionIAMBinding("binding", new()
/// {
/// Project = my_connection.Project,
/// Location = my_connection.Location,
/// Name = my_connection.Name,
/// Role = "roles/cloudbuild.connectionViewer",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuildv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudbuildv2.NewConnectionIAMBinding(ctx, "binding", &cloudbuildv2.ConnectionIAMBindingArgs{
/// Project:  pulumi.Any(my_connection.Project),
/// Location: pulumi.Any(my_connection.Location),
/// Name:     pulumi.Any(my_connection.Name),
/// Role:     pulumi.String("roles/cloudbuild.connectionViewer"),
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
/// import com.pulumi.gcp.cloudbuildv2.ConnectionIAMBinding;
/// import com.pulumi.gcp.cloudbuildv2.ConnectionIAMBindingArgs;
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
/// var binding = new ConnectionIAMBinding("binding", ConnectionIAMBindingArgs.builder()
/// .project(my_connection.project())
/// .location(my_connection.location())
/// .name(my_connection.name())
/// .role("roles/cloudbuild.connectionViewer")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:cloudbuildv2:ConnectionIAMBinding
/// properties:
/// project: ${["my-connection"].project}
/// location: ${["my-connection"].location}
/// name: ${["my-connection"].name}
/// role: roles/cloudbuild.connectionViewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.cloudbuildv2.ConnectionIAMMember
/// " pulumi-lang-dotnet=" gcp.cloudbuildv2.ConnectionIAMMember
/// " pulumi-lang-go=" cloudbuildv2.ConnectionIAMMember
/// " pulumi-lang-python=" cloudbuildv2.ConnectionIAMMember
/// " pulumi-lang-yaml=" gcp.cloudbuildv2.ConnectionIAMMember
/// " pulumi-lang-java=" gcp.cloudbuildv2.ConnectionIAMMember
/// "> gcp.cloudbuildv2.ConnectionIAMMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.cloudbuildv2.ConnectionIAMMember("member", {
/// project: my_connection.project,
/// location: my_connection.location,
/// name: my_connection.name,
/// role: "roles/cloudbuild.connectionViewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.cloudbuildv2.ConnectionIAMMember("member",
/// project=my_connection["project"],
/// location=my_connection["location"],
/// name=my_connection["name"],
/// role="roles/cloudbuild.connectionViewer",
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
/// var member = new Gcp.CloudBuildV2.ConnectionIAMMember("member", new()
/// {
/// Project = my_connection.Project,
/// Location = my_connection.Location,
/// Name = my_connection.Name,
/// Role = "roles/cloudbuild.connectionViewer",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuildv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudbuildv2.NewConnectionIAMMember(ctx, "member", &cloudbuildv2.ConnectionIAMMemberArgs{
/// Project:  pulumi.Any(my_connection.Project),
/// Location: pulumi.Any(my_connection.Location),
/// Name:     pulumi.Any(my_connection.Name),
/// Role:     pulumi.String("roles/cloudbuild.connectionViewer"),
/// Member:   pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.cloudbuildv2.ConnectionIAMMember;
/// import com.pulumi.gcp.cloudbuildv2.ConnectionIAMMemberArgs;
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
/// var member = new ConnectionIAMMember("member", ConnectionIAMMemberArgs.builder()
/// .project(my_connection.project())
/// .location(my_connection.location())
/// .name(my_connection.name())
/// .role("roles/cloudbuild.connectionViewer")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:cloudbuildv2:ConnectionIAMMember
/// properties:
/// project: ${["my-connection"].project}
/// location: ${["my-connection"].location}
/// name: ${["my-connection"].name}
/// role: roles/cloudbuild.connectionViewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/connections/{{name}}
///
/// * {{project}}/{{location}}/{{name}}
///
/// * {{location}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud Build v2 connection IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:cloudbuildv2/connectionIAMPolicy:ConnectionIAMPolicy editor "projects/{{project}}/locations/{{location}}/connections/{{connection}} roles/cloudbuild.connectionViewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:cloudbuildv2/connectionIAMPolicy:ConnectionIAMPolicy editor "projects/{{project}}/locations/{{location}}/connections/{{connection}} roles/cloudbuild.connectionViewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:cloudbuildv2/connectionIAMPolicy:ConnectionIAMPolicy editor projects/{{project}}/locations/{{location}}/connections/{{connection}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class ConnectionIAMPolicy extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The location for the resource Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final Output<String> location;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> name;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  ConnectionIAMPolicy(
    String name, {
    ConnectionIAMPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:cloudbuildv2/connectionIAMPolicy:ConnectionIAMPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}
