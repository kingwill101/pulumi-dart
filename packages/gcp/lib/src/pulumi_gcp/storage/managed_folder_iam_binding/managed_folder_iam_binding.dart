import 'package:pulumi/pulumi.dart';
import '../managed_folder_iam_binding_condition/managed_folder_iam_binding_condition.dart';
import 'managed_folder_iam_binding_args.dart';

/// Three different resources help you manage your IAM policy for Cloud Storage ManagedFolder. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.storage.ManagedFolderIamPolicy`" pulumi-lang-dotnet="`gcp.storage.ManagedFolderIamPolicy`" pulumi-lang-go="`storage.ManagedFolderIamPolicy`" pulumi-lang-python="`storage.ManagedFolderIamPolicy`" pulumi-lang-yaml="`gcp.storage.ManagedFolderIamPolicy`" pulumi-lang-java="`gcp.storage.ManagedFolderIamPolicy`">`gcp.storage.ManagedFolderIamPolicy`</span>: Authoritative. Sets the IAM policy for the managedfolder and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.storage.ManagedFolderIamBinding`" pulumi-lang-dotnet="`gcp.storage.ManagedFolderIamBinding`" pulumi-lang-go="`storage.ManagedFolderIamBinding`" pulumi-lang-python="`storage.ManagedFolderIamBinding`" pulumi-lang-yaml="`gcp.storage.ManagedFolderIamBinding`" pulumi-lang-java="`gcp.storage.ManagedFolderIamBinding`">`gcp.storage.ManagedFolderIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the managedfolder are preserved.
/// * <span pulumi-lang-nodejs="`gcp.storage.ManagedFolderIamMember`" pulumi-lang-dotnet="`gcp.storage.ManagedFolderIamMember`" pulumi-lang-go="`storage.ManagedFolderIamMember`" pulumi-lang-python="`storage.ManagedFolderIamMember`" pulumi-lang-yaml="`gcp.storage.ManagedFolderIamMember`" pulumi-lang-java="`gcp.storage.ManagedFolderIamMember`">`gcp.storage.ManagedFolderIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the managedfolder are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.storage.ManagedFolderIamPolicy`" pulumi-lang-dotnet="`gcp.storage.ManagedFolderIamPolicy`" pulumi-lang-go="`storage.ManagedFolderIamPolicy`" pulumi-lang-python="`storage.ManagedFolderIamPolicy`" pulumi-lang-yaml="`gcp.storage.ManagedFolderIamPolicy`" pulumi-lang-java="`gcp.storage.ManagedFolderIamPolicy`">`gcp.storage.ManagedFolderIamPolicy`</span>: Retrieves the IAM policy for the managedfolder
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.storage.ManagedFolderIamPolicy`" pulumi-lang-dotnet="`gcp.storage.ManagedFolderIamPolicy`" pulumi-lang-go="`storage.ManagedFolderIamPolicy`" pulumi-lang-python="`storage.ManagedFolderIamPolicy`" pulumi-lang-yaml="`gcp.storage.ManagedFolderIamPolicy`" pulumi-lang-java="`gcp.storage.ManagedFolderIamPolicy`">`gcp.storage.ManagedFolderIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.storage.ManagedFolderIamBinding`" pulumi-lang-dotnet="`gcp.storage.ManagedFolderIamBinding`" pulumi-lang-go="`storage.ManagedFolderIamBinding`" pulumi-lang-python="`storage.ManagedFolderIamBinding`" pulumi-lang-yaml="`gcp.storage.ManagedFolderIamBinding`" pulumi-lang-java="`gcp.storage.ManagedFolderIamBinding`">`gcp.storage.ManagedFolderIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.storage.ManagedFolderIamMember`" pulumi-lang-dotnet="`gcp.storage.ManagedFolderIamMember`" pulumi-lang-go="`storage.ManagedFolderIamMember`" pulumi-lang-python="`storage.ManagedFolderIamMember`" pulumi-lang-yaml="`gcp.storage.ManagedFolderIamMember`" pulumi-lang-java="`gcp.storage.ManagedFolderIamMember`">`gcp.storage.ManagedFolderIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.storage.ManagedFolderIamBinding`" pulumi-lang-dotnet="`gcp.storage.ManagedFolderIamBinding`" pulumi-lang-go="`storage.ManagedFolderIamBinding`" pulumi-lang-python="`storage.ManagedFolderIamBinding`" pulumi-lang-yaml="`gcp.storage.ManagedFolderIamBinding`" pulumi-lang-java="`gcp.storage.ManagedFolderIamBinding`">`gcp.storage.ManagedFolderIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.storage.ManagedFolderIamMember`" pulumi-lang-dotnet="`gcp.storage.ManagedFolderIamMember`" pulumi-lang-go="`storage.ManagedFolderIamMember`" pulumi-lang-python="`storage.ManagedFolderIamMember`" pulumi-lang-yaml="`gcp.storage.ManagedFolderIamMember`" pulumi-lang-java="`gcp.storage.ManagedFolderIamMember`">`gcp.storage.ManagedFolderIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.storage.ManagedFolderIamPolicy
/// " pulumi-lang-dotnet=" gcp.storage.ManagedFolderIamPolicy
/// " pulumi-lang-go=" storage.ManagedFolderIamPolicy
/// " pulumi-lang-python=" storage.ManagedFolderIamPolicy
/// " pulumi-lang-yaml=" gcp.storage.ManagedFolderIamPolicy
/// " pulumi-lang-java=" gcp.storage.ManagedFolderIamPolicy
/// "> gcp.storage.ManagedFolderIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/storage.admin",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.storage.ManagedFolderIamPolicy("policy", {
/// bucket: folder.bucket,
/// managedFolder: folder.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/storage.admin",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.storage.ManagedFolderIamPolicy("policy",
/// bucket=folder["bucket"],
/// managed_folder=folder["name"],
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
/// Role = "roles/storage.admin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Storage.ManagedFolderIamPolicy("policy", new()
/// {
/// Bucket = folder.Bucket,
/// ManagedFolder = folder.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/storage.admin",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = storage.NewManagedFolderIamPolicy(ctx, "policy", &storage.ManagedFolderIamPolicyArgs{
/// Bucket:        pulumi.Any(folder.Bucket),
/// ManagedFolder: pulumi.Any(folder.Name),
/// PolicyData:    pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.storage.ManagedFolderIamPolicy;
/// import com.pulumi.gcp.storage.ManagedFolderIamPolicyArgs;
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
/// .role("roles/storage.admin")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new ManagedFolderIamPolicy("policy", ManagedFolderIamPolicyArgs.builder()
/// .bucket(folder.bucket())
/// .managedFolder(folder.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:storage:ManagedFolderIamPolicy
/// properties:
/// bucket: ${folder.bucket}
/// managedFolder: ${folder.name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/storage.admin
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
/// role: "roles/storage.admin",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const policy = new gcp.storage.ManagedFolderIamPolicy("policy", {
/// bucket: folder.bucket,
/// managedFolder: folder.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/storage.admin",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }])
/// policy = gcp.storage.ManagedFolderIamPolicy("policy",
/// bucket=folder["bucket"],
/// managed_folder=folder["name"],
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
/// Role = "roles/storage.admin",
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
/// var policy = new Gcp.Storage.ManagedFolderIamPolicy("policy", new()
/// {
/// Bucket = folder.Bucket,
/// ManagedFolder = folder.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/storage.admin",
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
/// _, err = storage.NewManagedFolderIamPolicy(ctx, "policy", &storage.ManagedFolderIamPolicyArgs{
/// Bucket:        pulumi.Any(folder.Bucket),
/// ManagedFolder: pulumi.Any(folder.Name),
/// PolicyData:    pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.storage.ManagedFolderIamPolicy;
/// import com.pulumi.gcp.storage.ManagedFolderIamPolicyArgs;
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
/// .role("roles/storage.admin")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var policy = new ManagedFolderIamPolicy("policy", ManagedFolderIamPolicyArgs.builder()
/// .bucket(folder.bucket())
/// .managedFolder(folder.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:storage:ManagedFolderIamPolicy
/// properties:
/// bucket: ${folder.bucket}
/// managedFolder: ${folder.name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/storage.admin
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.storage.ManagedFolderIamBinding
/// " pulumi-lang-dotnet=" gcp.storage.ManagedFolderIamBinding
/// " pulumi-lang-go=" storage.ManagedFolderIamBinding
/// " pulumi-lang-python=" storage.ManagedFolderIamBinding
/// " pulumi-lang-yaml=" gcp.storage.ManagedFolderIamBinding
/// " pulumi-lang-java=" gcp.storage.ManagedFolderIamBinding
/// "> gcp.storage.ManagedFolderIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.storage.ManagedFolderIamBinding("binding", {
/// bucket: folder.bucket,
/// managedFolder: folder.name,
/// role: "roles/storage.admin",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.storage.ManagedFolderIamBinding("binding",
/// bucket=folder["bucket"],
/// managed_folder=folder["name"],
/// role="roles/storage.admin",
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
/// var binding = new Gcp.Storage.ManagedFolderIamBinding("binding", new()
/// {
/// Bucket = folder.Bucket,
/// ManagedFolder = folder.Name,
/// Role = "roles/storage.admin",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := storage.NewManagedFolderIamBinding(ctx, "binding", &storage.ManagedFolderIamBindingArgs{
/// Bucket:        pulumi.Any(folder.Bucket),
/// ManagedFolder: pulumi.Any(folder.Name),
/// Role:          pulumi.String("roles/storage.admin"),
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
/// import com.pulumi.gcp.storage.ManagedFolderIamBinding;
/// import com.pulumi.gcp.storage.ManagedFolderIamBindingArgs;
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
/// var binding = new ManagedFolderIamBinding("binding", ManagedFolderIamBindingArgs.builder()
/// .bucket(folder.bucket())
/// .managedFolder(folder.name())
/// .role("roles/storage.admin")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:storage:ManagedFolderIamBinding
/// properties:
/// bucket: ${folder.bucket}
/// managedFolder: ${folder.name}
/// role: roles/storage.admin
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
/// const binding = new gcp.storage.ManagedFolderIamBinding("binding", {
/// bucket: folder.bucket,
/// managedFolder: folder.name,
/// role: "roles/storage.admin",
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
/// binding = gcp.storage.ManagedFolderIamBinding("binding",
/// bucket=folder["bucket"],
/// managed_folder=folder["name"],
/// role="roles/storage.admin",
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
/// var binding = new Gcp.Storage.ManagedFolderIamBinding("binding", new()
/// {
/// Bucket = folder.Bucket,
/// ManagedFolder = folder.Name,
/// Role = "roles/storage.admin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Storage.Inputs.ManagedFolderIamBindingConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := storage.NewManagedFolderIamBinding(ctx, "binding", &storage.ManagedFolderIamBindingArgs{
/// Bucket:        pulumi.Any(folder.Bucket),
/// ManagedFolder: pulumi.Any(folder.Name),
/// Role:          pulumi.String("roles/storage.admin"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &storage.ManagedFolderIamBindingConditionArgs{
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
/// import com.pulumi.gcp.storage.ManagedFolderIamBinding;
/// import com.pulumi.gcp.storage.ManagedFolderIamBindingArgs;
/// import com.pulumi.gcp.storage.inputs.ManagedFolderIamBindingConditionArgs;
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
/// var binding = new ManagedFolderIamBinding("binding", ManagedFolderIamBindingArgs.builder()
/// .bucket(folder.bucket())
/// .managedFolder(folder.name())
/// .role("roles/storage.admin")
/// .members("user:jane@example.com")
/// .condition(ManagedFolderIamBindingConditionArgs.builder()
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
/// type: gcp:storage:ManagedFolderIamBinding
/// properties:
/// bucket: ${folder.bucket}
/// managedFolder: ${folder.name}
/// role: roles/storage.admin
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.storage.ManagedFolderIamMember
/// " pulumi-lang-dotnet=" gcp.storage.ManagedFolderIamMember
/// " pulumi-lang-go=" storage.ManagedFolderIamMember
/// " pulumi-lang-python=" storage.ManagedFolderIamMember
/// " pulumi-lang-yaml=" gcp.storage.ManagedFolderIamMember
/// " pulumi-lang-java=" gcp.storage.ManagedFolderIamMember
/// "> gcp.storage.ManagedFolderIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.storage.ManagedFolderIamMember("member", {
/// bucket: folder.bucket,
/// managedFolder: folder.name,
/// role: "roles/storage.admin",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.storage.ManagedFolderIamMember("member",
/// bucket=folder["bucket"],
/// managed_folder=folder["name"],
/// role="roles/storage.admin",
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
/// var member = new Gcp.Storage.ManagedFolderIamMember("member", new()
/// {
/// Bucket = folder.Bucket,
/// ManagedFolder = folder.Name,
/// Role = "roles/storage.admin",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := storage.NewManagedFolderIamMember(ctx, "member", &storage.ManagedFolderIamMemberArgs{
/// Bucket:        pulumi.Any(folder.Bucket),
/// ManagedFolder: pulumi.Any(folder.Name),
/// Role:          pulumi.String("roles/storage.admin"),
/// Member:        pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.storage.ManagedFolderIamMember;
/// import com.pulumi.gcp.storage.ManagedFolderIamMemberArgs;
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
/// var member = new ManagedFolderIamMember("member", ManagedFolderIamMemberArgs.builder()
/// .bucket(folder.bucket())
/// .managedFolder(folder.name())
/// .role("roles/storage.admin")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:storage:ManagedFolderIamMember
/// properties:
/// bucket: ${folder.bucket}
/// managedFolder: ${folder.name}
/// role: roles/storage.admin
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
/// const member = new gcp.storage.ManagedFolderIamMember("member", {
/// bucket: folder.bucket,
/// managedFolder: folder.name,
/// role: "roles/storage.admin",
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
/// member = gcp.storage.ManagedFolderIamMember("member",
/// bucket=folder["bucket"],
/// managed_folder=folder["name"],
/// role="roles/storage.admin",
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
/// var member = new Gcp.Storage.ManagedFolderIamMember("member", new()
/// {
/// Bucket = folder.Bucket,
/// ManagedFolder = folder.Name,
/// Role = "roles/storage.admin",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Storage.Inputs.ManagedFolderIamMemberConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := storage.NewManagedFolderIamMember(ctx, "member", &storage.ManagedFolderIamMemberArgs{
/// Bucket:        pulumi.Any(folder.Bucket),
/// ManagedFolder: pulumi.Any(folder.Name),
/// Role:          pulumi.String("roles/storage.admin"),
/// Member:        pulumi.String("user:jane@example.com"),
/// Condition: &storage.ManagedFolderIamMemberConditionArgs{
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
/// import com.pulumi.gcp.storage.ManagedFolderIamMember;
/// import com.pulumi.gcp.storage.ManagedFolderIamMemberArgs;
/// import com.pulumi.gcp.storage.inputs.ManagedFolderIamMemberConditionArgs;
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
/// var member = new ManagedFolderIamMember("member", ManagedFolderIamMemberArgs.builder()
/// .bucket(folder.bucket())
/// .managedFolder(folder.name())
/// .role("roles/storage.admin")
/// .member("user:jane@example.com")
/// .condition(ManagedFolderIamMemberConditionArgs.builder()
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
/// type: gcp:storage:ManagedFolderIamMember
/// properties:
/// bucket: ${folder.bucket}
/// managedFolder: ${folder.name}
/// role: roles/storage.admin
/// member: user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## > **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
/// -
///
/// # IAM policy for Cloud Storage ManagedFolder
/// Three different resources help you manage your IAM policy for Cloud Storage ManagedFolder. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.storage.ManagedFolderIamPolicy`" pulumi-lang-dotnet="`gcp.storage.ManagedFolderIamPolicy`" pulumi-lang-go="`storage.ManagedFolderIamPolicy`" pulumi-lang-python="`storage.ManagedFolderIamPolicy`" pulumi-lang-yaml="`gcp.storage.ManagedFolderIamPolicy`" pulumi-lang-java="`gcp.storage.ManagedFolderIamPolicy`">`gcp.storage.ManagedFolderIamPolicy`</span>: Authoritative. Sets the IAM policy for the managedfolder and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.storage.ManagedFolderIamBinding`" pulumi-lang-dotnet="`gcp.storage.ManagedFolderIamBinding`" pulumi-lang-go="`storage.ManagedFolderIamBinding`" pulumi-lang-python="`storage.ManagedFolderIamBinding`" pulumi-lang-yaml="`gcp.storage.ManagedFolderIamBinding`" pulumi-lang-java="`gcp.storage.ManagedFolderIamBinding`">`gcp.storage.ManagedFolderIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the managedfolder are preserved.
/// * <span pulumi-lang-nodejs="`gcp.storage.ManagedFolderIamMember`" pulumi-lang-dotnet="`gcp.storage.ManagedFolderIamMember`" pulumi-lang-go="`storage.ManagedFolderIamMember`" pulumi-lang-python="`storage.ManagedFolderIamMember`" pulumi-lang-yaml="`gcp.storage.ManagedFolderIamMember`" pulumi-lang-java="`gcp.storage.ManagedFolderIamMember`">`gcp.storage.ManagedFolderIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the managedfolder are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.storage.ManagedFolderIamPolicy`" pulumi-lang-dotnet="`gcp.storage.ManagedFolderIamPolicy`" pulumi-lang-go="`storage.ManagedFolderIamPolicy`" pulumi-lang-python="`storage.ManagedFolderIamPolicy`" pulumi-lang-yaml="`gcp.storage.ManagedFolderIamPolicy`" pulumi-lang-java="`gcp.storage.ManagedFolderIamPolicy`">`gcp.storage.ManagedFolderIamPolicy`</span>: Retrieves the IAM policy for the managedfolder
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.storage.ManagedFolderIamPolicy`" pulumi-lang-dotnet="`gcp.storage.ManagedFolderIamPolicy`" pulumi-lang-go="`storage.ManagedFolderIamPolicy`" pulumi-lang-python="`storage.ManagedFolderIamPolicy`" pulumi-lang-yaml="`gcp.storage.ManagedFolderIamPolicy`" pulumi-lang-java="`gcp.storage.ManagedFolderIamPolicy`">`gcp.storage.ManagedFolderIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.storage.ManagedFolderIamBinding`" pulumi-lang-dotnet="`gcp.storage.ManagedFolderIamBinding`" pulumi-lang-go="`storage.ManagedFolderIamBinding`" pulumi-lang-python="`storage.ManagedFolderIamBinding`" pulumi-lang-yaml="`gcp.storage.ManagedFolderIamBinding`" pulumi-lang-java="`gcp.storage.ManagedFolderIamBinding`">`gcp.storage.ManagedFolderIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.storage.ManagedFolderIamMember`" pulumi-lang-dotnet="`gcp.storage.ManagedFolderIamMember`" pulumi-lang-go="`storage.ManagedFolderIamMember`" pulumi-lang-python="`storage.ManagedFolderIamMember`" pulumi-lang-yaml="`gcp.storage.ManagedFolderIamMember`" pulumi-lang-java="`gcp.storage.ManagedFolderIamMember`">`gcp.storage.ManagedFolderIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.storage.ManagedFolderIamBinding`" pulumi-lang-dotnet="`gcp.storage.ManagedFolderIamBinding`" pulumi-lang-go="`storage.ManagedFolderIamBinding`" pulumi-lang-python="`storage.ManagedFolderIamBinding`" pulumi-lang-yaml="`gcp.storage.ManagedFolderIamBinding`" pulumi-lang-java="`gcp.storage.ManagedFolderIamBinding`">`gcp.storage.ManagedFolderIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.storage.ManagedFolderIamMember`" pulumi-lang-dotnet="`gcp.storage.ManagedFolderIamMember`" pulumi-lang-go="`storage.ManagedFolderIamMember`" pulumi-lang-python="`storage.ManagedFolderIamMember`" pulumi-lang-yaml="`gcp.storage.ManagedFolderIamMember`" pulumi-lang-java="`gcp.storage.ManagedFolderIamMember`">`gcp.storage.ManagedFolderIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.storage.ManagedFolderIamPolicy
/// " pulumi-lang-dotnet=" gcp.storage.ManagedFolderIamPolicy
/// " pulumi-lang-go=" storage.ManagedFolderIamPolicy
/// " pulumi-lang-python=" storage.ManagedFolderIamPolicy
/// " pulumi-lang-yaml=" gcp.storage.ManagedFolderIamPolicy
/// " pulumi-lang-java=" gcp.storage.ManagedFolderIamPolicy
/// "> gcp.storage.ManagedFolderIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/storage.admin",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.storage.ManagedFolderIamPolicy("policy", {
/// bucket: folder.bucket,
/// managedFolder: folder.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/storage.admin",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.storage.ManagedFolderIamPolicy("policy",
/// bucket=folder["bucket"],
/// managed_folder=folder["name"],
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
/// Role = "roles/storage.admin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Storage.ManagedFolderIamPolicy("policy", new()
/// {
/// Bucket = folder.Bucket,
/// ManagedFolder = folder.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/storage.admin",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = storage.NewManagedFolderIamPolicy(ctx, "policy", &storage.ManagedFolderIamPolicyArgs{
/// Bucket:        pulumi.Any(folder.Bucket),
/// ManagedFolder: pulumi.Any(folder.Name),
/// PolicyData:    pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.storage.ManagedFolderIamPolicy;
/// import com.pulumi.gcp.storage.ManagedFolderIamPolicyArgs;
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
/// .role("roles/storage.admin")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new ManagedFolderIamPolicy("policy", ManagedFolderIamPolicyArgs.builder()
/// .bucket(folder.bucket())
/// .managedFolder(folder.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:storage:ManagedFolderIamPolicy
/// properties:
/// bucket: ${folder.bucket}
/// managedFolder: ${folder.name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/storage.admin
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
/// role: "roles/storage.admin",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const policy = new gcp.storage.ManagedFolderIamPolicy("policy", {
/// bucket: folder.bucket,
/// managedFolder: folder.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/storage.admin",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }])
/// policy = gcp.storage.ManagedFolderIamPolicy("policy",
/// bucket=folder["bucket"],
/// managed_folder=folder["name"],
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
/// Role = "roles/storage.admin",
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
/// var policy = new Gcp.Storage.ManagedFolderIamPolicy("policy", new()
/// {
/// Bucket = folder.Bucket,
/// ManagedFolder = folder.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/storage.admin",
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
/// _, err = storage.NewManagedFolderIamPolicy(ctx, "policy", &storage.ManagedFolderIamPolicyArgs{
/// Bucket:        pulumi.Any(folder.Bucket),
/// ManagedFolder: pulumi.Any(folder.Name),
/// PolicyData:    pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.storage.ManagedFolderIamPolicy;
/// import com.pulumi.gcp.storage.ManagedFolderIamPolicyArgs;
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
/// .role("roles/storage.admin")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var policy = new ManagedFolderIamPolicy("policy", ManagedFolderIamPolicyArgs.builder()
/// .bucket(folder.bucket())
/// .managedFolder(folder.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:storage:ManagedFolderIamPolicy
/// properties:
/// bucket: ${folder.bucket}
/// managedFolder: ${folder.name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/storage.admin
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.storage.ManagedFolderIamBinding
/// " pulumi-lang-dotnet=" gcp.storage.ManagedFolderIamBinding
/// " pulumi-lang-go=" storage.ManagedFolderIamBinding
/// " pulumi-lang-python=" storage.ManagedFolderIamBinding
/// " pulumi-lang-yaml=" gcp.storage.ManagedFolderIamBinding
/// " pulumi-lang-java=" gcp.storage.ManagedFolderIamBinding
/// "> gcp.storage.ManagedFolderIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.storage.ManagedFolderIamBinding("binding", {
/// bucket: folder.bucket,
/// managedFolder: folder.name,
/// role: "roles/storage.admin",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.storage.ManagedFolderIamBinding("binding",
/// bucket=folder["bucket"],
/// managed_folder=folder["name"],
/// role="roles/storage.admin",
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
/// var binding = new Gcp.Storage.ManagedFolderIamBinding("binding", new()
/// {
/// Bucket = folder.Bucket,
/// ManagedFolder = folder.Name,
/// Role = "roles/storage.admin",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := storage.NewManagedFolderIamBinding(ctx, "binding", &storage.ManagedFolderIamBindingArgs{
/// Bucket:        pulumi.Any(folder.Bucket),
/// ManagedFolder: pulumi.Any(folder.Name),
/// Role:          pulumi.String("roles/storage.admin"),
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
/// import com.pulumi.gcp.storage.ManagedFolderIamBinding;
/// import com.pulumi.gcp.storage.ManagedFolderIamBindingArgs;
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
/// var binding = new ManagedFolderIamBinding("binding", ManagedFolderIamBindingArgs.builder()
/// .bucket(folder.bucket())
/// .managedFolder(folder.name())
/// .role("roles/storage.admin")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:storage:ManagedFolderIamBinding
/// properties:
/// bucket: ${folder.bucket}
/// managedFolder: ${folder.name}
/// role: roles/storage.admin
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
/// const binding = new gcp.storage.ManagedFolderIamBinding("binding", {
/// bucket: folder.bucket,
/// managedFolder: folder.name,
/// role: "roles/storage.admin",
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
/// binding = gcp.storage.ManagedFolderIamBinding("binding",
/// bucket=folder["bucket"],
/// managed_folder=folder["name"],
/// role="roles/storage.admin",
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
/// var binding = new Gcp.Storage.ManagedFolderIamBinding("binding", new()
/// {
/// Bucket = folder.Bucket,
/// ManagedFolder = folder.Name,
/// Role = "roles/storage.admin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Storage.Inputs.ManagedFolderIamBindingConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := storage.NewManagedFolderIamBinding(ctx, "binding", &storage.ManagedFolderIamBindingArgs{
/// Bucket:        pulumi.Any(folder.Bucket),
/// ManagedFolder: pulumi.Any(folder.Name),
/// Role:          pulumi.String("roles/storage.admin"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &storage.ManagedFolderIamBindingConditionArgs{
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
/// import com.pulumi.gcp.storage.ManagedFolderIamBinding;
/// import com.pulumi.gcp.storage.ManagedFolderIamBindingArgs;
/// import com.pulumi.gcp.storage.inputs.ManagedFolderIamBindingConditionArgs;
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
/// var binding = new ManagedFolderIamBinding("binding", ManagedFolderIamBindingArgs.builder()
/// .bucket(folder.bucket())
/// .managedFolder(folder.name())
/// .role("roles/storage.admin")
/// .members("user:jane@example.com")
/// .condition(ManagedFolderIamBindingConditionArgs.builder()
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
/// type: gcp:storage:ManagedFolderIamBinding
/// properties:
/// bucket: ${folder.bucket}
/// managedFolder: ${folder.name}
/// role: roles/storage.admin
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.storage.ManagedFolderIamMember
/// " pulumi-lang-dotnet=" gcp.storage.ManagedFolderIamMember
/// " pulumi-lang-go=" storage.ManagedFolderIamMember
/// " pulumi-lang-python=" storage.ManagedFolderIamMember
/// " pulumi-lang-yaml=" gcp.storage.ManagedFolderIamMember
/// " pulumi-lang-java=" gcp.storage.ManagedFolderIamMember
/// "> gcp.storage.ManagedFolderIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.storage.ManagedFolderIamMember("member", {
/// bucket: folder.bucket,
/// managedFolder: folder.name,
/// role: "roles/storage.admin",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.storage.ManagedFolderIamMember("member",
/// bucket=folder["bucket"],
/// managed_folder=folder["name"],
/// role="roles/storage.admin",
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
/// var member = new Gcp.Storage.ManagedFolderIamMember("member", new()
/// {
/// Bucket = folder.Bucket,
/// ManagedFolder = folder.Name,
/// Role = "roles/storage.admin",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := storage.NewManagedFolderIamMember(ctx, "member", &storage.ManagedFolderIamMemberArgs{
/// Bucket:        pulumi.Any(folder.Bucket),
/// ManagedFolder: pulumi.Any(folder.Name),
/// Role:          pulumi.String("roles/storage.admin"),
/// Member:        pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.storage.ManagedFolderIamMember;
/// import com.pulumi.gcp.storage.ManagedFolderIamMemberArgs;
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
/// var member = new ManagedFolderIamMember("member", ManagedFolderIamMemberArgs.builder()
/// .bucket(folder.bucket())
/// .managedFolder(folder.name())
/// .role("roles/storage.admin")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:storage:ManagedFolderIamMember
/// properties:
/// bucket: ${folder.bucket}
/// managedFolder: ${folder.name}
/// role: roles/storage.admin
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
/// const member = new gcp.storage.ManagedFolderIamMember("member", {
/// bucket: folder.bucket,
/// managedFolder: folder.name,
/// role: "roles/storage.admin",
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
/// member = gcp.storage.ManagedFolderIamMember("member",
/// bucket=folder["bucket"],
/// managed_folder=folder["name"],
/// role="roles/storage.admin",
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
/// var member = new Gcp.Storage.ManagedFolderIamMember("member", new()
/// {
/// Bucket = folder.Bucket,
/// ManagedFolder = folder.Name,
/// Role = "roles/storage.admin",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Storage.Inputs.ManagedFolderIamMemberConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := storage.NewManagedFolderIamMember(ctx, "member", &storage.ManagedFolderIamMemberArgs{
/// Bucket:        pulumi.Any(folder.Bucket),
/// ManagedFolder: pulumi.Any(folder.Name),
/// Role:          pulumi.String("roles/storage.admin"),
/// Member:        pulumi.String("user:jane@example.com"),
/// Condition: &storage.ManagedFolderIamMemberConditionArgs{
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
/// import com.pulumi.gcp.storage.ManagedFolderIamMember;
/// import com.pulumi.gcp.storage.ManagedFolderIamMemberArgs;
/// import com.pulumi.gcp.storage.inputs.ManagedFolderIamMemberConditionArgs;
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
/// var member = new ManagedFolderIamMember("member", ManagedFolderIamMemberArgs.builder()
/// .bucket(folder.bucket())
/// .managedFolder(folder.name())
/// .role("roles/storage.admin")
/// .member("user:jane@example.com")
/// .condition(ManagedFolderIamMemberConditionArgs.builder()
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
/// type: gcp:storage:ManagedFolderIamMember
/// properties:
/// bucket: ${folder.bucket}
/// managedFolder: ${folder.name}
/// role: roles/storage.admin
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
/// * b/{{bucket}}/managedFolders/{{managed_folder}}
///
/// * {{bucket}}/{{managed_folder}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud Storage managedfolder IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:storage/managedFolderIamBinding:ManagedFolderIamBinding editor "b/{{bucket}}/managedFolders/{{managed_folder}} roles/storage.objectViewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:storage/managedFolderIamBinding:ManagedFolderIamBinding editor "b/{{bucket}}/managedFolders/{{managed_folder}} roles/storage.objectViewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:storage/managedFolderIamBinding:ManagedFolderIamBinding editor b/{{bucket}}/managedFolders/{{managed_folder}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class ManagedFolderIamBinding extends CustomResource {
  /// The name of the bucket that contains the managed folder. Used to find the parent resource to bind the IAM policy to
  late final Output<String> bucket;

  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  late final Output<ManagedFolderIamBindingCondition?> condition;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> managedFolder;

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
  late final Output<List<String>> members;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.storage.ManagedFolderIamBinding`" pulumi-lang-dotnet="`gcp.storage.ManagedFolderIamBinding`" pulumi-lang-go="`storage.ManagedFolderIamBinding`" pulumi-lang-python="`storage.ManagedFolderIamBinding`" pulumi-lang-yaml="`gcp.storage.ManagedFolderIamBinding`" pulumi-lang-java="`gcp.storage.ManagedFolderIamBinding`">`gcp.storage.ManagedFolderIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  ManagedFolderIamBinding(
    String name, {
    ManagedFolderIamBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:storage/managedFolderIamBinding:ManagedFolderIamBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = Output.createUnknown<String>();
    this.condition = Output.createUnknown<ManagedFolderIamBindingCondition?>();
    this.etag = Output.createUnknown<String>();
    this.managedFolder = Output.createUnknown<String>();
    this.members = Output.createUnknown<List<String>>();
    this.role = Output.createUnknown<String>();
  }
}
