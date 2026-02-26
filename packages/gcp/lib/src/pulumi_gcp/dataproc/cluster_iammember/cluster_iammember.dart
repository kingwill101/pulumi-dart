import 'package:pulumi/pulumi.dart';
import '../cluster_iammember_condition/cluster_iammember_condition.dart';
import 'cluster_iammember_args.dart';

/// Three different resources help you manage IAM policies on dataproc clusters. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.dataproc.ClusterIAMPolicy`" pulumi-lang-dotnet="`gcp.dataproc.ClusterIAMPolicy`" pulumi-lang-go="`dataproc.ClusterIAMPolicy`" pulumi-lang-python="`dataproc.ClusterIAMPolicy`" pulumi-lang-yaml="`gcp.dataproc.ClusterIAMPolicy`" pulumi-lang-java="`gcp.dataproc.ClusterIAMPolicy`">`gcp.dataproc.ClusterIAMPolicy`</span>: Authoritative. Sets the IAM policy for the cluster and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.dataproc.ClusterIAMBinding`" pulumi-lang-dotnet="`gcp.dataproc.ClusterIAMBinding`" pulumi-lang-go="`dataproc.ClusterIAMBinding`" pulumi-lang-python="`dataproc.ClusterIAMBinding`" pulumi-lang-yaml="`gcp.dataproc.ClusterIAMBinding`" pulumi-lang-java="`gcp.dataproc.ClusterIAMBinding`">`gcp.dataproc.ClusterIAMBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the cluster are preserved.
/// * <span pulumi-lang-nodejs="`gcp.dataproc.ClusterIAMMember`" pulumi-lang-dotnet="`gcp.dataproc.ClusterIAMMember`" pulumi-lang-go="`dataproc.ClusterIAMMember`" pulumi-lang-python="`dataproc.ClusterIAMMember`" pulumi-lang-yaml="`gcp.dataproc.ClusterIAMMember`" pulumi-lang-java="`gcp.dataproc.ClusterIAMMember`">`gcp.dataproc.ClusterIAMMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the cluster are preserved.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataproc.ClusterIAMPolicy`" pulumi-lang-dotnet="`gcp.dataproc.ClusterIAMPolicy`" pulumi-lang-go="`dataproc.ClusterIAMPolicy`" pulumi-lang-python="`dataproc.ClusterIAMPolicy`" pulumi-lang-yaml="`gcp.dataproc.ClusterIAMPolicy`" pulumi-lang-java="`gcp.dataproc.ClusterIAMPolicy`">`gcp.dataproc.ClusterIAMPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.dataproc.ClusterIAMBinding`" pulumi-lang-dotnet="`gcp.dataproc.ClusterIAMBinding`" pulumi-lang-go="`dataproc.ClusterIAMBinding`" pulumi-lang-python="`dataproc.ClusterIAMBinding`" pulumi-lang-yaml="`gcp.dataproc.ClusterIAMBinding`" pulumi-lang-java="`gcp.dataproc.ClusterIAMBinding`">`gcp.dataproc.ClusterIAMBinding`</span> and <span pulumi-lang-nodejs="`gcp.dataproc.ClusterIAMMember`" pulumi-lang-dotnet="`gcp.dataproc.ClusterIAMMember`" pulumi-lang-go="`dataproc.ClusterIAMMember`" pulumi-lang-python="`dataproc.ClusterIAMMember`" pulumi-lang-yaml="`gcp.dataproc.ClusterIAMMember`" pulumi-lang-java="`gcp.dataproc.ClusterIAMMember`">`gcp.dataproc.ClusterIAMMember`</span> or they will fight over what your policy should be. In addition, be careful not to accidentally unset ownership of the cluster as <span pulumi-lang-nodejs="`gcp.dataproc.ClusterIAMPolicy`" pulumi-lang-dotnet="`gcp.dataproc.ClusterIAMPolicy`" pulumi-lang-go="`dataproc.ClusterIAMPolicy`" pulumi-lang-python="`dataproc.ClusterIAMPolicy`" pulumi-lang-yaml="`gcp.dataproc.ClusterIAMPolicy`" pulumi-lang-java="`gcp.dataproc.ClusterIAMPolicy`">`gcp.dataproc.ClusterIAMPolicy`</span> replaces the entire policy.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataproc.ClusterIAMBinding`" pulumi-lang-dotnet="`gcp.dataproc.ClusterIAMBinding`" pulumi-lang-go="`dataproc.ClusterIAMBinding`" pulumi-lang-python="`dataproc.ClusterIAMBinding`" pulumi-lang-yaml="`gcp.dataproc.ClusterIAMBinding`" pulumi-lang-java="`gcp.dataproc.ClusterIAMBinding`">`gcp.dataproc.ClusterIAMBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.dataproc.ClusterIAMMember`" pulumi-lang-dotnet="`gcp.dataproc.ClusterIAMMember`" pulumi-lang-go="`dataproc.ClusterIAMMember`" pulumi-lang-python="`dataproc.ClusterIAMMember`" pulumi-lang-yaml="`gcp.dataproc.ClusterIAMMember`" pulumi-lang-java="`gcp.dataproc.ClusterIAMMember`">`gcp.dataproc.ClusterIAMMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.ClusterIAMPolicy
/// " pulumi-lang-dotnet=" gcp.dataproc.ClusterIAMPolicy
/// " pulumi-lang-go=" dataproc.ClusterIAMPolicy
/// " pulumi-lang-python=" dataproc.ClusterIAMPolicy
/// " pulumi-lang-yaml=" gcp.dataproc.ClusterIAMPolicy
/// " pulumi-lang-java=" gcp.dataproc.ClusterIAMPolicy
/// "> gcp.dataproc.ClusterIAMPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/editor",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const editor = new gcp.dataproc.ClusterIAMPolicy("editor", {
/// project: "your-project",
/// region: "your-region",
/// cluster: "your-dataproc-cluster",
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/editor",
/// "members": ["user:jane@example.com"],
/// }])
/// editor = gcp.dataproc.ClusterIAMPolicy("editor",
/// project="your-project",
/// region="your-region",
/// cluster="your-dataproc-cluster",
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
/// Role = "roles/editor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var editor = new Gcp.Dataproc.ClusterIAMPolicy("editor", new()
/// {
/// Project = "your-project",
/// Region = "your-region",
/// Cluster = "your-dataproc-cluster",
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/editor",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = dataproc.NewClusterIAMPolicy(ctx, "editor", &dataproc.ClusterIAMPolicyArgs{
/// Project:    pulumi.String("your-project"),
/// Region:     pulumi.String("your-region"),
/// Cluster:    pulumi.String("your-dataproc-cluster"),
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
/// import com.pulumi.gcp.dataproc.ClusterIAMPolicy;
/// import com.pulumi.gcp.dataproc.ClusterIAMPolicyArgs;
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
/// .role("roles/editor")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var editor = new ClusterIAMPolicy("editor", ClusterIAMPolicyArgs.builder()
/// .project("your-project")
/// .region("your-region")
/// .cluster("your-dataproc-cluster")
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// editor:
/// type: gcp:dataproc:ClusterIAMPolicy
/// properties:
/// project: your-project
/// region: your-region
/// cluster: your-dataproc-cluster
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/editor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.ClusterIAMBinding
/// " pulumi-lang-dotnet=" gcp.dataproc.ClusterIAMBinding
/// " pulumi-lang-go=" dataproc.ClusterIAMBinding
/// " pulumi-lang-python=" dataproc.ClusterIAMBinding
/// " pulumi-lang-yaml=" gcp.dataproc.ClusterIAMBinding
/// " pulumi-lang-java=" gcp.dataproc.ClusterIAMBinding
/// "> gcp.dataproc.ClusterIAMBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.dataproc.ClusterIAMBinding("editor", {
/// cluster: "your-dataproc-cluster",
/// role: "roles/editor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.dataproc.ClusterIAMBinding("editor",
/// cluster="your-dataproc-cluster",
/// role="roles/editor",
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
/// var editor = new Gcp.Dataproc.ClusterIAMBinding("editor", new()
/// {
/// Cluster = "your-dataproc-cluster",
/// Role = "roles/editor",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.NewClusterIAMBinding(ctx, "editor", &dataproc.ClusterIAMBindingArgs{
/// Cluster: pulumi.String("your-dataproc-cluster"),
/// Role:    pulumi.String("roles/editor"),
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
/// import com.pulumi.gcp.dataproc.ClusterIAMBinding;
/// import com.pulumi.gcp.dataproc.ClusterIAMBindingArgs;
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
/// var editor = new ClusterIAMBinding("editor", ClusterIAMBindingArgs.builder()
/// .cluster("your-dataproc-cluster")
/// .role("roles/editor")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// editor:
/// type: gcp:dataproc:ClusterIAMBinding
/// properties:
/// cluster: your-dataproc-cluster
/// role: roles/editor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.ClusterIAMMember
/// " pulumi-lang-dotnet=" gcp.dataproc.ClusterIAMMember
/// " pulumi-lang-go=" dataproc.ClusterIAMMember
/// " pulumi-lang-python=" dataproc.ClusterIAMMember
/// " pulumi-lang-yaml=" gcp.dataproc.ClusterIAMMember
/// " pulumi-lang-java=" gcp.dataproc.ClusterIAMMember
/// "> gcp.dataproc.ClusterIAMMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.dataproc.ClusterIAMMember("editor", {
/// cluster: "your-dataproc-cluster",
/// role: "roles/editor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.dataproc.ClusterIAMMember("editor",
/// cluster="your-dataproc-cluster",
/// role="roles/editor",
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
/// var editor = new Gcp.Dataproc.ClusterIAMMember("editor", new()
/// {
/// Cluster = "your-dataproc-cluster",
/// Role = "roles/editor",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.NewClusterIAMMember(ctx, "editor", &dataproc.ClusterIAMMemberArgs{
/// Cluster: pulumi.String("your-dataproc-cluster"),
/// Role:    pulumi.String("roles/editor"),
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
/// import com.pulumi.gcp.dataproc.ClusterIAMMember;
/// import com.pulumi.gcp.dataproc.ClusterIAMMemberArgs;
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
/// var editor = new ClusterIAMMember("editor", ClusterIAMMemberArgs.builder()
/// .cluster("your-dataproc-cluster")
/// .role("roles/editor")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// editor:
/// type: gcp:dataproc:ClusterIAMMember
/// properties:
/// cluster: your-dataproc-cluster
/// role: roles/editor
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.ClusterIAMPolicy
/// " pulumi-lang-dotnet=" gcp.dataproc.ClusterIAMPolicy
/// " pulumi-lang-go=" dataproc.ClusterIAMPolicy
/// " pulumi-lang-python=" dataproc.ClusterIAMPolicy
/// " pulumi-lang-yaml=" gcp.dataproc.ClusterIAMPolicy
/// " pulumi-lang-java=" gcp.dataproc.ClusterIAMPolicy
/// "> gcp.dataproc.ClusterIAMPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/editor",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const editor = new gcp.dataproc.ClusterIAMPolicy("editor", {
/// project: "your-project",
/// region: "your-region",
/// cluster: "your-dataproc-cluster",
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/editor",
/// "members": ["user:jane@example.com"],
/// }])
/// editor = gcp.dataproc.ClusterIAMPolicy("editor",
/// project="your-project",
/// region="your-region",
/// cluster="your-dataproc-cluster",
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
/// Role = "roles/editor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var editor = new Gcp.Dataproc.ClusterIAMPolicy("editor", new()
/// {
/// Project = "your-project",
/// Region = "your-region",
/// Cluster = "your-dataproc-cluster",
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/editor",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = dataproc.NewClusterIAMPolicy(ctx, "editor", &dataproc.ClusterIAMPolicyArgs{
/// Project:    pulumi.String("your-project"),
/// Region:     pulumi.String("your-region"),
/// Cluster:    pulumi.String("your-dataproc-cluster"),
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
/// import com.pulumi.gcp.dataproc.ClusterIAMPolicy;
/// import com.pulumi.gcp.dataproc.ClusterIAMPolicyArgs;
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
/// .role("roles/editor")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var editor = new ClusterIAMPolicy("editor", ClusterIAMPolicyArgs.builder()
/// .project("your-project")
/// .region("your-region")
/// .cluster("your-dataproc-cluster")
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// editor:
/// type: gcp:dataproc:ClusterIAMPolicy
/// properties:
/// project: your-project
/// region: your-region
/// cluster: your-dataproc-cluster
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/editor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.ClusterIAMBinding
/// " pulumi-lang-dotnet=" gcp.dataproc.ClusterIAMBinding
/// " pulumi-lang-go=" dataproc.ClusterIAMBinding
/// " pulumi-lang-python=" dataproc.ClusterIAMBinding
/// " pulumi-lang-yaml=" gcp.dataproc.ClusterIAMBinding
/// " pulumi-lang-java=" gcp.dataproc.ClusterIAMBinding
/// "> gcp.dataproc.ClusterIAMBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.dataproc.ClusterIAMBinding("editor", {
/// cluster: "your-dataproc-cluster",
/// role: "roles/editor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.dataproc.ClusterIAMBinding("editor",
/// cluster="your-dataproc-cluster",
/// role="roles/editor",
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
/// var editor = new Gcp.Dataproc.ClusterIAMBinding("editor", new()
/// {
/// Cluster = "your-dataproc-cluster",
/// Role = "roles/editor",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.NewClusterIAMBinding(ctx, "editor", &dataproc.ClusterIAMBindingArgs{
/// Cluster: pulumi.String("your-dataproc-cluster"),
/// Role:    pulumi.String("roles/editor"),
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
/// import com.pulumi.gcp.dataproc.ClusterIAMBinding;
/// import com.pulumi.gcp.dataproc.ClusterIAMBindingArgs;
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
/// var editor = new ClusterIAMBinding("editor", ClusterIAMBindingArgs.builder()
/// .cluster("your-dataproc-cluster")
/// .role("roles/editor")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// editor:
/// type: gcp:dataproc:ClusterIAMBinding
/// properties:
/// cluster: your-dataproc-cluster
/// role: roles/editor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.ClusterIAMMember
/// " pulumi-lang-dotnet=" gcp.dataproc.ClusterIAMMember
/// " pulumi-lang-go=" dataproc.ClusterIAMMember
/// " pulumi-lang-python=" dataproc.ClusterIAMMember
/// " pulumi-lang-yaml=" gcp.dataproc.ClusterIAMMember
/// " pulumi-lang-java=" gcp.dataproc.ClusterIAMMember
/// "> gcp.dataproc.ClusterIAMMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.dataproc.ClusterIAMMember("editor", {
/// cluster: "your-dataproc-cluster",
/// role: "roles/editor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.dataproc.ClusterIAMMember("editor",
/// cluster="your-dataproc-cluster",
/// role="roles/editor",
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
/// var editor = new Gcp.Dataproc.ClusterIAMMember("editor", new()
/// {
/// Cluster = "your-dataproc-cluster",
/// Role = "roles/editor",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.NewClusterIAMMember(ctx, "editor", &dataproc.ClusterIAMMemberArgs{
/// Cluster: pulumi.String("your-dataproc-cluster"),
/// Role:    pulumi.String("roles/editor"),
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
/// import com.pulumi.gcp.dataproc.ClusterIAMMember;
/// import com.pulumi.gcp.dataproc.ClusterIAMMemberArgs;
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
/// var editor = new ClusterIAMMember("editor", ClusterIAMMemberArgs.builder()
/// .cluster("your-dataproc-cluster")
/// .role("roles/editor")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// editor:
/// type: gcp:dataproc:ClusterIAMMember
/// properties:
/// cluster: your-dataproc-cluster
/// role: roles/editor
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Importing IAM policies
///
/// IAM policy imports use the `cluster` identifier of the Dataproc Cluster resource only. For example:
///
/// * `projects/{project}/regions/{region}/clusters/{cluster}`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import IAM policies:
///
/// tf
///
/// import {
///
/// id = projects/{project}/regions/{region}/clusters/{cluster}
///
/// to = google_dataproc_cluster_iam_policy.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:dataproc/clusterIAMMember:ClusterIAMMember default projects/{project}/regions/{region}/clusters/{cluster}
/// ```
class ClusterIAMMember extends CustomResource {
  /// The name or relative resource id of the cluster to manage IAM policies for.
  ///
  /// For <span pulumi-lang-nodejs="`gcp.dataproc.ClusterIAMMember`" pulumi-lang-dotnet="`gcp.dataproc.ClusterIAMMember`" pulumi-lang-go="`dataproc.ClusterIAMMember`" pulumi-lang-python="`dataproc.ClusterIAMMember`" pulumi-lang-yaml="`gcp.dataproc.ClusterIAMMember`" pulumi-lang-java="`gcp.dataproc.ClusterIAMMember`">`gcp.dataproc.ClusterIAMMember`</span> or <span pulumi-lang-nodejs="`gcp.dataproc.ClusterIAMBinding`" pulumi-lang-dotnet="`gcp.dataproc.ClusterIAMBinding`" pulumi-lang-go="`dataproc.ClusterIAMBinding`" pulumi-lang-python="`dataproc.ClusterIAMBinding`" pulumi-lang-yaml="`gcp.dataproc.ClusterIAMBinding`" pulumi-lang-java="`gcp.dataproc.ClusterIAMBinding`">`gcp.dataproc.ClusterIAMBinding`</span>:
  late final Output<String> cluster;
  late final Output<ClusterIAMMemberCondition?> condition;

  /// (Computed) The etag of the clusters's IAM policy.
  late final Output<String> etag;

  /// Identities that will be granted the privilege in <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final Output<String> member;

  /// The project in which the cluster belongs. If it
  /// is not provided, the provider will use a default.
  late final Output<String> project;

  /// The region in which the cluster belongs. If it
  /// is not provided, the provider will use a default.
  late final Output<String> region;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.dataproc.ClusterIAMBinding`" pulumi-lang-dotnet="`gcp.dataproc.ClusterIAMBinding`" pulumi-lang-go="`dataproc.ClusterIAMBinding`" pulumi-lang-python="`dataproc.ClusterIAMBinding`" pulumi-lang-yaml="`gcp.dataproc.ClusterIAMBinding`" pulumi-lang-java="`gcp.dataproc.ClusterIAMBinding`">`gcp.dataproc.ClusterIAMBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  ///
  /// <span pulumi-lang-nodejs="`gcp.dataproc.ClusterIAMPolicy`" pulumi-lang-dotnet="`gcp.dataproc.ClusterIAMPolicy`" pulumi-lang-go="`dataproc.ClusterIAMPolicy`" pulumi-lang-python="`dataproc.ClusterIAMPolicy`" pulumi-lang-yaml="`gcp.dataproc.ClusterIAMPolicy`" pulumi-lang-java="`gcp.dataproc.ClusterIAMPolicy`">`gcp.dataproc.ClusterIAMPolicy`</span> only:
  late final Output<String> role;

  ClusterIAMMember(
    String name, {
    ClusterIAMMemberArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/clusterIAMMember:ClusterIAMMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cluster = registerOutput<String>('cluster');
    this.condition = registerOutput<ClusterIAMMemberCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.member = registerOutput<String>('member');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
  }
}
