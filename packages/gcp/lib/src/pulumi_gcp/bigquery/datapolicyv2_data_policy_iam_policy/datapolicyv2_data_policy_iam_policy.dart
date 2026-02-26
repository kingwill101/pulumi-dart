import 'package:pulumi/pulumi.dart';
import 'datapolicyv2_data_policy_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for BigQuery Data Policy V2 DataPolicy. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-dotnet="`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-go="`bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-python="`bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-yaml="`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-java="`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`">`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`</span>: Authoritative. Sets the IAM policy for the datapolicy and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-dotnet="`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-go="`bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-python="`bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-yaml="`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-java="`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`">`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the datapolicy are preserved.
/// * <span pulumi-lang-nodejs="`gcp.bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-dotnet="`gcp.bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-go="`bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-python="`bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-yaml="`gcp.bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-java="`gcp.bigquery.Datapolicyv2DataPolicyIamMember`">`gcp.bigquery.Datapolicyv2DataPolicyIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the datapolicy are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-dotnet="`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-go="`bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-python="`bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-yaml="`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-java="`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`">`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`</span>: Retrieves the IAM policy for the datapolicy
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-dotnet="`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-go="`bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-python="`bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-yaml="`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-java="`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`">`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-dotnet="`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-go="`bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-python="`bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-yaml="`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-java="`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`">`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-dotnet="`gcp.bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-go="`bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-python="`bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-yaml="`gcp.bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-java="`gcp.bigquery.Datapolicyv2DataPolicyIamMember`">`gcp.bigquery.Datapolicyv2DataPolicyIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-dotnet="`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-go="`bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-python="`bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-yaml="`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-java="`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`">`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-dotnet="`gcp.bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-go="`bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-python="`bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-yaml="`gcp.bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-java="`gcp.bigquery.Datapolicyv2DataPolicyIamMember`">`gcp.bigquery.Datapolicyv2DataPolicyIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.bigquery.Datapolicyv2DataPolicyIamPolicy
/// " pulumi-lang-dotnet=" gcp.bigquery.Datapolicyv2DataPolicyIamPolicy
/// " pulumi-lang-go=" bigquery.Datapolicyv2DataPolicyIamPolicy
/// " pulumi-lang-python=" bigquery.Datapolicyv2DataPolicyIamPolicy
/// " pulumi-lang-yaml=" gcp.bigquery.Datapolicyv2DataPolicyIamPolicy
/// " pulumi-lang-java=" gcp.bigquery.Datapolicyv2DataPolicyIamPolicy
/// "> gcp.bigquery.Datapolicyv2DataPolicyIamPolicy
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
/// const policy = new gcp.bigquery.Datapolicyv2DataPolicyIamPolicy("policy", {
/// project: basicDataPolicy.project,
/// location: basicDataPolicy.location,
/// dataPolicyId: basicDataPolicy.dataPolicyId,
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
/// policy = gcp.bigquery.Datapolicyv2DataPolicyIamPolicy("policy",
/// project=basic_data_policy["project"],
/// location=basic_data_policy["location"],
/// data_policy_id=basic_data_policy["dataPolicyId"],
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
/// var policy = new Gcp.BigQuery.Datapolicyv2DataPolicyIamPolicy("policy", new()
/// {
/// Project = basicDataPolicy.Project,
/// Location = basicDataPolicy.Location,
/// DataPolicyId = basicDataPolicy.DataPolicyId,
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
/// _, err = bigquery.NewDatapolicyv2DataPolicyIamPolicy(ctx, "policy", &bigquery.Datapolicyv2DataPolicyIamPolicyArgs{
/// Project:      pulumi.Any(basicDataPolicy.Project),
/// Location:     pulumi.Any(basicDataPolicy.Location),
/// DataPolicyId: pulumi.Any(basicDataPolicy.DataPolicyId),
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
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicyIamPolicy;
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicyIamPolicyArgs;
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
/// var policy = new Datapolicyv2DataPolicyIamPolicy("policy", Datapolicyv2DataPolicyIamPolicyArgs.builder()
/// .project(basicDataPolicy.project())
/// .location(basicDataPolicy.location())
/// .dataPolicyId(basicDataPolicy.dataPolicyId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:bigquery:Datapolicyv2DataPolicyIamPolicy
/// properties:
/// project: ${basicDataPolicy.project}
/// location: ${basicDataPolicy.location}
/// dataPolicyId: ${basicDataPolicy.dataPolicyId}
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
/// ##<span pulumi-lang-nodejs=" gcp.bigquery.Datapolicyv2DataPolicyIamBinding
/// " pulumi-lang-dotnet=" gcp.bigquery.Datapolicyv2DataPolicyIamBinding
/// " pulumi-lang-go=" bigquery.Datapolicyv2DataPolicyIamBinding
/// " pulumi-lang-python=" bigquery.Datapolicyv2DataPolicyIamBinding
/// " pulumi-lang-yaml=" gcp.bigquery.Datapolicyv2DataPolicyIamBinding
/// " pulumi-lang-java=" gcp.bigquery.Datapolicyv2DataPolicyIamBinding
/// "> gcp.bigquery.Datapolicyv2DataPolicyIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.bigquery.Datapolicyv2DataPolicyIamBinding("binding", {
/// project: basicDataPolicy.project,
/// location: basicDataPolicy.location,
/// dataPolicyId: basicDataPolicy.dataPolicyId,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.bigquery.Datapolicyv2DataPolicyIamBinding("binding",
/// project=basic_data_policy["project"],
/// location=basic_data_policy["location"],
/// data_policy_id=basic_data_policy["dataPolicyId"],
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
/// var binding = new Gcp.BigQuery.Datapolicyv2DataPolicyIamBinding("binding", new()
/// {
/// Project = basicDataPolicy.Project,
/// Location = basicDataPolicy.Location,
/// DataPolicyId = basicDataPolicy.DataPolicyId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigquery.NewDatapolicyv2DataPolicyIamBinding(ctx, "binding", &bigquery.Datapolicyv2DataPolicyIamBindingArgs{
/// Project:      pulumi.Any(basicDataPolicy.Project),
/// Location:     pulumi.Any(basicDataPolicy.Location),
/// DataPolicyId: pulumi.Any(basicDataPolicy.DataPolicyId),
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
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicyIamBinding;
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicyIamBindingArgs;
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
/// var binding = new Datapolicyv2DataPolicyIamBinding("binding", Datapolicyv2DataPolicyIamBindingArgs.builder()
/// .project(basicDataPolicy.project())
/// .location(basicDataPolicy.location())
/// .dataPolicyId(basicDataPolicy.dataPolicyId())
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
/// type: gcp:bigquery:Datapolicyv2DataPolicyIamBinding
/// properties:
/// project: ${basicDataPolicy.project}
/// location: ${basicDataPolicy.location}
/// dataPolicyId: ${basicDataPolicy.dataPolicyId}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.bigquery.Datapolicyv2DataPolicyIamMember
/// " pulumi-lang-dotnet=" gcp.bigquery.Datapolicyv2DataPolicyIamMember
/// " pulumi-lang-go=" bigquery.Datapolicyv2DataPolicyIamMember
/// " pulumi-lang-python=" bigquery.Datapolicyv2DataPolicyIamMember
/// " pulumi-lang-yaml=" gcp.bigquery.Datapolicyv2DataPolicyIamMember
/// " pulumi-lang-java=" gcp.bigquery.Datapolicyv2DataPolicyIamMember
/// "> gcp.bigquery.Datapolicyv2DataPolicyIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.bigquery.Datapolicyv2DataPolicyIamMember("member", {
/// project: basicDataPolicy.project,
/// location: basicDataPolicy.location,
/// dataPolicyId: basicDataPolicy.dataPolicyId,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.bigquery.Datapolicyv2DataPolicyIamMember("member",
/// project=basic_data_policy["project"],
/// location=basic_data_policy["location"],
/// data_policy_id=basic_data_policy["dataPolicyId"],
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
/// var member = new Gcp.BigQuery.Datapolicyv2DataPolicyIamMember("member", new()
/// {
/// Project = basicDataPolicy.Project,
/// Location = basicDataPolicy.Location,
/// DataPolicyId = basicDataPolicy.DataPolicyId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigquery.NewDatapolicyv2DataPolicyIamMember(ctx, "member", &bigquery.Datapolicyv2DataPolicyIamMemberArgs{
/// Project:      pulumi.Any(basicDataPolicy.Project),
/// Location:     pulumi.Any(basicDataPolicy.Location),
/// DataPolicyId: pulumi.Any(basicDataPolicy.DataPolicyId),
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
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicyIamMember;
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicyIamMemberArgs;
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
/// var member = new Datapolicyv2DataPolicyIamMember("member", Datapolicyv2DataPolicyIamMemberArgs.builder()
/// .project(basicDataPolicy.project())
/// .location(basicDataPolicy.location())
/// .dataPolicyId(basicDataPolicy.dataPolicyId())
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
/// type: gcp:bigquery:Datapolicyv2DataPolicyIamMember
/// properties:
/// project: ${basicDataPolicy.project}
/// location: ${basicDataPolicy.location}
/// dataPolicyId: ${basicDataPolicy.dataPolicyId}
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
/// # IAM policy for BigQuery Data Policy V2 DataPolicy
///
/// Three different resources help you manage your IAM policy for BigQuery Data Policy V2 DataPolicy. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-dotnet="`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-go="`bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-python="`bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-yaml="`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-java="`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`">`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`</span>: Authoritative. Sets the IAM policy for the datapolicy and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-dotnet="`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-go="`bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-python="`bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-yaml="`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-java="`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`">`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the datapolicy are preserved.
/// * <span pulumi-lang-nodejs="`gcp.bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-dotnet="`gcp.bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-go="`bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-python="`bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-yaml="`gcp.bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-java="`gcp.bigquery.Datapolicyv2DataPolicyIamMember`">`gcp.bigquery.Datapolicyv2DataPolicyIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the datapolicy are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-dotnet="`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-go="`bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-python="`bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-yaml="`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-java="`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`">`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`</span>: Retrieves the IAM policy for the datapolicy
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-dotnet="`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-go="`bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-python="`bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-yaml="`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`" pulumi-lang-java="`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`">`gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-dotnet="`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-go="`bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-python="`bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-yaml="`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-java="`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`">`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-dotnet="`gcp.bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-go="`bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-python="`bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-yaml="`gcp.bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-java="`gcp.bigquery.Datapolicyv2DataPolicyIamMember`">`gcp.bigquery.Datapolicyv2DataPolicyIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-dotnet="`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-go="`bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-python="`bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-yaml="`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`" pulumi-lang-java="`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`">`gcp.bigquery.Datapolicyv2DataPolicyIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-dotnet="`gcp.bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-go="`bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-python="`bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-yaml="`gcp.bigquery.Datapolicyv2DataPolicyIamMember`" pulumi-lang-java="`gcp.bigquery.Datapolicyv2DataPolicyIamMember`">`gcp.bigquery.Datapolicyv2DataPolicyIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.bigquery.Datapolicyv2DataPolicyIamPolicy
/// " pulumi-lang-dotnet=" gcp.bigquery.Datapolicyv2DataPolicyIamPolicy
/// " pulumi-lang-go=" bigquery.Datapolicyv2DataPolicyIamPolicy
/// " pulumi-lang-python=" bigquery.Datapolicyv2DataPolicyIamPolicy
/// " pulumi-lang-yaml=" gcp.bigquery.Datapolicyv2DataPolicyIamPolicy
/// " pulumi-lang-java=" gcp.bigquery.Datapolicyv2DataPolicyIamPolicy
/// "> gcp.bigquery.Datapolicyv2DataPolicyIamPolicy
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
/// const policy = new gcp.bigquery.Datapolicyv2DataPolicyIamPolicy("policy", {
/// project: basicDataPolicy.project,
/// location: basicDataPolicy.location,
/// dataPolicyId: basicDataPolicy.dataPolicyId,
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
/// policy = gcp.bigquery.Datapolicyv2DataPolicyIamPolicy("policy",
/// project=basic_data_policy["project"],
/// location=basic_data_policy["location"],
/// data_policy_id=basic_data_policy["dataPolicyId"],
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
/// var policy = new Gcp.BigQuery.Datapolicyv2DataPolicyIamPolicy("policy", new()
/// {
/// Project = basicDataPolicy.Project,
/// Location = basicDataPolicy.Location,
/// DataPolicyId = basicDataPolicy.DataPolicyId,
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
/// _, err = bigquery.NewDatapolicyv2DataPolicyIamPolicy(ctx, "policy", &bigquery.Datapolicyv2DataPolicyIamPolicyArgs{
/// Project:      pulumi.Any(basicDataPolicy.Project),
/// Location:     pulumi.Any(basicDataPolicy.Location),
/// DataPolicyId: pulumi.Any(basicDataPolicy.DataPolicyId),
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
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicyIamPolicy;
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicyIamPolicyArgs;
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
/// var policy = new Datapolicyv2DataPolicyIamPolicy("policy", Datapolicyv2DataPolicyIamPolicyArgs.builder()
/// .project(basicDataPolicy.project())
/// .location(basicDataPolicy.location())
/// .dataPolicyId(basicDataPolicy.dataPolicyId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:bigquery:Datapolicyv2DataPolicyIamPolicy
/// properties:
/// project: ${basicDataPolicy.project}
/// location: ${basicDataPolicy.location}
/// dataPolicyId: ${basicDataPolicy.dataPolicyId}
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
/// ##<span pulumi-lang-nodejs=" gcp.bigquery.Datapolicyv2DataPolicyIamBinding
/// " pulumi-lang-dotnet=" gcp.bigquery.Datapolicyv2DataPolicyIamBinding
/// " pulumi-lang-go=" bigquery.Datapolicyv2DataPolicyIamBinding
/// " pulumi-lang-python=" bigquery.Datapolicyv2DataPolicyIamBinding
/// " pulumi-lang-yaml=" gcp.bigquery.Datapolicyv2DataPolicyIamBinding
/// " pulumi-lang-java=" gcp.bigquery.Datapolicyv2DataPolicyIamBinding
/// "> gcp.bigquery.Datapolicyv2DataPolicyIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.bigquery.Datapolicyv2DataPolicyIamBinding("binding", {
/// project: basicDataPolicy.project,
/// location: basicDataPolicy.location,
/// dataPolicyId: basicDataPolicy.dataPolicyId,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.bigquery.Datapolicyv2DataPolicyIamBinding("binding",
/// project=basic_data_policy["project"],
/// location=basic_data_policy["location"],
/// data_policy_id=basic_data_policy["dataPolicyId"],
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
/// var binding = new Gcp.BigQuery.Datapolicyv2DataPolicyIamBinding("binding", new()
/// {
/// Project = basicDataPolicy.Project,
/// Location = basicDataPolicy.Location,
/// DataPolicyId = basicDataPolicy.DataPolicyId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigquery.NewDatapolicyv2DataPolicyIamBinding(ctx, "binding", &bigquery.Datapolicyv2DataPolicyIamBindingArgs{
/// Project:      pulumi.Any(basicDataPolicy.Project),
/// Location:     pulumi.Any(basicDataPolicy.Location),
/// DataPolicyId: pulumi.Any(basicDataPolicy.DataPolicyId),
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
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicyIamBinding;
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicyIamBindingArgs;
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
/// var binding = new Datapolicyv2DataPolicyIamBinding("binding", Datapolicyv2DataPolicyIamBindingArgs.builder()
/// .project(basicDataPolicy.project())
/// .location(basicDataPolicy.location())
/// .dataPolicyId(basicDataPolicy.dataPolicyId())
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
/// type: gcp:bigquery:Datapolicyv2DataPolicyIamBinding
/// properties:
/// project: ${basicDataPolicy.project}
/// location: ${basicDataPolicy.location}
/// dataPolicyId: ${basicDataPolicy.dataPolicyId}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.bigquery.Datapolicyv2DataPolicyIamMember
/// " pulumi-lang-dotnet=" gcp.bigquery.Datapolicyv2DataPolicyIamMember
/// " pulumi-lang-go=" bigquery.Datapolicyv2DataPolicyIamMember
/// " pulumi-lang-python=" bigquery.Datapolicyv2DataPolicyIamMember
/// " pulumi-lang-yaml=" gcp.bigquery.Datapolicyv2DataPolicyIamMember
/// " pulumi-lang-java=" gcp.bigquery.Datapolicyv2DataPolicyIamMember
/// "> gcp.bigquery.Datapolicyv2DataPolicyIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.bigquery.Datapolicyv2DataPolicyIamMember("member", {
/// project: basicDataPolicy.project,
/// location: basicDataPolicy.location,
/// dataPolicyId: basicDataPolicy.dataPolicyId,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.bigquery.Datapolicyv2DataPolicyIamMember("member",
/// project=basic_data_policy["project"],
/// location=basic_data_policy["location"],
/// data_policy_id=basic_data_policy["dataPolicyId"],
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
/// var member = new Gcp.BigQuery.Datapolicyv2DataPolicyIamMember("member", new()
/// {
/// Project = basicDataPolicy.Project,
/// Location = basicDataPolicy.Location,
/// DataPolicyId = basicDataPolicy.DataPolicyId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigquery.NewDatapolicyv2DataPolicyIamMember(ctx, "member", &bigquery.Datapolicyv2DataPolicyIamMemberArgs{
/// Project:      pulumi.Any(basicDataPolicy.Project),
/// Location:     pulumi.Any(basicDataPolicy.Location),
/// DataPolicyId: pulumi.Any(basicDataPolicy.DataPolicyId),
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
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicyIamMember;
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicyIamMemberArgs;
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
/// var member = new Datapolicyv2DataPolicyIamMember("member", Datapolicyv2DataPolicyIamMemberArgs.builder()
/// .project(basicDataPolicy.project())
/// .location(basicDataPolicy.location())
/// .dataPolicyId(basicDataPolicy.dataPolicyId())
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
/// type: gcp:bigquery:Datapolicyv2DataPolicyIamMember
/// properties:
/// project: ${basicDataPolicy.project}
/// location: ${basicDataPolicy.location}
/// dataPolicyId: ${basicDataPolicy.dataPolicyId}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/dataPolicies/{{data_policy_id}}
///
/// * {{project}}/{{location}}/{{data_policy_id}}
///
/// * {{location}}/{{data_policy_id}}
///
/// * {{data_policy_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// BigQuery Data Policy V2 datapolicy IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:bigquery/datapolicyv2DataPolicyIamPolicy:Datapolicyv2DataPolicyIamPolicy editor "projects/{{project}}/locations/{{location}}/dataPolicies/{{data_policy_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:bigquery/datapolicyv2DataPolicyIamPolicy:Datapolicyv2DataPolicyIamPolicy editor "projects/{{project}}/locations/{{location}}/dataPolicies/{{data_policy_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:bigquery/datapolicyv2DataPolicyIamPolicy:Datapolicyv2DataPolicyIamPolicy editor projects/{{project}}/locations/{{location}}/dataPolicies/{{data_policy_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class Datapolicyv2DataPolicyIamPolicy extends CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> dataPolicyId;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final Output<String> location;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  Datapolicyv2DataPolicyIamPolicy(
    String name, {
    Datapolicyv2DataPolicyIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/datapolicyv2DataPolicyIamPolicy:Datapolicyv2DataPolicyIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.dataPolicyId = registerOutput<String>('dataPolicyId');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}
