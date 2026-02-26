import 'package:pulumi/pulumi.dart';
import '../iam_audit_config_audit_log_config/iam_audit_config_audit_log_config.dart';
import 'iam_audit_config_args.dart';

/// Four different resources help you manage your IAM policy for a folder. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.folder.IAMPolicy`" pulumi-lang-dotnet="`gcp.folder.IAMPolicy`" pulumi-lang-go="`folder.IAMPolicy`" pulumi-lang-python="`folder.IAMPolicy`" pulumi-lang-yaml="`gcp.folder.IAMPolicy`" pulumi-lang-java="`gcp.folder.IAMPolicy`">`gcp.folder.IAMPolicy`</span>: Authoritative. Sets the IAM policy for the folder and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.folder.IAMBinding`" pulumi-lang-dotnet="`gcp.folder.IAMBinding`" pulumi-lang-go="`folder.IAMBinding`" pulumi-lang-python="`folder.IAMBinding`" pulumi-lang-yaml="`gcp.folder.IAMBinding`" pulumi-lang-java="`gcp.folder.IAMBinding`">`gcp.folder.IAMBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the folder are preserved.
/// * <span pulumi-lang-nodejs="`gcp.folder.IAMMember`" pulumi-lang-dotnet="`gcp.folder.IAMMember`" pulumi-lang-go="`folder.IAMMember`" pulumi-lang-python="`folder.IAMMember`" pulumi-lang-yaml="`gcp.folder.IAMMember`" pulumi-lang-java="`gcp.folder.IAMMember`">`gcp.folder.IAMMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the folder are preserved.
/// * <span pulumi-lang-nodejs="`gcp.folder.IamAuditConfig`" pulumi-lang-dotnet="`gcp.folder.IamAuditConfig`" pulumi-lang-go="`folder.IamAuditConfig`" pulumi-lang-python="`folder.IamAuditConfig`" pulumi-lang-yaml="`gcp.folder.IamAuditConfig`" pulumi-lang-java="`gcp.folder.IamAuditConfig`">`gcp.folder.IamAuditConfig`</span>: Authoritative for a given service. Updates the IAM policy to enable audit logging for the given service.
///
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.folder.IAMPolicy`" pulumi-lang-dotnet="`gcp.folder.IAMPolicy`" pulumi-lang-go="`folder.IAMPolicy`" pulumi-lang-python="`folder.IAMPolicy`" pulumi-lang-yaml="`gcp.folder.IAMPolicy`" pulumi-lang-java="`gcp.folder.IAMPolicy`">`gcp.folder.IAMPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.folder.IAMBinding`" pulumi-lang-dotnet="`gcp.folder.IAMBinding`" pulumi-lang-go="`folder.IAMBinding`" pulumi-lang-python="`folder.IAMBinding`" pulumi-lang-yaml="`gcp.folder.IAMBinding`" pulumi-lang-java="`gcp.folder.IAMBinding`">`gcp.folder.IAMBinding`</span>, <span pulumi-lang-nodejs="`gcp.folder.IAMMember`" pulumi-lang-dotnet="`gcp.folder.IAMMember`" pulumi-lang-go="`folder.IAMMember`" pulumi-lang-python="`folder.IAMMember`" pulumi-lang-yaml="`gcp.folder.IAMMember`" pulumi-lang-java="`gcp.folder.IAMMember`">`gcp.folder.IAMMember`</span>, or <span pulumi-lang-nodejs="`gcp.folder.IamAuditConfig`" pulumi-lang-dotnet="`gcp.folder.IamAuditConfig`" pulumi-lang-go="`folder.IamAuditConfig`" pulumi-lang-python="`folder.IamAuditConfig`" pulumi-lang-yaml="`gcp.folder.IamAuditConfig`" pulumi-lang-java="`gcp.folder.IamAuditConfig`">`gcp.folder.IamAuditConfig`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.folder.IAMBinding`" pulumi-lang-dotnet="`gcp.folder.IAMBinding`" pulumi-lang-go="`folder.IAMBinding`" pulumi-lang-python="`folder.IAMBinding`" pulumi-lang-yaml="`gcp.folder.IAMBinding`" pulumi-lang-java="`gcp.folder.IAMBinding`">`gcp.folder.IAMBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.folder.IAMMember`" pulumi-lang-dotnet="`gcp.folder.IAMMember`" pulumi-lang-go="`folder.IAMMember`" pulumi-lang-python="`folder.IAMMember`" pulumi-lang-yaml="`gcp.folder.IAMMember`" pulumi-lang-java="`gcp.folder.IAMMember`">`gcp.folder.IAMMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:** The underlying API method `projects.setIamPolicy` has constraints which are documented [here](https://docs.cloud.google.com/resource-manager/reference/rest/v1/projects/setIamPolicy). In addition to these constraints,
/// IAM Conditions cannot be used with Basic Roles such as Owner. Violating these constraints will result in the API returning a 400 error code so please review these if you encounter errors with this resource.
///
/// ##<span pulumi-lang-nodejs=" gcp.folder.IAMPolicy
/// " pulumi-lang-dotnet=" gcp.folder.IAMPolicy
/// " pulumi-lang-go=" folder.IAMPolicy
/// " pulumi-lang-python=" folder.IAMPolicy
/// " pulumi-lang-yaml=" gcp.folder.IAMPolicy
/// " pulumi-lang-java=" gcp.folder.IAMPolicy
/// "> gcp.folder.IAMPolicy
/// </span>
/// !> **Be careful!** You can accidentally lock yourself out of your folder
/// using this resource. Deleting a <span pulumi-lang-nodejs="`gcp.folder.IAMPolicy`" pulumi-lang-dotnet="`gcp.folder.IAMPolicy`" pulumi-lang-go="`folder.IAMPolicy`" pulumi-lang-python="`folder.IAMPolicy`" pulumi-lang-yaml="`gcp.folder.IAMPolicy`" pulumi-lang-java="`gcp.folder.IAMPolicy`">`gcp.folder.IAMPolicy`</span> removes access
/// from anyone without permissions on its parent folder/organization. Proceed with caution.
/// It's not recommended to use <span pulumi-lang-nodejs="`gcp.folder.IAMPolicy`" pulumi-lang-dotnet="`gcp.folder.IAMPolicy`" pulumi-lang-go="`folder.IAMPolicy`" pulumi-lang-python="`folder.IAMPolicy`" pulumi-lang-yaml="`gcp.folder.IAMPolicy`" pulumi-lang-java="`gcp.folder.IAMPolicy`">`gcp.folder.IAMPolicy`</span> with your provider folder
/// to avoid locking yourself out, and it should generally only be used with folders
/// fully managed by this provider. If you do use this resource, it is recommended to **import** the policy before
/// applying the change.
///
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
/// const folder = new gcp.folder.IAMPolicy("folder", {
/// folder: "folders/1234567",
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
/// folder = gcp.folder.IAMPolicy("folder",
/// folder="folders/1234567",
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
/// var folder = new Gcp.Folder.IAMPolicy("folder", new()
/// {
/// Folder = "folders/1234567",
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/folder"
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
/// _, err = folder.NewIAMPolicy(ctx, "folder", &folder.IAMPolicyArgs{
/// Folder:     pulumi.String("folders/1234567"),
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
/// import com.pulumi.gcp.folder.IAMPolicy;
/// import com.pulumi.gcp.folder.IAMPolicyArgs;
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
/// var folder = new IAMPolicy("folder", IAMPolicyArgs.builder()
/// .folder("folders/1234567")
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// folder:
/// type: gcp:folder:IAMPolicy
/// properties:
/// folder: folders/1234567
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
/// const folder = new gcp.folder.IAMPolicy("folder", {
/// folder: "folders/1234567",
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
/// folder = gcp.folder.IAMPolicy("folder",
/// folder="folders/1234567",
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
/// var folder = new Gcp.Folder.IAMPolicy("folder", new()
/// {
/// Folder = "folders/1234567",
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/folder"
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
/// _, err = folder.NewIAMPolicy(ctx, "folder", &folder.IAMPolicyArgs{
/// Folder:     pulumi.String("folders/1234567"),
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
/// import com.pulumi.gcp.folder.IAMPolicy;
/// import com.pulumi.gcp.folder.IAMPolicyArgs;
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
/// var folder = new IAMPolicy("folder", IAMPolicyArgs.builder()
/// .folder("folders/1234567")
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// folder:
/// type: gcp:folder:IAMPolicy
/// properties:
/// folder: folders/1234567
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
///
/// ##<span pulumi-lang-nodejs=" gcp.folder.IAMBinding
/// " pulumi-lang-dotnet=" gcp.folder.IAMBinding
/// " pulumi-lang-go=" folder.IAMBinding
/// " pulumi-lang-python=" folder.IAMBinding
/// " pulumi-lang-yaml=" gcp.folder.IAMBinding
/// " pulumi-lang-java=" gcp.folder.IAMBinding
/// "> gcp.folder.IAMBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const folder = new gcp.folder.IAMBinding("folder", {
/// folder: "folders/1234567",
/// role: "roles/editor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// folder = gcp.folder.IAMBinding("folder",
/// folder="folders/1234567",
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
/// var folder = new Gcp.Folder.IAMBinding("folder", new()
/// {
/// Folder = "folders/1234567",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/folder"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := folder.NewIAMBinding(ctx, "folder", &folder.IAMBindingArgs{
/// Folder: pulumi.String("folders/1234567"),
/// Role:   pulumi.String("roles/editor"),
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
/// import com.pulumi.gcp.folder.IAMBinding;
/// import com.pulumi.gcp.folder.IAMBindingArgs;
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
/// var folder = new IAMBinding("folder", IAMBindingArgs.builder()
/// .folder("folders/1234567")
/// .role("roles/editor")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// folder:
/// type: gcp:folder:IAMBinding
/// properties:
/// folder: folders/1234567
/// role: roles/editor
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
/// const folder = new gcp.folder.IAMBinding("folder", {
/// folder: "folders/1234567",
/// role: "roles/container.admin",
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
/// folder = gcp.folder.IAMBinding("folder",
/// folder="folders/1234567",
/// role="roles/container.admin",
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
/// var folder = new Gcp.Folder.IAMBinding("folder", new()
/// {
/// Folder = "folders/1234567",
/// Role = "roles/container.admin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Folder.Inputs.IAMBindingConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/folder"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := folder.NewIAMBinding(ctx, "folder", &folder.IAMBindingArgs{
/// Folder: pulumi.String("folders/1234567"),
/// Role:   pulumi.String("roles/container.admin"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &folder.IAMBindingConditionArgs{
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
/// import com.pulumi.gcp.folder.IAMBinding;
/// import com.pulumi.gcp.folder.IAMBindingArgs;
/// import com.pulumi.gcp.folder.inputs.IAMBindingConditionArgs;
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
/// var folder = new IAMBinding("folder", IAMBindingArgs.builder()
/// .folder("folders/1234567")
/// .role("roles/container.admin")
/// .members("user:jane@example.com")
/// .condition(IAMBindingConditionArgs.builder()
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
/// folder:
/// type: gcp:folder:IAMBinding
/// properties:
/// folder: folders/1234567
/// role: roles/container.admin
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.folder.IAMMember
/// " pulumi-lang-dotnet=" gcp.folder.IAMMember
/// " pulumi-lang-go=" folder.IAMMember
/// " pulumi-lang-python=" folder.IAMMember
/// " pulumi-lang-yaml=" gcp.folder.IAMMember
/// " pulumi-lang-java=" gcp.folder.IAMMember
/// "> gcp.folder.IAMMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const folder = new gcp.folder.IAMMember("folder", {
/// folder: "folders/1234567",
/// role: "roles/editor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// folder = gcp.folder.IAMMember("folder",
/// folder="folders/1234567",
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
/// var folder = new Gcp.Folder.IAMMember("folder", new()
/// {
/// Folder = "folders/1234567",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/folder"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := folder.NewIAMMember(ctx, "folder", &folder.IAMMemberArgs{
/// Folder: pulumi.String("folders/1234567"),
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
/// import com.pulumi.gcp.folder.IAMMember;
/// import com.pulumi.gcp.folder.IAMMemberArgs;
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
/// var folder = new IAMMember("folder", IAMMemberArgs.builder()
/// .folder("folders/1234567")
/// .role("roles/editor")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// folder:
/// type: gcp:folder:IAMMember
/// properties:
/// folder: folders/1234567
/// role: roles/editor
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
/// const folder = new gcp.folder.IAMMember("folder", {
/// folder: "folders/1234567",
/// role: "roles/firebase.admin",
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
/// folder = gcp.folder.IAMMember("folder",
/// folder="folders/1234567",
/// role="roles/firebase.admin",
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
/// var folder = new Gcp.Folder.IAMMember("folder", new()
/// {
/// Folder = "folders/1234567",
/// Role = "roles/firebase.admin",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Folder.Inputs.IAMMemberConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/folder"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := folder.NewIAMMember(ctx, "folder", &folder.IAMMemberArgs{
/// Folder: pulumi.String("folders/1234567"),
/// Role:   pulumi.String("roles/firebase.admin"),
/// Member: pulumi.String("user:jane@example.com"),
/// Condition: &folder.IAMMemberConditionArgs{
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
/// import com.pulumi.gcp.folder.IAMMember;
/// import com.pulumi.gcp.folder.IAMMemberArgs;
/// import com.pulumi.gcp.folder.inputs.IAMMemberConditionArgs;
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
/// var folder = new IAMMember("folder", IAMMemberArgs.builder()
/// .folder("folders/1234567")
/// .role("roles/firebase.admin")
/// .member("user:jane@example.com")
/// .condition(IAMMemberConditionArgs.builder()
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
/// folder:
/// type: gcp:folder:IAMMember
/// properties:
/// folder: folders/1234567
/// role: roles/firebase.admin
/// member: user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.folder.IamAuditConfig
/// " pulumi-lang-dotnet=" gcp.folder.IamAuditConfig
/// " pulumi-lang-go=" folder.IamAuditConfig
/// " pulumi-lang-python=" folder.IamAuditConfig
/// " pulumi-lang-yaml=" gcp.folder.IamAuditConfig
/// " pulumi-lang-java=" gcp.folder.IamAuditConfig
/// "> gcp.folder.IamAuditConfig
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const folder = new gcp.folder.IamAuditConfig("folder", {
/// folder: "folders/1234567",
/// service: "allServices",
/// auditLogConfigs: [
/// {
/// logType: "ADMIN_READ",
/// },
/// {
/// logType: "DATA_READ",
/// exemptedMembers: ["user:joebloggs@example.com"],
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// folder = gcp.folder.IamAuditConfig("folder",
/// folder="folders/1234567",
/// service="allServices",
/// audit_log_configs=[
/// {
/// "log_type": "ADMIN_READ",
/// },
/// {
/// "log_type": "DATA_READ",
/// "exempted_members": ["user:joebloggs@example.com"],
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var folder = new Gcp.Folder.IamAuditConfig("folder", new()
/// {
/// Folder = "folders/1234567",
/// Service = "allServices",
/// AuditLogConfigs = new[]
/// {
/// new Gcp.Folder.Inputs.IamAuditConfigAuditLogConfigArgs
/// {
/// LogType = "ADMIN_READ",
/// },
/// new Gcp.Folder.Inputs.IamAuditConfigAuditLogConfigArgs
/// {
/// LogType = "DATA_READ",
/// ExemptedMembers = new[]
/// {
/// "user:joebloggs@example.com",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/folder"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := folder.NewIamAuditConfig(ctx, "folder", &folder.IamAuditConfigArgs{
/// Folder:  pulumi.String("folders/1234567"),
/// Service: pulumi.String("allServices"),
/// AuditLogConfigs: folder.IamAuditConfigAuditLogConfigArray{
/// &folder.IamAuditConfigAuditLogConfigArgs{
/// LogType: pulumi.String("ADMIN_READ"),
/// },
/// &folder.IamAuditConfigAuditLogConfigArgs{
/// LogType: pulumi.String("DATA_READ"),
/// ExemptedMembers: pulumi.StringArray{
/// pulumi.String("user:joebloggs@example.com"),
/// },
/// },
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
/// import com.pulumi.gcp.folder.IamAuditConfig;
/// import com.pulumi.gcp.folder.IamAuditConfigArgs;
/// import com.pulumi.gcp.folder.inputs.IamAuditConfigAuditLogConfigArgs;
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
/// var folder = new IamAuditConfig("folder", IamAuditConfigArgs.builder()
/// .folder("folders/1234567")
/// .service("allServices")
/// .auditLogConfigs(
/// IamAuditConfigAuditLogConfigArgs.builder()
/// .logType("ADMIN_READ")
/// .build(),
/// IamAuditConfigAuditLogConfigArgs.builder()
/// .logType("DATA_READ")
/// .exemptedMembers("user:joebloggs@example.com")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// folder:
/// type: gcp:folder:IamAuditConfig
/// properties:
/// folder: folders/1234567
/// service: allServices
/// auditLogConfigs:
/// - logType: ADMIN_READ
/// - logType: DATA_READ
/// exemptedMembers:
/// - user:joebloggs@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.folder.IAMBinding
/// " pulumi-lang-dotnet=" gcp.folder.IAMBinding
/// " pulumi-lang-go=" folder.IAMBinding
/// " pulumi-lang-python=" folder.IAMBinding
/// " pulumi-lang-yaml=" gcp.folder.IAMBinding
/// " pulumi-lang-java=" gcp.folder.IAMBinding
/// "> gcp.folder.IAMBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const folder = new gcp.folder.IAMBinding("folder", {
/// folder: "folders/1234567",
/// role: "roles/editor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// folder = gcp.folder.IAMBinding("folder",
/// folder="folders/1234567",
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
/// var folder = new Gcp.Folder.IAMBinding("folder", new()
/// {
/// Folder = "folders/1234567",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/folder"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := folder.NewIAMBinding(ctx, "folder", &folder.IAMBindingArgs{
/// Folder: pulumi.String("folders/1234567"),
/// Role:   pulumi.String("roles/editor"),
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
/// import com.pulumi.gcp.folder.IAMBinding;
/// import com.pulumi.gcp.folder.IAMBindingArgs;
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
/// var folder = new IAMBinding("folder", IAMBindingArgs.builder()
/// .folder("folders/1234567")
/// .role("roles/editor")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// folder:
/// type: gcp:folder:IAMBinding
/// properties:
/// folder: folders/1234567
/// role: roles/editor
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
/// const folder = new gcp.folder.IAMBinding("folder", {
/// folder: "folders/1234567",
/// role: "roles/container.admin",
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
/// folder = gcp.folder.IAMBinding("folder",
/// folder="folders/1234567",
/// role="roles/container.admin",
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
/// var folder = new Gcp.Folder.IAMBinding("folder", new()
/// {
/// Folder = "folders/1234567",
/// Role = "roles/container.admin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Folder.Inputs.IAMBindingConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/folder"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := folder.NewIAMBinding(ctx, "folder", &folder.IAMBindingArgs{
/// Folder: pulumi.String("folders/1234567"),
/// Role:   pulumi.String("roles/container.admin"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &folder.IAMBindingConditionArgs{
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
/// import com.pulumi.gcp.folder.IAMBinding;
/// import com.pulumi.gcp.folder.IAMBindingArgs;
/// import com.pulumi.gcp.folder.inputs.IAMBindingConditionArgs;
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
/// var folder = new IAMBinding("folder", IAMBindingArgs.builder()
/// .folder("folders/1234567")
/// .role("roles/container.admin")
/// .members("user:jane@example.com")
/// .condition(IAMBindingConditionArgs.builder()
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
/// folder:
/// type: gcp:folder:IAMBinding
/// properties:
/// folder: folders/1234567
/// role: roles/container.admin
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.folder.IAMMember
/// " pulumi-lang-dotnet=" gcp.folder.IAMMember
/// " pulumi-lang-go=" folder.IAMMember
/// " pulumi-lang-python=" folder.IAMMember
/// " pulumi-lang-yaml=" gcp.folder.IAMMember
/// " pulumi-lang-java=" gcp.folder.IAMMember
/// "> gcp.folder.IAMMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const folder = new gcp.folder.IAMMember("folder", {
/// folder: "folders/1234567",
/// role: "roles/editor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// folder = gcp.folder.IAMMember("folder",
/// folder="folders/1234567",
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
/// var folder = new Gcp.Folder.IAMMember("folder", new()
/// {
/// Folder = "folders/1234567",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/folder"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := folder.NewIAMMember(ctx, "folder", &folder.IAMMemberArgs{
/// Folder: pulumi.String("folders/1234567"),
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
/// import com.pulumi.gcp.folder.IAMMember;
/// import com.pulumi.gcp.folder.IAMMemberArgs;
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
/// var folder = new IAMMember("folder", IAMMemberArgs.builder()
/// .folder("folders/1234567")
/// .role("roles/editor")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// folder:
/// type: gcp:folder:IAMMember
/// properties:
/// folder: folders/1234567
/// role: roles/editor
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
/// const folder = new gcp.folder.IAMMember("folder", {
/// folder: "folders/1234567",
/// role: "roles/firebase.admin",
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
/// folder = gcp.folder.IAMMember("folder",
/// folder="folders/1234567",
/// role="roles/firebase.admin",
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
/// var folder = new Gcp.Folder.IAMMember("folder", new()
/// {
/// Folder = "folders/1234567",
/// Role = "roles/firebase.admin",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Folder.Inputs.IAMMemberConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/folder"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := folder.NewIAMMember(ctx, "folder", &folder.IAMMemberArgs{
/// Folder: pulumi.String("folders/1234567"),
/// Role:   pulumi.String("roles/firebase.admin"),
/// Member: pulumi.String("user:jane@example.com"),
/// Condition: &folder.IAMMemberConditionArgs{
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
/// import com.pulumi.gcp.folder.IAMMember;
/// import com.pulumi.gcp.folder.IAMMemberArgs;
/// import com.pulumi.gcp.folder.inputs.IAMMemberConditionArgs;
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
/// var folder = new IAMMember("folder", IAMMemberArgs.builder()
/// .folder("folders/1234567")
/// .role("roles/firebase.admin")
/// .member("user:jane@example.com")
/// .condition(IAMMemberConditionArgs.builder()
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
/// folder:
/// type: gcp:folder:IAMMember
/// properties:
/// folder: folders/1234567
/// role: roles/firebase.admin
/// member: user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.folder.IamAuditConfig
/// " pulumi-lang-dotnet=" gcp.folder.IamAuditConfig
/// " pulumi-lang-go=" folder.IamAuditConfig
/// " pulumi-lang-python=" folder.IamAuditConfig
/// " pulumi-lang-yaml=" gcp.folder.IamAuditConfig
/// " pulumi-lang-java=" gcp.folder.IamAuditConfig
/// "> gcp.folder.IamAuditConfig
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const folder = new gcp.folder.IamAuditConfig("folder", {
/// folder: "folders/1234567",
/// service: "allServices",
/// auditLogConfigs: [
/// {
/// logType: "ADMIN_READ",
/// },
/// {
/// logType: "DATA_READ",
/// exemptedMembers: ["user:joebloggs@example.com"],
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// folder = gcp.folder.IamAuditConfig("folder",
/// folder="folders/1234567",
/// service="allServices",
/// audit_log_configs=[
/// {
/// "log_type": "ADMIN_READ",
/// },
/// {
/// "log_type": "DATA_READ",
/// "exempted_members": ["user:joebloggs@example.com"],
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var folder = new Gcp.Folder.IamAuditConfig("folder", new()
/// {
/// Folder = "folders/1234567",
/// Service = "allServices",
/// AuditLogConfigs = new[]
/// {
/// new Gcp.Folder.Inputs.IamAuditConfigAuditLogConfigArgs
/// {
/// LogType = "ADMIN_READ",
/// },
/// new Gcp.Folder.Inputs.IamAuditConfigAuditLogConfigArgs
/// {
/// LogType = "DATA_READ",
/// ExemptedMembers = new[]
/// {
/// "user:joebloggs@example.com",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/folder"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := folder.NewIamAuditConfig(ctx, "folder", &folder.IamAuditConfigArgs{
/// Folder:  pulumi.String("folders/1234567"),
/// Service: pulumi.String("allServices"),
/// AuditLogConfigs: folder.IamAuditConfigAuditLogConfigArray{
/// &folder.IamAuditConfigAuditLogConfigArgs{
/// LogType: pulumi.String("ADMIN_READ"),
/// },
/// &folder.IamAuditConfigAuditLogConfigArgs{
/// LogType: pulumi.String("DATA_READ"),
/// ExemptedMembers: pulumi.StringArray{
/// pulumi.String("user:joebloggs@example.com"),
/// },
/// },
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
/// import com.pulumi.gcp.folder.IamAuditConfig;
/// import com.pulumi.gcp.folder.IamAuditConfigArgs;
/// import com.pulumi.gcp.folder.inputs.IamAuditConfigAuditLogConfigArgs;
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
/// var folder = new IamAuditConfig("folder", IamAuditConfigArgs.builder()
/// .folder("folders/1234567")
/// .service("allServices")
/// .auditLogConfigs(
/// IamAuditConfigAuditLogConfigArgs.builder()
/// .logType("ADMIN_READ")
/// .build(),
/// IamAuditConfigAuditLogConfigArgs.builder()
/// .logType("DATA_READ")
/// .exemptedMembers("user:joebloggs@example.com")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// folder:
/// type: gcp:folder:IamAuditConfig
/// properties:
/// folder: folders/1234567
/// service: allServices
/// auditLogConfigs:
/// - logType: ADMIN_READ
/// - logType: DATA_READ
/// exemptedMembers:
/// - user:joebloggs@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Importing Audit Configs
///
/// An audit config can be imported into a `google_folder_iam_audit_config` resource using the resource's `folder_id` and the `service`, e.g:
///
/// * `"folder/{{folder_id}} foo.googleapis.com"`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import audit configs:
///
/// tf
///
/// import {
///
/// id = "folder/{{folder_id}} foo.googleapis.com"
///
/// to = google_folder_iam_audit_config.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:folder/iamAuditConfig:IamAuditConfig default "folder/{{folder_id}} foo.googleapis.com"
/// ```
class IamAuditConfig extends CustomResource {
  /// The configuration for logging of each type of permission.  This can be specified multiple times.  Structure is documented below.
  late final Output<List<IamAuditConfigAuditLogConfig>> auditLogConfigs;

  /// (Computed) The etag of the folder's IAM policy.
  late final Output<String> etag;

  /// The resource name of the folder the policy is attached to. Its format is folders/{folder_id}.
  late final Output<String> folder;

  /// Service which will be enabled for audit logging.  The special value `allServices` covers all services.  Note that if there are<span pulumi-lang-nodejs=" gcp.folder.IamAuditConfig " pulumi-lang-dotnet=" gcp.folder.IamAuditConfig " pulumi-lang-go=" folder.IamAuditConfig " pulumi-lang-python=" folder.IamAuditConfig " pulumi-lang-yaml=" gcp.folder.IamAuditConfig " pulumi-lang-java=" gcp.folder.IamAuditConfig "> gcp.folder.IamAuditConfig </span>resources covering both `allServices` and a specific service then the union of the two AuditConfigs is used for that service: the <span pulumi-lang-nodejs="`logTypes`" pulumi-lang-dotnet="`LogTypes`" pulumi-lang-go="`logTypes`" pulumi-lang-python="`log_types`" pulumi-lang-yaml="`logTypes`" pulumi-lang-java="`logTypes`">`log_types`</span> specified in each <span pulumi-lang-nodejs="`auditLogConfig`" pulumi-lang-dotnet="`AuditLogConfig`" pulumi-lang-go="`auditLogConfig`" pulumi-lang-python="`audit_log_config`" pulumi-lang-yaml="`auditLogConfig`" pulumi-lang-java="`auditLogConfig`">`audit_log_config`</span> are enabled, and the <span pulumi-lang-nodejs="`exemptedMembers`" pulumi-lang-dotnet="`ExemptedMembers`" pulumi-lang-go="`exemptedMembers`" pulumi-lang-python="`exempted_members`" pulumi-lang-yaml="`exemptedMembers`" pulumi-lang-java="`exemptedMembers`">`exempted_members`</span> in each <span pulumi-lang-nodejs="`auditLogConfig`" pulumi-lang-dotnet="`AuditLogConfig`" pulumi-lang-go="`auditLogConfig`" pulumi-lang-python="`audit_log_config`" pulumi-lang-yaml="`auditLogConfig`" pulumi-lang-java="`auditLogConfig`">`audit_log_config`</span> are exempted.
  late final Output<String> service;

  IamAuditConfig(
    String name, {
    IamAuditConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:folder/iamAuditConfig:IamAuditConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.auditLogConfigs =
        Output.createUnknown<List<IamAuditConfigAuditLogConfig>>();
    this.etag = Output.createUnknown<String>();
    this.folder = Output.createUnknown<String>();
    this.service = Output.createUnknown<String>();
  }
}
