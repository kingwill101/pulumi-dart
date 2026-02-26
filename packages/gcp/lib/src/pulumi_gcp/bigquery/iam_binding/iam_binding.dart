import 'package:pulumi/pulumi.dart';
import '../iam_binding_condition/iam_binding_condition.dart';
import 'iam_binding_args.dart';

/// Three different resources help you manage your IAM policy for BigQuery Table. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.bigquery.IamPolicy`" pulumi-lang-dotnet="`gcp.bigquery.IamPolicy`" pulumi-lang-go="`bigquery.IamPolicy`" pulumi-lang-python="`bigquery.IamPolicy`" pulumi-lang-yaml="`gcp.bigquery.IamPolicy`" pulumi-lang-java="`gcp.bigquery.IamPolicy`">`gcp.bigquery.IamPolicy`</span>: Authoritative. Sets the IAM policy for the table and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.bigquery.IamBinding`" pulumi-lang-dotnet="`gcp.bigquery.IamBinding`" pulumi-lang-go="`bigquery.IamBinding`" pulumi-lang-python="`bigquery.IamBinding`" pulumi-lang-yaml="`gcp.bigquery.IamBinding`" pulumi-lang-java="`gcp.bigquery.IamBinding`">`gcp.bigquery.IamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the table are preserved.
/// * <span pulumi-lang-nodejs="`gcp.bigquery.IamMember`" pulumi-lang-dotnet="`gcp.bigquery.IamMember`" pulumi-lang-go="`bigquery.IamMember`" pulumi-lang-python="`bigquery.IamMember`" pulumi-lang-yaml="`gcp.bigquery.IamMember`" pulumi-lang-java="`gcp.bigquery.IamMember`">`gcp.bigquery.IamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the table are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.bigquery.IamPolicy`" pulumi-lang-dotnet="`gcp.bigquery.IamPolicy`" pulumi-lang-go="`bigquery.IamPolicy`" pulumi-lang-python="`bigquery.IamPolicy`" pulumi-lang-yaml="`gcp.bigquery.IamPolicy`" pulumi-lang-java="`gcp.bigquery.IamPolicy`">`gcp.bigquery.IamPolicy`</span>: Retrieves the IAM policy for the table
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.bigquery.IamPolicy`" pulumi-lang-dotnet="`gcp.bigquery.IamPolicy`" pulumi-lang-go="`bigquery.IamPolicy`" pulumi-lang-python="`bigquery.IamPolicy`" pulumi-lang-yaml="`gcp.bigquery.IamPolicy`" pulumi-lang-java="`gcp.bigquery.IamPolicy`">`gcp.bigquery.IamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.bigquery.IamBinding`" pulumi-lang-dotnet="`gcp.bigquery.IamBinding`" pulumi-lang-go="`bigquery.IamBinding`" pulumi-lang-python="`bigquery.IamBinding`" pulumi-lang-yaml="`gcp.bigquery.IamBinding`" pulumi-lang-java="`gcp.bigquery.IamBinding`">`gcp.bigquery.IamBinding`</span> and <span pulumi-lang-nodejs="`gcp.bigquery.IamMember`" pulumi-lang-dotnet="`gcp.bigquery.IamMember`" pulumi-lang-go="`bigquery.IamMember`" pulumi-lang-python="`bigquery.IamMember`" pulumi-lang-yaml="`gcp.bigquery.IamMember`" pulumi-lang-java="`gcp.bigquery.IamMember`">`gcp.bigquery.IamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.bigquery.IamBinding`" pulumi-lang-dotnet="`gcp.bigquery.IamBinding`" pulumi-lang-go="`bigquery.IamBinding`" pulumi-lang-python="`bigquery.IamBinding`" pulumi-lang-yaml="`gcp.bigquery.IamBinding`" pulumi-lang-java="`gcp.bigquery.IamBinding`">`gcp.bigquery.IamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.bigquery.IamMember`" pulumi-lang-dotnet="`gcp.bigquery.IamMember`" pulumi-lang-go="`bigquery.IamMember`" pulumi-lang-python="`bigquery.IamMember`" pulumi-lang-yaml="`gcp.bigquery.IamMember`" pulumi-lang-java="`gcp.bigquery.IamMember`">`gcp.bigquery.IamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.bigquery.IamPolicy
/// " pulumi-lang-dotnet=" gcp.bigquery.IamPolicy
/// " pulumi-lang-go=" bigquery.IamPolicy
/// " pulumi-lang-python=" bigquery.IamPolicy
/// " pulumi-lang-yaml=" gcp.bigquery.IamPolicy
/// " pulumi-lang-java=" gcp.bigquery.IamPolicy
/// "> gcp.bigquery.IamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/bigquery.dataOwner",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.bigquery.IamPolicy("policy", {
/// project: test.project,
/// datasetId: test.datasetId,
/// tableId: test.tableId,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/bigquery.dataOwner",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.bigquery.IamPolicy("policy",
/// project=test["project"],
/// dataset_id=test["datasetId"],
/// table_id=test["tableId"],
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
/// Role = "roles/bigquery.dataOwner",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.BigQuery.IamPolicy("policy", new()
/// {
/// Project = test.Project,
/// DatasetId = test.DatasetId,
/// TableId = test.TableId,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/bigquery.dataOwner",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = bigquery.NewIamPolicy(ctx, "policy", &bigquery.IamPolicyArgs{
/// Project:    pulumi.Any(test.Project),
/// DatasetId:  pulumi.Any(test.DatasetId),
/// TableId:    pulumi.Any(test.TableId),
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
/// import com.pulumi.gcp.bigquery.IamPolicy;
/// import com.pulumi.gcp.bigquery.IamPolicyArgs;
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
/// .role("roles/bigquery.dataOwner")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new IamPolicy("policy", IamPolicyArgs.builder()
/// .project(test.project())
/// .datasetId(test.datasetId())
/// .tableId(test.tableId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:bigquery:IamPolicy
/// properties:
/// project: ${test.project}
/// datasetId: ${test.datasetId}
/// tableId: ${test.tableId}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/bigquery.dataOwner
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.bigquery.IamBinding
/// " pulumi-lang-dotnet=" gcp.bigquery.IamBinding
/// " pulumi-lang-go=" bigquery.IamBinding
/// " pulumi-lang-python=" bigquery.IamBinding
/// " pulumi-lang-yaml=" gcp.bigquery.IamBinding
/// " pulumi-lang-java=" gcp.bigquery.IamBinding
/// "> gcp.bigquery.IamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.bigquery.IamBinding("binding", {
/// project: test.project,
/// datasetId: test.datasetId,
/// tableId: test.tableId,
/// role: "roles/bigquery.dataOwner",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.bigquery.IamBinding("binding",
/// project=test["project"],
/// dataset_id=test["datasetId"],
/// table_id=test["tableId"],
/// role="roles/bigquery.dataOwner",
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
/// var binding = new Gcp.BigQuery.IamBinding("binding", new()
/// {
/// Project = test.Project,
/// DatasetId = test.DatasetId,
/// TableId = test.TableId,
/// Role = "roles/bigquery.dataOwner",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigquery.NewIamBinding(ctx, "binding", &bigquery.IamBindingArgs{
/// Project:   pulumi.Any(test.Project),
/// DatasetId: pulumi.Any(test.DatasetId),
/// TableId:   pulumi.Any(test.TableId),
/// Role:      pulumi.String("roles/bigquery.dataOwner"),
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
/// import com.pulumi.gcp.bigquery.IamBinding;
/// import com.pulumi.gcp.bigquery.IamBindingArgs;
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
/// var binding = new IamBinding("binding", IamBindingArgs.builder()
/// .project(test.project())
/// .datasetId(test.datasetId())
/// .tableId(test.tableId())
/// .role("roles/bigquery.dataOwner")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:bigquery:IamBinding
/// properties:
/// project: ${test.project}
/// datasetId: ${test.datasetId}
/// tableId: ${test.tableId}
/// role: roles/bigquery.dataOwner
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.bigquery.IamMember
/// " pulumi-lang-dotnet=" gcp.bigquery.IamMember
/// " pulumi-lang-go=" bigquery.IamMember
/// " pulumi-lang-python=" bigquery.IamMember
/// " pulumi-lang-yaml=" gcp.bigquery.IamMember
/// " pulumi-lang-java=" gcp.bigquery.IamMember
/// "> gcp.bigquery.IamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.bigquery.IamMember("member", {
/// project: test.project,
/// datasetId: test.datasetId,
/// tableId: test.tableId,
/// role: "roles/bigquery.dataOwner",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.bigquery.IamMember("member",
/// project=test["project"],
/// dataset_id=test["datasetId"],
/// table_id=test["tableId"],
/// role="roles/bigquery.dataOwner",
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
/// var member = new Gcp.BigQuery.IamMember("member", new()
/// {
/// Project = test.Project,
/// DatasetId = test.DatasetId,
/// TableId = test.TableId,
/// Role = "roles/bigquery.dataOwner",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigquery.NewIamMember(ctx, "member", &bigquery.IamMemberArgs{
/// Project:   pulumi.Any(test.Project),
/// DatasetId: pulumi.Any(test.DatasetId),
/// TableId:   pulumi.Any(test.TableId),
/// Role:      pulumi.String("roles/bigquery.dataOwner"),
/// Member:    pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.bigquery.IamMember;
/// import com.pulumi.gcp.bigquery.IamMemberArgs;
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
/// var member = new IamMember("member", IamMemberArgs.builder()
/// .project(test.project())
/// .datasetId(test.datasetId())
/// .tableId(test.tableId())
/// .role("roles/bigquery.dataOwner")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:bigquery:IamMember
/// properties:
/// project: ${test.project}
/// datasetId: ${test.datasetId}
/// tableId: ${test.tableId}
/// role: roles/bigquery.dataOwner
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for BigQuery Table
///
/// Three different resources help you manage your IAM policy for BigQuery Table. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.bigquery.IamPolicy`" pulumi-lang-dotnet="`gcp.bigquery.IamPolicy`" pulumi-lang-go="`bigquery.IamPolicy`" pulumi-lang-python="`bigquery.IamPolicy`" pulumi-lang-yaml="`gcp.bigquery.IamPolicy`" pulumi-lang-java="`gcp.bigquery.IamPolicy`">`gcp.bigquery.IamPolicy`</span>: Authoritative. Sets the IAM policy for the table and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.bigquery.IamBinding`" pulumi-lang-dotnet="`gcp.bigquery.IamBinding`" pulumi-lang-go="`bigquery.IamBinding`" pulumi-lang-python="`bigquery.IamBinding`" pulumi-lang-yaml="`gcp.bigquery.IamBinding`" pulumi-lang-java="`gcp.bigquery.IamBinding`">`gcp.bigquery.IamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the table are preserved.
/// * <span pulumi-lang-nodejs="`gcp.bigquery.IamMember`" pulumi-lang-dotnet="`gcp.bigquery.IamMember`" pulumi-lang-go="`bigquery.IamMember`" pulumi-lang-python="`bigquery.IamMember`" pulumi-lang-yaml="`gcp.bigquery.IamMember`" pulumi-lang-java="`gcp.bigquery.IamMember`">`gcp.bigquery.IamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the table are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.bigquery.IamPolicy`" pulumi-lang-dotnet="`gcp.bigquery.IamPolicy`" pulumi-lang-go="`bigquery.IamPolicy`" pulumi-lang-python="`bigquery.IamPolicy`" pulumi-lang-yaml="`gcp.bigquery.IamPolicy`" pulumi-lang-java="`gcp.bigquery.IamPolicy`">`gcp.bigquery.IamPolicy`</span>: Retrieves the IAM policy for the table
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.bigquery.IamPolicy`" pulumi-lang-dotnet="`gcp.bigquery.IamPolicy`" pulumi-lang-go="`bigquery.IamPolicy`" pulumi-lang-python="`bigquery.IamPolicy`" pulumi-lang-yaml="`gcp.bigquery.IamPolicy`" pulumi-lang-java="`gcp.bigquery.IamPolicy`">`gcp.bigquery.IamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.bigquery.IamBinding`" pulumi-lang-dotnet="`gcp.bigquery.IamBinding`" pulumi-lang-go="`bigquery.IamBinding`" pulumi-lang-python="`bigquery.IamBinding`" pulumi-lang-yaml="`gcp.bigquery.IamBinding`" pulumi-lang-java="`gcp.bigquery.IamBinding`">`gcp.bigquery.IamBinding`</span> and <span pulumi-lang-nodejs="`gcp.bigquery.IamMember`" pulumi-lang-dotnet="`gcp.bigquery.IamMember`" pulumi-lang-go="`bigquery.IamMember`" pulumi-lang-python="`bigquery.IamMember`" pulumi-lang-yaml="`gcp.bigquery.IamMember`" pulumi-lang-java="`gcp.bigquery.IamMember`">`gcp.bigquery.IamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.bigquery.IamBinding`" pulumi-lang-dotnet="`gcp.bigquery.IamBinding`" pulumi-lang-go="`bigquery.IamBinding`" pulumi-lang-python="`bigquery.IamBinding`" pulumi-lang-yaml="`gcp.bigquery.IamBinding`" pulumi-lang-java="`gcp.bigquery.IamBinding`">`gcp.bigquery.IamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.bigquery.IamMember`" pulumi-lang-dotnet="`gcp.bigquery.IamMember`" pulumi-lang-go="`bigquery.IamMember`" pulumi-lang-python="`bigquery.IamMember`" pulumi-lang-yaml="`gcp.bigquery.IamMember`" pulumi-lang-java="`gcp.bigquery.IamMember`">`gcp.bigquery.IamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.bigquery.IamPolicy
/// " pulumi-lang-dotnet=" gcp.bigquery.IamPolicy
/// " pulumi-lang-go=" bigquery.IamPolicy
/// " pulumi-lang-python=" bigquery.IamPolicy
/// " pulumi-lang-yaml=" gcp.bigquery.IamPolicy
/// " pulumi-lang-java=" gcp.bigquery.IamPolicy
/// "> gcp.bigquery.IamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/bigquery.dataOwner",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.bigquery.IamPolicy("policy", {
/// project: test.project,
/// datasetId: test.datasetId,
/// tableId: test.tableId,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/bigquery.dataOwner",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.bigquery.IamPolicy("policy",
/// project=test["project"],
/// dataset_id=test["datasetId"],
/// table_id=test["tableId"],
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
/// Role = "roles/bigquery.dataOwner",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.BigQuery.IamPolicy("policy", new()
/// {
/// Project = test.Project,
/// DatasetId = test.DatasetId,
/// TableId = test.TableId,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/bigquery.dataOwner",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = bigquery.NewIamPolicy(ctx, "policy", &bigquery.IamPolicyArgs{
/// Project:    pulumi.Any(test.Project),
/// DatasetId:  pulumi.Any(test.DatasetId),
/// TableId:    pulumi.Any(test.TableId),
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
/// import com.pulumi.gcp.bigquery.IamPolicy;
/// import com.pulumi.gcp.bigquery.IamPolicyArgs;
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
/// .role("roles/bigquery.dataOwner")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new IamPolicy("policy", IamPolicyArgs.builder()
/// .project(test.project())
/// .datasetId(test.datasetId())
/// .tableId(test.tableId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:bigquery:IamPolicy
/// properties:
/// project: ${test.project}
/// datasetId: ${test.datasetId}
/// tableId: ${test.tableId}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/bigquery.dataOwner
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.bigquery.IamBinding
/// " pulumi-lang-dotnet=" gcp.bigquery.IamBinding
/// " pulumi-lang-go=" bigquery.IamBinding
/// " pulumi-lang-python=" bigquery.IamBinding
/// " pulumi-lang-yaml=" gcp.bigquery.IamBinding
/// " pulumi-lang-java=" gcp.bigquery.IamBinding
/// "> gcp.bigquery.IamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.bigquery.IamBinding("binding", {
/// project: test.project,
/// datasetId: test.datasetId,
/// tableId: test.tableId,
/// role: "roles/bigquery.dataOwner",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.bigquery.IamBinding("binding",
/// project=test["project"],
/// dataset_id=test["datasetId"],
/// table_id=test["tableId"],
/// role="roles/bigquery.dataOwner",
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
/// var binding = new Gcp.BigQuery.IamBinding("binding", new()
/// {
/// Project = test.Project,
/// DatasetId = test.DatasetId,
/// TableId = test.TableId,
/// Role = "roles/bigquery.dataOwner",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigquery.NewIamBinding(ctx, "binding", &bigquery.IamBindingArgs{
/// Project:   pulumi.Any(test.Project),
/// DatasetId: pulumi.Any(test.DatasetId),
/// TableId:   pulumi.Any(test.TableId),
/// Role:      pulumi.String("roles/bigquery.dataOwner"),
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
/// import com.pulumi.gcp.bigquery.IamBinding;
/// import com.pulumi.gcp.bigquery.IamBindingArgs;
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
/// var binding = new IamBinding("binding", IamBindingArgs.builder()
/// .project(test.project())
/// .datasetId(test.datasetId())
/// .tableId(test.tableId())
/// .role("roles/bigquery.dataOwner")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:bigquery:IamBinding
/// properties:
/// project: ${test.project}
/// datasetId: ${test.datasetId}
/// tableId: ${test.tableId}
/// role: roles/bigquery.dataOwner
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.bigquery.IamMember
/// " pulumi-lang-dotnet=" gcp.bigquery.IamMember
/// " pulumi-lang-go=" bigquery.IamMember
/// " pulumi-lang-python=" bigquery.IamMember
/// " pulumi-lang-yaml=" gcp.bigquery.IamMember
/// " pulumi-lang-java=" gcp.bigquery.IamMember
/// "> gcp.bigquery.IamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.bigquery.IamMember("member", {
/// project: test.project,
/// datasetId: test.datasetId,
/// tableId: test.tableId,
/// role: "roles/bigquery.dataOwner",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.bigquery.IamMember("member",
/// project=test["project"],
/// dataset_id=test["datasetId"],
/// table_id=test["tableId"],
/// role="roles/bigquery.dataOwner",
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
/// var member = new Gcp.BigQuery.IamMember("member", new()
/// {
/// Project = test.Project,
/// DatasetId = test.DatasetId,
/// TableId = test.TableId,
/// Role = "roles/bigquery.dataOwner",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigquery.NewIamMember(ctx, "member", &bigquery.IamMemberArgs{
/// Project:   pulumi.Any(test.Project),
/// DatasetId: pulumi.Any(test.DatasetId),
/// TableId:   pulumi.Any(test.TableId),
/// Role:      pulumi.String("roles/bigquery.dataOwner"),
/// Member:    pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.bigquery.IamMember;
/// import com.pulumi.gcp.bigquery.IamMemberArgs;
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
/// var member = new IamMember("member", IamMemberArgs.builder()
/// .project(test.project())
/// .datasetId(test.datasetId())
/// .tableId(test.tableId())
/// .role("roles/bigquery.dataOwner")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:bigquery:IamMember
/// properties:
/// project: ${test.project}
/// datasetId: ${test.datasetId}
/// tableId: ${test.tableId}
/// role: roles/bigquery.dataOwner
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}
///
/// * {{project}}/{{dataset_id}}/{{table_id}}
///
/// * {{dataset_id}}/{{table_id}}
///
/// * {{table_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// BigQuery table IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:bigquery/iamBinding:IamBinding editor "projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}} roles/bigquery.dataOwner user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:bigquery/iamBinding:IamBinding editor "projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}} roles/bigquery.dataOwner"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:bigquery/iamBinding:IamBinding editor projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class IamBinding extends CustomResource {
  late final Output<IamBindingCondition?> condition;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> datasetId;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

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
  late final Output<List<String>> members;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.bigquery.IamBinding`" pulumi-lang-dotnet="`gcp.bigquery.IamBinding`" pulumi-lang-go="`bigquery.IamBinding`" pulumi-lang-python="`bigquery.IamBinding`" pulumi-lang-yaml="`gcp.bigquery.IamBinding`" pulumi-lang-java="`gcp.bigquery.IamBinding`">`gcp.bigquery.IamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> tableId;

  IamBinding(
    String name, {
    IamBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/iamBinding:IamBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = Output.createUnknown<IamBindingCondition?>();
    this.datasetId = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.members = Output.createUnknown<List<String>>();
    this.project = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
    this.tableId = Output.createUnknown<String>();
  }
}
