import 'package:pulumi/pulumi.dart';
import 'instance_iam_policy_args.dart';

/// Three different resources help you manage IAM policies on bigtable instances. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.bigtable.InstanceIamPolicy`" pulumi-lang-dotnet="`gcp.bigtable.InstanceIamPolicy`" pulumi-lang-go="`bigtable.InstanceIamPolicy`" pulumi-lang-python="`bigtable.InstanceIamPolicy`" pulumi-lang-yaml="`gcp.bigtable.InstanceIamPolicy`" pulumi-lang-java="`gcp.bigtable.InstanceIamPolicy`">`gcp.bigtable.InstanceIamPolicy`</span>: Authoritative. Sets the IAM policy for the instance and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.bigtable.InstanceIamBinding`" pulumi-lang-dotnet="`gcp.bigtable.InstanceIamBinding`" pulumi-lang-go="`bigtable.InstanceIamBinding`" pulumi-lang-python="`bigtable.InstanceIamBinding`" pulumi-lang-yaml="`gcp.bigtable.InstanceIamBinding`" pulumi-lang-java="`gcp.bigtable.InstanceIamBinding`">`gcp.bigtable.InstanceIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the instance are preserved.
/// * <span pulumi-lang-nodejs="`gcp.bigtable.InstanceIamMember`" pulumi-lang-dotnet="`gcp.bigtable.InstanceIamMember`" pulumi-lang-go="`bigtable.InstanceIamMember`" pulumi-lang-python="`bigtable.InstanceIamMember`" pulumi-lang-yaml="`gcp.bigtable.InstanceIamMember`" pulumi-lang-java="`gcp.bigtable.InstanceIamMember`">`gcp.bigtable.InstanceIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the instance are preserved.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.bigtable.InstanceIamPolicy`" pulumi-lang-dotnet="`gcp.bigtable.InstanceIamPolicy`" pulumi-lang-go="`bigtable.InstanceIamPolicy`" pulumi-lang-python="`bigtable.InstanceIamPolicy`" pulumi-lang-yaml="`gcp.bigtable.InstanceIamPolicy`" pulumi-lang-java="`gcp.bigtable.InstanceIamPolicy`">`gcp.bigtable.InstanceIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.bigtable.InstanceIamBinding`" pulumi-lang-dotnet="`gcp.bigtable.InstanceIamBinding`" pulumi-lang-go="`bigtable.InstanceIamBinding`" pulumi-lang-python="`bigtable.InstanceIamBinding`" pulumi-lang-yaml="`gcp.bigtable.InstanceIamBinding`" pulumi-lang-java="`gcp.bigtable.InstanceIamBinding`">`gcp.bigtable.InstanceIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.bigtable.InstanceIamMember`" pulumi-lang-dotnet="`gcp.bigtable.InstanceIamMember`" pulumi-lang-go="`bigtable.InstanceIamMember`" pulumi-lang-python="`bigtable.InstanceIamMember`" pulumi-lang-yaml="`gcp.bigtable.InstanceIamMember`" pulumi-lang-java="`gcp.bigtable.InstanceIamMember`">`gcp.bigtable.InstanceIamMember`</span> or they will fight over what your policy should be. In addition, be careful not to accidentally unset ownership of the instance as <span pulumi-lang-nodejs="`gcp.bigtable.InstanceIamPolicy`" pulumi-lang-dotnet="`gcp.bigtable.InstanceIamPolicy`" pulumi-lang-go="`bigtable.InstanceIamPolicy`" pulumi-lang-python="`bigtable.InstanceIamPolicy`" pulumi-lang-yaml="`gcp.bigtable.InstanceIamPolicy`" pulumi-lang-java="`gcp.bigtable.InstanceIamPolicy`">`gcp.bigtable.InstanceIamPolicy`</span> replaces the entire policy.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.bigtable.InstanceIamBinding`" pulumi-lang-dotnet="`gcp.bigtable.InstanceIamBinding`" pulumi-lang-go="`bigtable.InstanceIamBinding`" pulumi-lang-python="`bigtable.InstanceIamBinding`" pulumi-lang-yaml="`gcp.bigtable.InstanceIamBinding`" pulumi-lang-java="`gcp.bigtable.InstanceIamBinding`">`gcp.bigtable.InstanceIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.bigtable.InstanceIamMember`" pulumi-lang-dotnet="`gcp.bigtable.InstanceIamMember`" pulumi-lang-go="`bigtable.InstanceIamMember`" pulumi-lang-python="`bigtable.InstanceIamMember`" pulumi-lang-yaml="`gcp.bigtable.InstanceIamMember`" pulumi-lang-java="`gcp.bigtable.InstanceIamMember`">`gcp.bigtable.InstanceIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// ##<span pulumi-lang-nodejs=" gcp.bigtable.InstanceIamPolicy
/// " pulumi-lang-dotnet=" gcp.bigtable.InstanceIamPolicy
/// " pulumi-lang-go=" bigtable.InstanceIamPolicy
/// " pulumi-lang-python=" bigtable.InstanceIamPolicy
/// " pulumi-lang-yaml=" gcp.bigtable.InstanceIamPolicy
/// " pulumi-lang-java=" gcp.bigtable.InstanceIamPolicy
/// "> gcp.bigtable.InstanceIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/bigtable.user",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const editor = new gcp.bigtable.InstanceIamPolicy("editor", {
/// project: "your-project",
/// instance: "your-bigtable-instance",
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/bigtable.user",
/// "members": ["user:jane@example.com"],
/// }])
/// editor = gcp.bigtable.InstanceIamPolicy("editor",
/// project="your-project",
/// instance="your-bigtable-instance",
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
/// Role = "roles/bigtable.user",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var editor = new Gcp.BigTable.InstanceIamPolicy("editor", new()
/// {
/// Project = "your-project",
/// Instance = "your-bigtable-instance",
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/bigtable.user",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = bigtable.NewInstanceIamPolicy(ctx, "editor", &bigtable.InstanceIamPolicyArgs{
/// Project:    pulumi.String("your-project"),
/// Instance:   pulumi.String("your-bigtable-instance"),
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
/// import com.pulumi.gcp.bigtable.InstanceIamPolicy;
/// import com.pulumi.gcp.bigtable.InstanceIamPolicyArgs;
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
/// .role("roles/bigtable.user")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var editor = new InstanceIamPolicy("editor", InstanceIamPolicyArgs.builder()
/// .project("your-project")
/// .instance("your-bigtable-instance")
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// editor:
/// type: gcp:bigtable:InstanceIamPolicy
/// properties:
/// project: your-project
/// instance: your-bigtable-instance
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/bigtable.user
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.bigtable.InstanceIamBinding
/// " pulumi-lang-dotnet=" gcp.bigtable.InstanceIamBinding
/// " pulumi-lang-go=" bigtable.InstanceIamBinding
/// " pulumi-lang-python=" bigtable.InstanceIamBinding
/// " pulumi-lang-yaml=" gcp.bigtable.InstanceIamBinding
/// " pulumi-lang-java=" gcp.bigtable.InstanceIamBinding
/// "> gcp.bigtable.InstanceIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.bigtable.InstanceIamBinding("editor", {
/// instance: "your-bigtable-instance",
/// role: "roles/bigtable.user",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.bigtable.InstanceIamBinding("editor",
/// instance="your-bigtable-instance",
/// role="roles/bigtable.user",
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
/// var editor = new Gcp.BigTable.InstanceIamBinding("editor", new()
/// {
/// Instance = "your-bigtable-instance",
/// Role = "roles/bigtable.user",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigtable.NewInstanceIamBinding(ctx, "editor", &bigtable.InstanceIamBindingArgs{
/// Instance: pulumi.String("your-bigtable-instance"),
/// Role:     pulumi.String("roles/bigtable.user"),
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
/// import com.pulumi.gcp.bigtable.InstanceIamBinding;
/// import com.pulumi.gcp.bigtable.InstanceIamBindingArgs;
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
/// var editor = new InstanceIamBinding("editor", InstanceIamBindingArgs.builder()
/// .instance("your-bigtable-instance")
/// .role("roles/bigtable.user")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// editor:
/// type: gcp:bigtable:InstanceIamBinding
/// properties:
/// instance: your-bigtable-instance
/// role: roles/bigtable.user
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.bigtable.InstanceIamMember
/// " pulumi-lang-dotnet=" gcp.bigtable.InstanceIamMember
/// " pulumi-lang-go=" bigtable.InstanceIamMember
/// " pulumi-lang-python=" bigtable.InstanceIamMember
/// " pulumi-lang-yaml=" gcp.bigtable.InstanceIamMember
/// " pulumi-lang-java=" gcp.bigtable.InstanceIamMember
/// "> gcp.bigtable.InstanceIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.bigtable.InstanceIamMember("editor", {
/// instance: "your-bigtable-instance",
/// role: "roles/bigtable.user",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.bigtable.InstanceIamMember("editor",
/// instance="your-bigtable-instance",
/// role="roles/bigtable.user",
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
/// var editor = new Gcp.BigTable.InstanceIamMember("editor", new()
/// {
/// Instance = "your-bigtable-instance",
/// Role = "roles/bigtable.user",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigtable.NewInstanceIamMember(ctx, "editor", &bigtable.InstanceIamMemberArgs{
/// Instance: pulumi.String("your-bigtable-instance"),
/// Role:     pulumi.String("roles/bigtable.user"),
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
/// import com.pulumi.gcp.bigtable.InstanceIamMember;
/// import com.pulumi.gcp.bigtable.InstanceIamMemberArgs;
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
/// var editor = new InstanceIamMember("editor", InstanceIamMemberArgs.builder()
/// .instance("your-bigtable-instance")
/// .role("roles/bigtable.user")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// editor:
/// type: gcp:bigtable:InstanceIamMember
/// properties:
/// instance: your-bigtable-instance
/// role: roles/bigtable.user
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.bigtable.InstanceIamPolicy
/// " pulumi-lang-dotnet=" gcp.bigtable.InstanceIamPolicy
/// " pulumi-lang-go=" bigtable.InstanceIamPolicy
/// " pulumi-lang-python=" bigtable.InstanceIamPolicy
/// " pulumi-lang-yaml=" gcp.bigtable.InstanceIamPolicy
/// " pulumi-lang-java=" gcp.bigtable.InstanceIamPolicy
/// "> gcp.bigtable.InstanceIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/bigtable.user",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const editor = new gcp.bigtable.InstanceIamPolicy("editor", {
/// project: "your-project",
/// instance: "your-bigtable-instance",
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/bigtable.user",
/// "members": ["user:jane@example.com"],
/// }])
/// editor = gcp.bigtable.InstanceIamPolicy("editor",
/// project="your-project",
/// instance="your-bigtable-instance",
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
/// Role = "roles/bigtable.user",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var editor = new Gcp.BigTable.InstanceIamPolicy("editor", new()
/// {
/// Project = "your-project",
/// Instance = "your-bigtable-instance",
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/bigtable.user",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = bigtable.NewInstanceIamPolicy(ctx, "editor", &bigtable.InstanceIamPolicyArgs{
/// Project:    pulumi.String("your-project"),
/// Instance:   pulumi.String("your-bigtable-instance"),
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
/// import com.pulumi.gcp.bigtable.InstanceIamPolicy;
/// import com.pulumi.gcp.bigtable.InstanceIamPolicyArgs;
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
/// .role("roles/bigtable.user")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var editor = new InstanceIamPolicy("editor", InstanceIamPolicyArgs.builder()
/// .project("your-project")
/// .instance("your-bigtable-instance")
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// editor:
/// type: gcp:bigtable:InstanceIamPolicy
/// properties:
/// project: your-project
/// instance: your-bigtable-instance
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/bigtable.user
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.bigtable.InstanceIamBinding
/// " pulumi-lang-dotnet=" gcp.bigtable.InstanceIamBinding
/// " pulumi-lang-go=" bigtable.InstanceIamBinding
/// " pulumi-lang-python=" bigtable.InstanceIamBinding
/// " pulumi-lang-yaml=" gcp.bigtable.InstanceIamBinding
/// " pulumi-lang-java=" gcp.bigtable.InstanceIamBinding
/// "> gcp.bigtable.InstanceIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.bigtable.InstanceIamBinding("editor", {
/// instance: "your-bigtable-instance",
/// role: "roles/bigtable.user",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.bigtable.InstanceIamBinding("editor",
/// instance="your-bigtable-instance",
/// role="roles/bigtable.user",
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
/// var editor = new Gcp.BigTable.InstanceIamBinding("editor", new()
/// {
/// Instance = "your-bigtable-instance",
/// Role = "roles/bigtable.user",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigtable.NewInstanceIamBinding(ctx, "editor", &bigtable.InstanceIamBindingArgs{
/// Instance: pulumi.String("your-bigtable-instance"),
/// Role:     pulumi.String("roles/bigtable.user"),
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
/// import com.pulumi.gcp.bigtable.InstanceIamBinding;
/// import com.pulumi.gcp.bigtable.InstanceIamBindingArgs;
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
/// var editor = new InstanceIamBinding("editor", InstanceIamBindingArgs.builder()
/// .instance("your-bigtable-instance")
/// .role("roles/bigtable.user")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// editor:
/// type: gcp:bigtable:InstanceIamBinding
/// properties:
/// instance: your-bigtable-instance
/// role: roles/bigtable.user
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.bigtable.InstanceIamMember
/// " pulumi-lang-dotnet=" gcp.bigtable.InstanceIamMember
/// " pulumi-lang-go=" bigtable.InstanceIamMember
/// " pulumi-lang-python=" bigtable.InstanceIamMember
/// " pulumi-lang-yaml=" gcp.bigtable.InstanceIamMember
/// " pulumi-lang-java=" gcp.bigtable.InstanceIamMember
/// "> gcp.bigtable.InstanceIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.bigtable.InstanceIamMember("editor", {
/// instance: "your-bigtable-instance",
/// role: "roles/bigtable.user",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.bigtable.InstanceIamMember("editor",
/// instance="your-bigtable-instance",
/// role="roles/bigtable.user",
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
/// var editor = new Gcp.BigTable.InstanceIamMember("editor", new()
/// {
/// Instance = "your-bigtable-instance",
/// Role = "roles/bigtable.user",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigtable.NewInstanceIamMember(ctx, "editor", &bigtable.InstanceIamMemberArgs{
/// Instance: pulumi.String("your-bigtable-instance"),
/// Role:     pulumi.String("roles/bigtable.user"),
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
/// import com.pulumi.gcp.bigtable.InstanceIamMember;
/// import com.pulumi.gcp.bigtable.InstanceIamMemberArgs;
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
/// var editor = new InstanceIamMember("editor", InstanceIamMemberArgs.builder()
/// .instance("your-bigtable-instance")
/// .role("roles/bigtable.user")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// editor:
/// type: gcp:bigtable:InstanceIamMember
/// properties:
/// instance: your-bigtable-instance
/// role: roles/bigtable.user
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Importing IAM policies
///
/// IAM policy imports use the `instance` identifier of the Bigtable Instance resource only. For example:
///
/// * `"projects/{project}/instances/{instance}"`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import IAM policies:
///
/// tf
///
/// import {
///
/// id = "projects/{project}/instances/{instance}"
///
/// to = google_bigtable_instance_iam_policy.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:bigtable/instanceIamPolicy:InstanceIamPolicy default projects/{project}/instances/{instance}
/// ```
class InstanceIamPolicy extends CustomResource {
  /// (Computed) The etag of the instances's IAM policy.
  late final Output<String> etag;

  /// The name or relative resource id of the instance to manage IAM policies for.
  ///
  /// For <span pulumi-lang-nodejs="`gcp.bigtable.InstanceIamMember`" pulumi-lang-dotnet="`gcp.bigtable.InstanceIamMember`" pulumi-lang-go="`bigtable.InstanceIamMember`" pulumi-lang-python="`bigtable.InstanceIamMember`" pulumi-lang-yaml="`gcp.bigtable.InstanceIamMember`" pulumi-lang-java="`gcp.bigtable.InstanceIamMember`">`gcp.bigtable.InstanceIamMember`</span> or <span pulumi-lang-nodejs="`gcp.bigtable.InstanceIamBinding`" pulumi-lang-dotnet="`gcp.bigtable.InstanceIamBinding`" pulumi-lang-go="`bigtable.InstanceIamBinding`" pulumi-lang-python="`bigtable.InstanceIamBinding`" pulumi-lang-yaml="`gcp.bigtable.InstanceIamBinding`" pulumi-lang-java="`gcp.bigtable.InstanceIamBinding`">`gcp.bigtable.InstanceIamBinding`</span>:
  late final Output<String> instance;
  late final Output<String> policyData;
  late final Output<String> project;

  InstanceIamPolicy(
    String name, {
    InstanceIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:bigtable/instanceIamPolicy:InstanceIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = Output.createUnknown<String>();
    this.instance = Output.createUnknown<String>();
    this.policyData = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
  }
}
