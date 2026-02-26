import 'package:pulumi/pulumi.dart';
import '../job_iammember_condition/job_iammember_condition.dart';
import 'job_iammember_args.dart';

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
/// $ pulumi import gcp:dataproc/jobIAMMember:JobIAMMember default "projects/{project}/regions/{region}/jobs/{job_id}"
/// ```
class JobIAMMember extends CustomResource {
  late final Output<JobIAMMemberCondition?> condition;

  /// (Computed) The etag of the jobs's IAM policy.
  late final Output<String> etag;
  late final Output<String> jobId;

  /// Identities that will be granted the privilege in <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final Output<String> member;

  /// The project in which the job belongs. If it
  /// is not provided, the provider will use a default.
  late final Output<String> project;

  /// The region in which the job belongs. If it
  /// is not provided, the provider will use a default.
  late final Output<String> region;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.dataproc.JobIAMBinding`" pulumi-lang-dotnet="`gcp.dataproc.JobIAMBinding`" pulumi-lang-go="`dataproc.JobIAMBinding`" pulumi-lang-python="`dataproc.JobIAMBinding`" pulumi-lang-yaml="`gcp.dataproc.JobIAMBinding`" pulumi-lang-java="`gcp.dataproc.JobIAMBinding`">`gcp.dataproc.JobIAMBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  ///
  /// <span pulumi-lang-nodejs="`gcp.dataproc.JobIAMPolicy`" pulumi-lang-dotnet="`gcp.dataproc.JobIAMPolicy`" pulumi-lang-go="`dataproc.JobIAMPolicy`" pulumi-lang-python="`dataproc.JobIAMPolicy`" pulumi-lang-yaml="`gcp.dataproc.JobIAMPolicy`" pulumi-lang-java="`gcp.dataproc.JobIAMPolicy`">`gcp.dataproc.JobIAMPolicy`</span> only:
  late final Output<String> role;

  JobIAMMember(
    String name, {
    JobIAMMemberArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/jobIAMMember:JobIAMMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = Output.createUnknown<JobIAMMemberCondition?>();
    this.etag = Output.createUnknown<String>();
    this.jobId = Output.createUnknown<String>();
    this.member = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
  }
}
