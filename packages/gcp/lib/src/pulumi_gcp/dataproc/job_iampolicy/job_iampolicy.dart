import 'package:pulumi/pulumi.dart';
import 'job_iampolicy_args.dart';

/// Three different resources help you manage IAM policies on dataproc jobs. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.dataproc.JobIAMPolicy`" pulumi-lang-dotnet="`gcp.dataproc.JobIAMPolicy`" pulumi-lang-go="`dataproc.JobIAMPolicy`" pulumi-lang-python="`dataproc.JobIAMPolicy`" pulumi-lang-yaml="`gcp.dataproc.JobIAMPolicy`" pulumi-lang-java="`gcp.dataproc.JobIAMPolicy`">`gcp.dataproc.JobIAMPolicy`</span>: Authoritative. Sets the IAM policy for the job and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.dataproc.JobIAMBinding`" pulumi-lang-dotnet="`gcp.dataproc.JobIAMBinding`" pulumi-lang-go="`dataproc.JobIAMBinding`" pulumi-lang-python="`dataproc.JobIAMBinding`" pulumi-lang-yaml="`gcp.dataproc.JobIAMBinding`" pulumi-lang-java="`gcp.dataproc.JobIAMBinding`">`gcp.dataproc.JobIAMBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the job are preserved.
/// * <span pulumi-lang-nodejs="`gcp.dataproc.JobIAMMember`" pulumi-lang-dotnet="`gcp.dataproc.JobIAMMember`" pulumi-lang-go="`dataproc.JobIAMMember`" pulumi-lang-python="`dataproc.JobIAMMember`" pulumi-lang-yaml="`gcp.dataproc.JobIAMMember`" pulumi-lang-java="`gcp.dataproc.JobIAMMember`">`gcp.dataproc.JobIAMMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the job are preserved.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataproc.JobIAMPolicy`" pulumi-lang-dotnet="`gcp.dataproc.JobIAMPolicy`" pulumi-lang-go="`dataproc.JobIAMPolicy`" pulumi-lang-python="`dataproc.JobIAMPolicy`" pulumi-lang-yaml="`gcp.dataproc.JobIAMPolicy`" pulumi-lang-java="`gcp.dataproc.JobIAMPolicy`">`gcp.dataproc.JobIAMPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.dataproc.JobIAMBinding`" pulumi-lang-dotnet="`gcp.dataproc.JobIAMBinding`" pulumi-lang-go="`dataproc.JobIAMBinding`" pulumi-lang-python="`dataproc.JobIAMBinding`" pulumi-lang-yaml="`gcp.dataproc.JobIAMBinding`" pulumi-lang-java="`gcp.dataproc.JobIAMBinding`">`gcp.dataproc.JobIAMBinding`</span> and <span pulumi-lang-nodejs="`gcp.dataproc.JobIAMMember`" pulumi-lang-dotnet="`gcp.dataproc.JobIAMMember`" pulumi-lang-go="`dataproc.JobIAMMember`" pulumi-lang-python="`dataproc.JobIAMMember`" pulumi-lang-yaml="`gcp.dataproc.JobIAMMember`" pulumi-lang-java="`gcp.dataproc.JobIAMMember`">`gcp.dataproc.JobIAMMember`</span> or they will fight over what your policy should be. In addition, be careful not to accidentally unset ownership of the job as <span pulumi-lang-nodejs="`gcp.dataproc.JobIAMPolicy`" pulumi-lang-dotnet="`gcp.dataproc.JobIAMPolicy`" pulumi-lang-go="`dataproc.JobIAMPolicy`" pulumi-lang-python="`dataproc.JobIAMPolicy`" pulumi-lang-yaml="`gcp.dataproc.JobIAMPolicy`" pulumi-lang-java="`gcp.dataproc.JobIAMPolicy`">`gcp.dataproc.JobIAMPolicy`</span> replaces the entire policy.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataproc.JobIAMBinding`" pulumi-lang-dotnet="`gcp.dataproc.JobIAMBinding`" pulumi-lang-go="`dataproc.JobIAMBinding`" pulumi-lang-python="`dataproc.JobIAMBinding`" pulumi-lang-yaml="`gcp.dataproc.JobIAMBinding`" pulumi-lang-java="`gcp.dataproc.JobIAMBinding`">`gcp.dataproc.JobIAMBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.dataproc.JobIAMMember`" pulumi-lang-dotnet="`gcp.dataproc.JobIAMMember`" pulumi-lang-go="`dataproc.JobIAMMember`" pulumi-lang-python="`dataproc.JobIAMMember`" pulumi-lang-yaml="`gcp.dataproc.JobIAMMember`" pulumi-lang-java="`gcp.dataproc.JobIAMMember`">`gcp.dataproc.JobIAMMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.JobIAMPolicy
/// " pulumi-lang-dotnet=" gcp.dataproc.JobIAMPolicy
/// " pulumi-lang-go=" dataproc.JobIAMPolicy
/// " pulumi-lang-python=" dataproc.JobIAMPolicy
/// " pulumi-lang-yaml=" gcp.dataproc.JobIAMPolicy
/// " pulumi-lang-java=" gcp.dataproc.JobIAMPolicy
/// "> gcp.dataproc.JobIAMPolicy
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
/// const editor = new gcp.dataproc.JobIAMPolicy("editor", {
/// project: "your-project",
/// region: "your-region",
/// jobId: "your-dataproc-job",
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
/// editor = gcp.dataproc.JobIAMPolicy("editor",
/// project="your-project",
/// region="your-region",
/// job_id="your-dataproc-job",
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
/// var editor = new Gcp.Dataproc.JobIAMPolicy("editor", new()
/// {
/// Project = "your-project",
/// Region = "your-region",
/// JobId = "your-dataproc-job",
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
/// _, err = dataproc.NewJobIAMPolicy(ctx, "editor", &dataproc.JobIAMPolicyArgs{
/// Project:    pulumi.String("your-project"),
/// Region:     pulumi.String("your-region"),
/// JobId:      pulumi.String("your-dataproc-job"),
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
/// import com.pulumi.gcp.dataproc.JobIAMPolicy;
/// import com.pulumi.gcp.dataproc.JobIAMPolicyArgs;
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
/// var editor = new JobIAMPolicy("editor", JobIAMPolicyArgs.builder()
/// .project("your-project")
/// .region("your-region")
/// .jobId("your-dataproc-job")
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// editor:
/// type: gcp:dataproc:JobIAMPolicy
/// properties:
/// project: your-project
/// region: your-region
/// jobId: your-dataproc-job
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
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.JobIAMBinding
/// " pulumi-lang-dotnet=" gcp.dataproc.JobIAMBinding
/// " pulumi-lang-go=" dataproc.JobIAMBinding
/// " pulumi-lang-python=" dataproc.JobIAMBinding
/// " pulumi-lang-yaml=" gcp.dataproc.JobIAMBinding
/// " pulumi-lang-java=" gcp.dataproc.JobIAMBinding
/// "> gcp.dataproc.JobIAMBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.dataproc.JobIAMBinding("editor", {
/// jobId: "your-dataproc-job",
/// role: "roles/editor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.dataproc.JobIAMBinding("editor",
/// job_id="your-dataproc-job",
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
/// var editor = new Gcp.Dataproc.JobIAMBinding("editor", new()
/// {
/// JobId = "your-dataproc-job",
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
/// _, err := dataproc.NewJobIAMBinding(ctx, "editor", &dataproc.JobIAMBindingArgs{
/// JobId: pulumi.String("your-dataproc-job"),
/// Role:  pulumi.String("roles/editor"),
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
/// import com.pulumi.gcp.dataproc.JobIAMBinding;
/// import com.pulumi.gcp.dataproc.JobIAMBindingArgs;
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
/// var editor = new JobIAMBinding("editor", JobIAMBindingArgs.builder()
/// .jobId("your-dataproc-job")
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
/// type: gcp:dataproc:JobIAMBinding
/// properties:
/// jobId: your-dataproc-job
/// role: roles/editor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.JobIAMMember
/// " pulumi-lang-dotnet=" gcp.dataproc.JobIAMMember
/// " pulumi-lang-go=" dataproc.JobIAMMember
/// " pulumi-lang-python=" dataproc.JobIAMMember
/// " pulumi-lang-yaml=" gcp.dataproc.JobIAMMember
/// " pulumi-lang-java=" gcp.dataproc.JobIAMMember
/// "> gcp.dataproc.JobIAMMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.dataproc.JobIAMMember("editor", {
/// jobId: "your-dataproc-job",
/// role: "roles/editor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.dataproc.JobIAMMember("editor",
/// job_id="your-dataproc-job",
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
/// var editor = new Gcp.Dataproc.JobIAMMember("editor", new()
/// {
/// JobId = "your-dataproc-job",
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
/// _, err := dataproc.NewJobIAMMember(ctx, "editor", &dataproc.JobIAMMemberArgs{
/// JobId:  pulumi.String("your-dataproc-job"),
/// Role:   pulumi.String("roles/editor"),
/// Member: pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.dataproc.JobIAMMember;
/// import com.pulumi.gcp.dataproc.JobIAMMemberArgs;
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
/// var editor = new JobIAMMember("editor", JobIAMMemberArgs.builder()
/// .jobId("your-dataproc-job")
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
/// type: gcp:dataproc:JobIAMMember
/// properties:
/// jobId: your-dataproc-job
/// role: roles/editor
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.JobIAMPolicy
/// " pulumi-lang-dotnet=" gcp.dataproc.JobIAMPolicy
/// " pulumi-lang-go=" dataproc.JobIAMPolicy
/// " pulumi-lang-python=" dataproc.JobIAMPolicy
/// " pulumi-lang-yaml=" gcp.dataproc.JobIAMPolicy
/// " pulumi-lang-java=" gcp.dataproc.JobIAMPolicy
/// "> gcp.dataproc.JobIAMPolicy
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
/// const editor = new gcp.dataproc.JobIAMPolicy("editor", {
/// project: "your-project",
/// region: "your-region",
/// jobId: "your-dataproc-job",
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
/// editor = gcp.dataproc.JobIAMPolicy("editor",
/// project="your-project",
/// region="your-region",
/// job_id="your-dataproc-job",
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
/// var editor = new Gcp.Dataproc.JobIAMPolicy("editor", new()
/// {
/// Project = "your-project",
/// Region = "your-region",
/// JobId = "your-dataproc-job",
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
/// _, err = dataproc.NewJobIAMPolicy(ctx, "editor", &dataproc.JobIAMPolicyArgs{
/// Project:    pulumi.String("your-project"),
/// Region:     pulumi.String("your-region"),
/// JobId:      pulumi.String("your-dataproc-job"),
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
/// import com.pulumi.gcp.dataproc.JobIAMPolicy;
/// import com.pulumi.gcp.dataproc.JobIAMPolicyArgs;
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
/// var editor = new JobIAMPolicy("editor", JobIAMPolicyArgs.builder()
/// .project("your-project")
/// .region("your-region")
/// .jobId("your-dataproc-job")
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// editor:
/// type: gcp:dataproc:JobIAMPolicy
/// properties:
/// project: your-project
/// region: your-region
/// jobId: your-dataproc-job
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
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.JobIAMBinding
/// " pulumi-lang-dotnet=" gcp.dataproc.JobIAMBinding
/// " pulumi-lang-go=" dataproc.JobIAMBinding
/// " pulumi-lang-python=" dataproc.JobIAMBinding
/// " pulumi-lang-yaml=" gcp.dataproc.JobIAMBinding
/// " pulumi-lang-java=" gcp.dataproc.JobIAMBinding
/// "> gcp.dataproc.JobIAMBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.dataproc.JobIAMBinding("editor", {
/// jobId: "your-dataproc-job",
/// role: "roles/editor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.dataproc.JobIAMBinding("editor",
/// job_id="your-dataproc-job",
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
/// var editor = new Gcp.Dataproc.JobIAMBinding("editor", new()
/// {
/// JobId = "your-dataproc-job",
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
/// _, err := dataproc.NewJobIAMBinding(ctx, "editor", &dataproc.JobIAMBindingArgs{
/// JobId: pulumi.String("your-dataproc-job"),
/// Role:  pulumi.String("roles/editor"),
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
/// import com.pulumi.gcp.dataproc.JobIAMBinding;
/// import com.pulumi.gcp.dataproc.JobIAMBindingArgs;
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
/// var editor = new JobIAMBinding("editor", JobIAMBindingArgs.builder()
/// .jobId("your-dataproc-job")
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
/// type: gcp:dataproc:JobIAMBinding
/// properties:
/// jobId: your-dataproc-job
/// role: roles/editor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.JobIAMMember
/// " pulumi-lang-dotnet=" gcp.dataproc.JobIAMMember
/// " pulumi-lang-go=" dataproc.JobIAMMember
/// " pulumi-lang-python=" dataproc.JobIAMMember
/// " pulumi-lang-yaml=" gcp.dataproc.JobIAMMember
/// " pulumi-lang-java=" gcp.dataproc.JobIAMMember
/// "> gcp.dataproc.JobIAMMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.dataproc.JobIAMMember("editor", {
/// jobId: "your-dataproc-job",
/// role: "roles/editor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.dataproc.JobIAMMember("editor",
/// job_id="your-dataproc-job",
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
/// var editor = new Gcp.Dataproc.JobIAMMember("editor", new()
/// {
/// JobId = "your-dataproc-job",
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
/// _, err := dataproc.NewJobIAMMember(ctx, "editor", &dataproc.JobIAMMemberArgs{
/// JobId:  pulumi.String("your-dataproc-job"),
/// Role:   pulumi.String("roles/editor"),
/// Member: pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.dataproc.JobIAMMember;
/// import com.pulumi.gcp.dataproc.JobIAMMemberArgs;
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
/// var editor = new JobIAMMember("editor", JobIAMMemberArgs.builder()
/// .jobId("your-dataproc-job")
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
/// type: gcp:dataproc:JobIAMMember
/// properties:
/// jobId: your-dataproc-job
/// role: roles/editor
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Importing IAM policies
///
/// IAM policy imports use the `job_id` identifier of the Dataproc Job resource only. For example:
///
/// * `projects/{project}/regions/{region}/jobs/{job_id}`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import IAM policies:
///
/// tf
///
/// import {
///
/// id = "projects/{project}/regions/{region}/jobs/{job_id}"
///
/// to = google_dataproc_job_iam_policy.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:dataproc/jobIAMPolicy:JobIAMPolicy default "projects/{project}/regions/{region}/jobs/{job_id}"
/// ```
class JobIAMPolicy extends CustomResource {
  /// (Computed) The etag of the jobs's IAM policy.
  late final Output<String> etag;
  late final Output<String> jobId;

  /// The policy data generated by a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  ///
  /// - - -
  late final Output<String> policyData;

  /// The project in which the job belongs. If it
  /// is not provided, the provider will use a default.
  late final Output<String> project;

  /// The region in which the job belongs. If it
  /// is not provided, the provider will use a default.
  late final Output<String> region;

  JobIAMPolicy(
    String name, {
    JobIAMPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/jobIAMPolicy:JobIAMPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.jobId = registerOutput<String>('jobId');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
  }
}
