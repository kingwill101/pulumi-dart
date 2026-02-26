import 'package:pulumi/pulumi.dart';
import '../data_policy_iam_binding_condition/data_policy_iam_binding_condition.dart';
import 'data_policy_iam_binding_args.dart';

/// Three different resources help you manage your IAM policy for BigQuery Data Policy DataPolicy. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-dotnet="`gcp.bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-go="`bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-python="`bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-yaml="`gcp.bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-java="`gcp.bigquerydatapolicy.DataPolicyIamPolicy`">`gcp.bigquerydatapolicy.DataPolicyIamPolicy`</span>: Authoritative. Sets the IAM policy for the datapolicy and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-dotnet="`gcp.bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-go="`bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-python="`bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-yaml="`gcp.bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-java="`gcp.bigquerydatapolicy.DataPolicyIamBinding`">`gcp.bigquerydatapolicy.DataPolicyIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the datapolicy are preserved.
/// * <span pulumi-lang-nodejs="`gcp.bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-dotnet="`gcp.bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-go="`bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-python="`bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-yaml="`gcp.bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-java="`gcp.bigquerydatapolicy.DataPolicyIamMember`">`gcp.bigquerydatapolicy.DataPolicyIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the datapolicy are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-dotnet="`gcp.bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-go="`bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-python="`bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-yaml="`gcp.bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-java="`gcp.bigquerydatapolicy.DataPolicyIamPolicy`">`gcp.bigquerydatapolicy.DataPolicyIamPolicy`</span>: Retrieves the IAM policy for the datapolicy
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-dotnet="`gcp.bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-go="`bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-python="`bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-yaml="`gcp.bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-java="`gcp.bigquerydatapolicy.DataPolicyIamPolicy`">`gcp.bigquerydatapolicy.DataPolicyIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-dotnet="`gcp.bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-go="`bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-python="`bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-yaml="`gcp.bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-java="`gcp.bigquerydatapolicy.DataPolicyIamBinding`">`gcp.bigquerydatapolicy.DataPolicyIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-dotnet="`gcp.bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-go="`bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-python="`bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-yaml="`gcp.bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-java="`gcp.bigquerydatapolicy.DataPolicyIamMember`">`gcp.bigquerydatapolicy.DataPolicyIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-dotnet="`gcp.bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-go="`bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-python="`bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-yaml="`gcp.bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-java="`gcp.bigquerydatapolicy.DataPolicyIamBinding`">`gcp.bigquerydatapolicy.DataPolicyIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-dotnet="`gcp.bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-go="`bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-python="`bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-yaml="`gcp.bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-java="`gcp.bigquerydatapolicy.DataPolicyIamMember`">`gcp.bigquerydatapolicy.DataPolicyIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.bigquerydatapolicy.DataPolicyIamPolicy
/// " pulumi-lang-dotnet=" gcp.bigquerydatapolicy.DataPolicyIamPolicy
/// " pulumi-lang-go=" bigquerydatapolicy.DataPolicyIamPolicy
/// " pulumi-lang-python=" bigquerydatapolicy.DataPolicyIamPolicy
/// " pulumi-lang-yaml=" gcp.bigquerydatapolicy.DataPolicyIamPolicy
/// " pulumi-lang-java=" gcp.bigquerydatapolicy.DataPolicyIamPolicy
/// "> gcp.bigquerydatapolicy.DataPolicyIamPolicy
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
/// const policy = new gcp.bigquerydatapolicy.DataPolicyIamPolicy("policy", {
/// project: dataPolicy.project,
/// location: dataPolicy.location,
/// dataPolicyId: dataPolicy.dataPolicyId,
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
/// policy = gcp.bigquerydatapolicy.DataPolicyIamPolicy("policy",
/// project=data_policy["project"],
/// location=data_policy["location"],
/// data_policy_id=data_policy["dataPolicyId"],
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
/// var policy = new Gcp.BigQueryDataPolicy.DataPolicyIamPolicy("policy", new()
/// {
/// Project = dataPolicy.Project,
/// Location = dataPolicy.Location,
/// DataPolicyId = dataPolicy.DataPolicyId,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquerydatapolicy"
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
/// _, err = bigquerydatapolicy.NewDataPolicyIamPolicy(ctx, "policy", &bigquerydatapolicy.DataPolicyIamPolicyArgs{
/// Project:      pulumi.Any(dataPolicy.Project),
/// Location:     pulumi.Any(dataPolicy.Location),
/// DataPolicyId: pulumi.Any(dataPolicy.DataPolicyId),
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
/// import com.pulumi.gcp.bigquerydatapolicy.DataPolicyIamPolicy;
/// import com.pulumi.gcp.bigquerydatapolicy.DataPolicyIamPolicyArgs;
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
/// var policy = new DataPolicyIamPolicy("policy", DataPolicyIamPolicyArgs.builder()
/// .project(dataPolicy.project())
/// .location(dataPolicy.location())
/// .dataPolicyId(dataPolicy.dataPolicyId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:bigquerydatapolicy:DataPolicyIamPolicy
/// properties:
/// project: ${dataPolicy.project}
/// location: ${dataPolicy.location}
/// dataPolicyId: ${dataPolicy.dataPolicyId}
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
/// ##<span pulumi-lang-nodejs=" gcp.bigquerydatapolicy.DataPolicyIamBinding
/// " pulumi-lang-dotnet=" gcp.bigquerydatapolicy.DataPolicyIamBinding
/// " pulumi-lang-go=" bigquerydatapolicy.DataPolicyIamBinding
/// " pulumi-lang-python=" bigquerydatapolicy.DataPolicyIamBinding
/// " pulumi-lang-yaml=" gcp.bigquerydatapolicy.DataPolicyIamBinding
/// " pulumi-lang-java=" gcp.bigquerydatapolicy.DataPolicyIamBinding
/// "> gcp.bigquerydatapolicy.DataPolicyIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.bigquerydatapolicy.DataPolicyIamBinding("binding", {
/// project: dataPolicy.project,
/// location: dataPolicy.location,
/// dataPolicyId: dataPolicy.dataPolicyId,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.bigquerydatapolicy.DataPolicyIamBinding("binding",
/// project=data_policy["project"],
/// location=data_policy["location"],
/// data_policy_id=data_policy["dataPolicyId"],
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
/// var binding = new Gcp.BigQueryDataPolicy.DataPolicyIamBinding("binding", new()
/// {
/// Project = dataPolicy.Project,
/// Location = dataPolicy.Location,
/// DataPolicyId = dataPolicy.DataPolicyId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquerydatapolicy"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigquerydatapolicy.NewDataPolicyIamBinding(ctx, "binding", &bigquerydatapolicy.DataPolicyIamBindingArgs{
/// Project:      pulumi.Any(dataPolicy.Project),
/// Location:     pulumi.Any(dataPolicy.Location),
/// DataPolicyId: pulumi.Any(dataPolicy.DataPolicyId),
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
/// import com.pulumi.gcp.bigquerydatapolicy.DataPolicyIamBinding;
/// import com.pulumi.gcp.bigquerydatapolicy.DataPolicyIamBindingArgs;
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
/// var binding = new DataPolicyIamBinding("binding", DataPolicyIamBindingArgs.builder()
/// .project(dataPolicy.project())
/// .location(dataPolicy.location())
/// .dataPolicyId(dataPolicy.dataPolicyId())
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
/// type: gcp:bigquerydatapolicy:DataPolicyIamBinding
/// properties:
/// project: ${dataPolicy.project}
/// location: ${dataPolicy.location}
/// dataPolicyId: ${dataPolicy.dataPolicyId}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.bigquerydatapolicy.DataPolicyIamMember
/// " pulumi-lang-dotnet=" gcp.bigquerydatapolicy.DataPolicyIamMember
/// " pulumi-lang-go=" bigquerydatapolicy.DataPolicyIamMember
/// " pulumi-lang-python=" bigquerydatapolicy.DataPolicyIamMember
/// " pulumi-lang-yaml=" gcp.bigquerydatapolicy.DataPolicyIamMember
/// " pulumi-lang-java=" gcp.bigquerydatapolicy.DataPolicyIamMember
/// "> gcp.bigquerydatapolicy.DataPolicyIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.bigquerydatapolicy.DataPolicyIamMember("member", {
/// project: dataPolicy.project,
/// location: dataPolicy.location,
/// dataPolicyId: dataPolicy.dataPolicyId,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.bigquerydatapolicy.DataPolicyIamMember("member",
/// project=data_policy["project"],
/// location=data_policy["location"],
/// data_policy_id=data_policy["dataPolicyId"],
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
/// var member = new Gcp.BigQueryDataPolicy.DataPolicyIamMember("member", new()
/// {
/// Project = dataPolicy.Project,
/// Location = dataPolicy.Location,
/// DataPolicyId = dataPolicy.DataPolicyId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquerydatapolicy"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigquerydatapolicy.NewDataPolicyIamMember(ctx, "member", &bigquerydatapolicy.DataPolicyIamMemberArgs{
/// Project:      pulumi.Any(dataPolicy.Project),
/// Location:     pulumi.Any(dataPolicy.Location),
/// DataPolicyId: pulumi.Any(dataPolicy.DataPolicyId),
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
/// import com.pulumi.gcp.bigquerydatapolicy.DataPolicyIamMember;
/// import com.pulumi.gcp.bigquerydatapolicy.DataPolicyIamMemberArgs;
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
/// var member = new DataPolicyIamMember("member", DataPolicyIamMemberArgs.builder()
/// .project(dataPolicy.project())
/// .location(dataPolicy.location())
/// .dataPolicyId(dataPolicy.dataPolicyId())
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
/// type: gcp:bigquerydatapolicy:DataPolicyIamMember
/// properties:
/// project: ${dataPolicy.project}
/// location: ${dataPolicy.location}
/// dataPolicyId: ${dataPolicy.dataPolicyId}
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
/// # IAM policy for BigQuery Data Policy DataPolicy
///
/// Three different resources help you manage your IAM policy for BigQuery Data Policy DataPolicy. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-dotnet="`gcp.bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-go="`bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-python="`bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-yaml="`gcp.bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-java="`gcp.bigquerydatapolicy.DataPolicyIamPolicy`">`gcp.bigquerydatapolicy.DataPolicyIamPolicy`</span>: Authoritative. Sets the IAM policy for the datapolicy and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-dotnet="`gcp.bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-go="`bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-python="`bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-yaml="`gcp.bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-java="`gcp.bigquerydatapolicy.DataPolicyIamBinding`">`gcp.bigquerydatapolicy.DataPolicyIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the datapolicy are preserved.
/// * <span pulumi-lang-nodejs="`gcp.bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-dotnet="`gcp.bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-go="`bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-python="`bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-yaml="`gcp.bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-java="`gcp.bigquerydatapolicy.DataPolicyIamMember`">`gcp.bigquerydatapolicy.DataPolicyIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the datapolicy are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-dotnet="`gcp.bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-go="`bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-python="`bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-yaml="`gcp.bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-java="`gcp.bigquerydatapolicy.DataPolicyIamPolicy`">`gcp.bigquerydatapolicy.DataPolicyIamPolicy`</span>: Retrieves the IAM policy for the datapolicy
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-dotnet="`gcp.bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-go="`bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-python="`bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-yaml="`gcp.bigquerydatapolicy.DataPolicyIamPolicy`" pulumi-lang-java="`gcp.bigquerydatapolicy.DataPolicyIamPolicy`">`gcp.bigquerydatapolicy.DataPolicyIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-dotnet="`gcp.bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-go="`bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-python="`bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-yaml="`gcp.bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-java="`gcp.bigquerydatapolicy.DataPolicyIamBinding`">`gcp.bigquerydatapolicy.DataPolicyIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-dotnet="`gcp.bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-go="`bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-python="`bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-yaml="`gcp.bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-java="`gcp.bigquerydatapolicy.DataPolicyIamMember`">`gcp.bigquerydatapolicy.DataPolicyIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-dotnet="`gcp.bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-go="`bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-python="`bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-yaml="`gcp.bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-java="`gcp.bigquerydatapolicy.DataPolicyIamBinding`">`gcp.bigquerydatapolicy.DataPolicyIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-dotnet="`gcp.bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-go="`bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-python="`bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-yaml="`gcp.bigquerydatapolicy.DataPolicyIamMember`" pulumi-lang-java="`gcp.bigquerydatapolicy.DataPolicyIamMember`">`gcp.bigquerydatapolicy.DataPolicyIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.bigquerydatapolicy.DataPolicyIamPolicy
/// " pulumi-lang-dotnet=" gcp.bigquerydatapolicy.DataPolicyIamPolicy
/// " pulumi-lang-go=" bigquerydatapolicy.DataPolicyIamPolicy
/// " pulumi-lang-python=" bigquerydatapolicy.DataPolicyIamPolicy
/// " pulumi-lang-yaml=" gcp.bigquerydatapolicy.DataPolicyIamPolicy
/// " pulumi-lang-java=" gcp.bigquerydatapolicy.DataPolicyIamPolicy
/// "> gcp.bigquerydatapolicy.DataPolicyIamPolicy
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
/// const policy = new gcp.bigquerydatapolicy.DataPolicyIamPolicy("policy", {
/// project: dataPolicy.project,
/// location: dataPolicy.location,
/// dataPolicyId: dataPolicy.dataPolicyId,
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
/// policy = gcp.bigquerydatapolicy.DataPolicyIamPolicy("policy",
/// project=data_policy["project"],
/// location=data_policy["location"],
/// data_policy_id=data_policy["dataPolicyId"],
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
/// var policy = new Gcp.BigQueryDataPolicy.DataPolicyIamPolicy("policy", new()
/// {
/// Project = dataPolicy.Project,
/// Location = dataPolicy.Location,
/// DataPolicyId = dataPolicy.DataPolicyId,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquerydatapolicy"
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
/// _, err = bigquerydatapolicy.NewDataPolicyIamPolicy(ctx, "policy", &bigquerydatapolicy.DataPolicyIamPolicyArgs{
/// Project:      pulumi.Any(dataPolicy.Project),
/// Location:     pulumi.Any(dataPolicy.Location),
/// DataPolicyId: pulumi.Any(dataPolicy.DataPolicyId),
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
/// import com.pulumi.gcp.bigquerydatapolicy.DataPolicyIamPolicy;
/// import com.pulumi.gcp.bigquerydatapolicy.DataPolicyIamPolicyArgs;
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
/// var policy = new DataPolicyIamPolicy("policy", DataPolicyIamPolicyArgs.builder()
/// .project(dataPolicy.project())
/// .location(dataPolicy.location())
/// .dataPolicyId(dataPolicy.dataPolicyId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:bigquerydatapolicy:DataPolicyIamPolicy
/// properties:
/// project: ${dataPolicy.project}
/// location: ${dataPolicy.location}
/// dataPolicyId: ${dataPolicy.dataPolicyId}
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
/// ##<span pulumi-lang-nodejs=" gcp.bigquerydatapolicy.DataPolicyIamBinding
/// " pulumi-lang-dotnet=" gcp.bigquerydatapolicy.DataPolicyIamBinding
/// " pulumi-lang-go=" bigquerydatapolicy.DataPolicyIamBinding
/// " pulumi-lang-python=" bigquerydatapolicy.DataPolicyIamBinding
/// " pulumi-lang-yaml=" gcp.bigquerydatapolicy.DataPolicyIamBinding
/// " pulumi-lang-java=" gcp.bigquerydatapolicy.DataPolicyIamBinding
/// "> gcp.bigquerydatapolicy.DataPolicyIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.bigquerydatapolicy.DataPolicyIamBinding("binding", {
/// project: dataPolicy.project,
/// location: dataPolicy.location,
/// dataPolicyId: dataPolicy.dataPolicyId,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.bigquerydatapolicy.DataPolicyIamBinding("binding",
/// project=data_policy["project"],
/// location=data_policy["location"],
/// data_policy_id=data_policy["dataPolicyId"],
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
/// var binding = new Gcp.BigQueryDataPolicy.DataPolicyIamBinding("binding", new()
/// {
/// Project = dataPolicy.Project,
/// Location = dataPolicy.Location,
/// DataPolicyId = dataPolicy.DataPolicyId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquerydatapolicy"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigquerydatapolicy.NewDataPolicyIamBinding(ctx, "binding", &bigquerydatapolicy.DataPolicyIamBindingArgs{
/// Project:      pulumi.Any(dataPolicy.Project),
/// Location:     pulumi.Any(dataPolicy.Location),
/// DataPolicyId: pulumi.Any(dataPolicy.DataPolicyId),
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
/// import com.pulumi.gcp.bigquerydatapolicy.DataPolicyIamBinding;
/// import com.pulumi.gcp.bigquerydatapolicy.DataPolicyIamBindingArgs;
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
/// var binding = new DataPolicyIamBinding("binding", DataPolicyIamBindingArgs.builder()
/// .project(dataPolicy.project())
/// .location(dataPolicy.location())
/// .dataPolicyId(dataPolicy.dataPolicyId())
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
/// type: gcp:bigquerydatapolicy:DataPolicyIamBinding
/// properties:
/// project: ${dataPolicy.project}
/// location: ${dataPolicy.location}
/// dataPolicyId: ${dataPolicy.dataPolicyId}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.bigquerydatapolicy.DataPolicyIamMember
/// " pulumi-lang-dotnet=" gcp.bigquerydatapolicy.DataPolicyIamMember
/// " pulumi-lang-go=" bigquerydatapolicy.DataPolicyIamMember
/// " pulumi-lang-python=" bigquerydatapolicy.DataPolicyIamMember
/// " pulumi-lang-yaml=" gcp.bigquerydatapolicy.DataPolicyIamMember
/// " pulumi-lang-java=" gcp.bigquerydatapolicy.DataPolicyIamMember
/// "> gcp.bigquerydatapolicy.DataPolicyIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.bigquerydatapolicy.DataPolicyIamMember("member", {
/// project: dataPolicy.project,
/// location: dataPolicy.location,
/// dataPolicyId: dataPolicy.dataPolicyId,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.bigquerydatapolicy.DataPolicyIamMember("member",
/// project=data_policy["project"],
/// location=data_policy["location"],
/// data_policy_id=data_policy["dataPolicyId"],
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
/// var member = new Gcp.BigQueryDataPolicy.DataPolicyIamMember("member", new()
/// {
/// Project = dataPolicy.Project,
/// Location = dataPolicy.Location,
/// DataPolicyId = dataPolicy.DataPolicyId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquerydatapolicy"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigquerydatapolicy.NewDataPolicyIamMember(ctx, "member", &bigquerydatapolicy.DataPolicyIamMemberArgs{
/// Project:      pulumi.Any(dataPolicy.Project),
/// Location:     pulumi.Any(dataPolicy.Location),
/// DataPolicyId: pulumi.Any(dataPolicy.DataPolicyId),
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
/// import com.pulumi.gcp.bigquerydatapolicy.DataPolicyIamMember;
/// import com.pulumi.gcp.bigquerydatapolicy.DataPolicyIamMemberArgs;
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
/// var member = new DataPolicyIamMember("member", DataPolicyIamMemberArgs.builder()
/// .project(dataPolicy.project())
/// .location(dataPolicy.location())
/// .dataPolicyId(dataPolicy.dataPolicyId())
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
/// type: gcp:bigquerydatapolicy:DataPolicyIamMember
/// properties:
/// project: ${dataPolicy.project}
/// location: ${dataPolicy.location}
/// dataPolicyId: ${dataPolicy.dataPolicyId}
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
/// BigQuery Data Policy datapolicy IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:bigquerydatapolicy/dataPolicyIamBinding:DataPolicyIamBinding editor "projects/{{project}}/locations/{{location}}/dataPolicies/{{data_policy_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:bigquerydatapolicy/dataPolicyIamBinding:DataPolicyIamBinding editor "projects/{{project}}/locations/{{location}}/dataPolicies/{{data_policy_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:bigquerydatapolicy/dataPolicyIamBinding:DataPolicyIamBinding editor projects/{{project}}/locations/{{location}}/dataPolicies/{{data_policy_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class DataPolicyIamBinding extends CustomResource {
  late final Output<DataPolicyIamBindingCondition?> condition;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> dataPolicyId;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The name of the location of the data policy.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
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
  late final Output<List<String>> members;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-dotnet="`gcp.bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-go="`bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-python="`bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-yaml="`gcp.bigquerydatapolicy.DataPolicyIamBinding`" pulumi-lang-java="`gcp.bigquerydatapolicy.DataPolicyIamBinding`">`gcp.bigquerydatapolicy.DataPolicyIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  DataPolicyIamBinding(
    String name, {
    DataPolicyIamBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:bigquerydatapolicy/dataPolicyIamBinding:DataPolicyIamBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = Output.createUnknown<DataPolicyIamBindingCondition?>();
    this.dataPolicyId = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.members = Output.createUnknown<List<String>>();
    this.project = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
  }
}
