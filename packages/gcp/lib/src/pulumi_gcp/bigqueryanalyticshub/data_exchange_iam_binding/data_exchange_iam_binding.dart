import 'package:pulumi/pulumi.dart';
import '../data_exchange_iam_binding_condition/data_exchange_iam_binding_condition.dart';
import 'data_exchange_iam_binding_args.dart';

/// Three different resources help you manage your IAM policy for BigQuery Analytics Hub DataExchange. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-go="`bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-python="`bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-java="`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`">`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`</span>: Authoritative. Sets the IAM policy for the dataexchange and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-go="`bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-python="`bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-java="`gcp.bigqueryanalyticshub.DataExchangeIamBinding`">`gcp.bigqueryanalyticshub.DataExchangeIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the dataexchange are preserved.
/// * <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-go="`bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-python="`bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-java="`gcp.bigqueryanalyticshub.DataExchangeIamMember`">`gcp.bigqueryanalyticshub.DataExchangeIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the dataexchange are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-go="`bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-python="`bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-java="`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`">`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`</span>: Retrieves the IAM policy for the dataexchange
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-go="`bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-python="`bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-java="`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`">`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-go="`bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-python="`bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-java="`gcp.bigqueryanalyticshub.DataExchangeIamBinding`">`gcp.bigqueryanalyticshub.DataExchangeIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-go="`bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-python="`bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-java="`gcp.bigqueryanalyticshub.DataExchangeIamMember`">`gcp.bigqueryanalyticshub.DataExchangeIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-go="`bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-python="`bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-java="`gcp.bigqueryanalyticshub.DataExchangeIamBinding`">`gcp.bigqueryanalyticshub.DataExchangeIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-go="`bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-python="`bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-java="`gcp.bigqueryanalyticshub.DataExchangeIamMember`">`gcp.bigqueryanalyticshub.DataExchangeIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.bigqueryanalyticshub.DataExchangeIamPolicy
/// " pulumi-lang-dotnet=" gcp.bigqueryanalyticshub.DataExchangeIamPolicy
/// " pulumi-lang-go=" bigqueryanalyticshub.DataExchangeIamPolicy
/// " pulumi-lang-python=" bigqueryanalyticshub.DataExchangeIamPolicy
/// " pulumi-lang-yaml=" gcp.bigqueryanalyticshub.DataExchangeIamPolicy
/// " pulumi-lang-java=" gcp.bigqueryanalyticshub.DataExchangeIamPolicy
/// "> gcp.bigqueryanalyticshub.DataExchangeIamPolicy
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
/// const policy = new gcp.bigqueryanalyticshub.DataExchangeIamPolicy("policy", {
/// project: dataExchange.project,
/// location: dataExchange.location,
/// dataExchangeId: dataExchange.dataExchangeId,
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
/// policy = gcp.bigqueryanalyticshub.DataExchangeIamPolicy("policy",
/// project=data_exchange["project"],
/// location=data_exchange["location"],
/// data_exchange_id=data_exchange["dataExchangeId"],
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
/// var policy = new Gcp.BigQueryAnalyticsHub.DataExchangeIamPolicy("policy", new()
/// {
/// Project = dataExchange.Project,
/// Location = dataExchange.Location,
/// DataExchangeId = dataExchange.DataExchangeId,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
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
/// _, err = bigqueryanalyticshub.NewDataExchangeIamPolicy(ctx, "policy", &bigqueryanalyticshub.DataExchangeIamPolicyArgs{
/// Project:        pulumi.Any(dataExchange.Project),
/// Location:       pulumi.Any(dataExchange.Location),
/// DataExchangeId: pulumi.Any(dataExchange.DataExchangeId),
/// PolicyData:     pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeIamPolicy;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeIamPolicyArgs;
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
/// var policy = new DataExchangeIamPolicy("policy", DataExchangeIamPolicyArgs.builder()
/// .project(dataExchange.project())
/// .location(dataExchange.location())
/// .dataExchangeId(dataExchange.dataExchangeId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:bigqueryanalyticshub:DataExchangeIamPolicy
/// properties:
/// project: ${dataExchange.project}
/// location: ${dataExchange.location}
/// dataExchangeId: ${dataExchange.dataExchangeId}
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
/// ##<span pulumi-lang-nodejs=" gcp.bigqueryanalyticshub.DataExchangeIamBinding
/// " pulumi-lang-dotnet=" gcp.bigqueryanalyticshub.DataExchangeIamBinding
/// " pulumi-lang-go=" bigqueryanalyticshub.DataExchangeIamBinding
/// " pulumi-lang-python=" bigqueryanalyticshub.DataExchangeIamBinding
/// " pulumi-lang-yaml=" gcp.bigqueryanalyticshub.DataExchangeIamBinding
/// " pulumi-lang-java=" gcp.bigqueryanalyticshub.DataExchangeIamBinding
/// "> gcp.bigqueryanalyticshub.DataExchangeIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.bigqueryanalyticshub.DataExchangeIamBinding("binding", {
/// project: dataExchange.project,
/// location: dataExchange.location,
/// dataExchangeId: dataExchange.dataExchangeId,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.bigqueryanalyticshub.DataExchangeIamBinding("binding",
/// project=data_exchange["project"],
/// location=data_exchange["location"],
/// data_exchange_id=data_exchange["dataExchangeId"],
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
/// var binding = new Gcp.BigQueryAnalyticsHub.DataExchangeIamBinding("binding", new()
/// {
/// Project = dataExchange.Project,
/// Location = dataExchange.Location,
/// DataExchangeId = dataExchange.DataExchangeId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigqueryanalyticshub.NewDataExchangeIamBinding(ctx, "binding", &bigqueryanalyticshub.DataExchangeIamBindingArgs{
/// Project:        pulumi.Any(dataExchange.Project),
/// Location:       pulumi.Any(dataExchange.Location),
/// DataExchangeId: pulumi.Any(dataExchange.DataExchangeId),
/// Role:           pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeIamBinding;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeIamBindingArgs;
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
/// var binding = new DataExchangeIamBinding("binding", DataExchangeIamBindingArgs.builder()
/// .project(dataExchange.project())
/// .location(dataExchange.location())
/// .dataExchangeId(dataExchange.dataExchangeId())
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
/// type: gcp:bigqueryanalyticshub:DataExchangeIamBinding
/// properties:
/// project: ${dataExchange.project}
/// location: ${dataExchange.location}
/// dataExchangeId: ${dataExchange.dataExchangeId}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.bigqueryanalyticshub.DataExchangeIamMember
/// " pulumi-lang-dotnet=" gcp.bigqueryanalyticshub.DataExchangeIamMember
/// " pulumi-lang-go=" bigqueryanalyticshub.DataExchangeIamMember
/// " pulumi-lang-python=" bigqueryanalyticshub.DataExchangeIamMember
/// " pulumi-lang-yaml=" gcp.bigqueryanalyticshub.DataExchangeIamMember
/// " pulumi-lang-java=" gcp.bigqueryanalyticshub.DataExchangeIamMember
/// "> gcp.bigqueryanalyticshub.DataExchangeIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.bigqueryanalyticshub.DataExchangeIamMember("member", {
/// project: dataExchange.project,
/// location: dataExchange.location,
/// dataExchangeId: dataExchange.dataExchangeId,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.bigqueryanalyticshub.DataExchangeIamMember("member",
/// project=data_exchange["project"],
/// location=data_exchange["location"],
/// data_exchange_id=data_exchange["dataExchangeId"],
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
/// var member = new Gcp.BigQueryAnalyticsHub.DataExchangeIamMember("member", new()
/// {
/// Project = dataExchange.Project,
/// Location = dataExchange.Location,
/// DataExchangeId = dataExchange.DataExchangeId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigqueryanalyticshub.NewDataExchangeIamMember(ctx, "member", &bigqueryanalyticshub.DataExchangeIamMemberArgs{
/// Project:        pulumi.Any(dataExchange.Project),
/// Location:       pulumi.Any(dataExchange.Location),
/// DataExchangeId: pulumi.Any(dataExchange.DataExchangeId),
/// Role:           pulumi.String("roles/viewer"),
/// Member:         pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeIamMember;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeIamMemberArgs;
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
/// var member = new DataExchangeIamMember("member", DataExchangeIamMemberArgs.builder()
/// .project(dataExchange.project())
/// .location(dataExchange.location())
/// .dataExchangeId(dataExchange.dataExchangeId())
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
/// type: gcp:bigqueryanalyticshub:DataExchangeIamMember
/// properties:
/// project: ${dataExchange.project}
/// location: ${dataExchange.location}
/// dataExchangeId: ${dataExchange.dataExchangeId}
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
/// # IAM policy for BigQuery Analytics Hub DataExchange
///
/// Three different resources help you manage your IAM policy for BigQuery Analytics Hub DataExchange. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-go="`bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-python="`bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-java="`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`">`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`</span>: Authoritative. Sets the IAM policy for the dataexchange and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-go="`bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-python="`bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-java="`gcp.bigqueryanalyticshub.DataExchangeIamBinding`">`gcp.bigqueryanalyticshub.DataExchangeIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the dataexchange are preserved.
/// * <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-go="`bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-python="`bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-java="`gcp.bigqueryanalyticshub.DataExchangeIamMember`">`gcp.bigqueryanalyticshub.DataExchangeIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the dataexchange are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-go="`bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-python="`bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-java="`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`">`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`</span>: Retrieves the IAM policy for the dataexchange
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-go="`bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-python="`bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`" pulumi-lang-java="`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`">`gcp.bigqueryanalyticshub.DataExchangeIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-go="`bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-python="`bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-java="`gcp.bigqueryanalyticshub.DataExchangeIamBinding`">`gcp.bigqueryanalyticshub.DataExchangeIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-go="`bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-python="`bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-java="`gcp.bigqueryanalyticshub.DataExchangeIamMember`">`gcp.bigqueryanalyticshub.DataExchangeIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-go="`bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-python="`bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-java="`gcp.bigqueryanalyticshub.DataExchangeIamBinding`">`gcp.bigqueryanalyticshub.DataExchangeIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-go="`bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-python="`bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.DataExchangeIamMember`" pulumi-lang-java="`gcp.bigqueryanalyticshub.DataExchangeIamMember`">`gcp.bigqueryanalyticshub.DataExchangeIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.bigqueryanalyticshub.DataExchangeIamPolicy
/// " pulumi-lang-dotnet=" gcp.bigqueryanalyticshub.DataExchangeIamPolicy
/// " pulumi-lang-go=" bigqueryanalyticshub.DataExchangeIamPolicy
/// " pulumi-lang-python=" bigqueryanalyticshub.DataExchangeIamPolicy
/// " pulumi-lang-yaml=" gcp.bigqueryanalyticshub.DataExchangeIamPolicy
/// " pulumi-lang-java=" gcp.bigqueryanalyticshub.DataExchangeIamPolicy
/// "> gcp.bigqueryanalyticshub.DataExchangeIamPolicy
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
/// const policy = new gcp.bigqueryanalyticshub.DataExchangeIamPolicy("policy", {
/// project: dataExchange.project,
/// location: dataExchange.location,
/// dataExchangeId: dataExchange.dataExchangeId,
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
/// policy = gcp.bigqueryanalyticshub.DataExchangeIamPolicy("policy",
/// project=data_exchange["project"],
/// location=data_exchange["location"],
/// data_exchange_id=data_exchange["dataExchangeId"],
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
/// var policy = new Gcp.BigQueryAnalyticsHub.DataExchangeIamPolicy("policy", new()
/// {
/// Project = dataExchange.Project,
/// Location = dataExchange.Location,
/// DataExchangeId = dataExchange.DataExchangeId,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
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
/// _, err = bigqueryanalyticshub.NewDataExchangeIamPolicy(ctx, "policy", &bigqueryanalyticshub.DataExchangeIamPolicyArgs{
/// Project:        pulumi.Any(dataExchange.Project),
/// Location:       pulumi.Any(dataExchange.Location),
/// DataExchangeId: pulumi.Any(dataExchange.DataExchangeId),
/// PolicyData:     pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeIamPolicy;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeIamPolicyArgs;
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
/// var policy = new DataExchangeIamPolicy("policy", DataExchangeIamPolicyArgs.builder()
/// .project(dataExchange.project())
/// .location(dataExchange.location())
/// .dataExchangeId(dataExchange.dataExchangeId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:bigqueryanalyticshub:DataExchangeIamPolicy
/// properties:
/// project: ${dataExchange.project}
/// location: ${dataExchange.location}
/// dataExchangeId: ${dataExchange.dataExchangeId}
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
/// ##<span pulumi-lang-nodejs=" gcp.bigqueryanalyticshub.DataExchangeIamBinding
/// " pulumi-lang-dotnet=" gcp.bigqueryanalyticshub.DataExchangeIamBinding
/// " pulumi-lang-go=" bigqueryanalyticshub.DataExchangeIamBinding
/// " pulumi-lang-python=" bigqueryanalyticshub.DataExchangeIamBinding
/// " pulumi-lang-yaml=" gcp.bigqueryanalyticshub.DataExchangeIamBinding
/// " pulumi-lang-java=" gcp.bigqueryanalyticshub.DataExchangeIamBinding
/// "> gcp.bigqueryanalyticshub.DataExchangeIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.bigqueryanalyticshub.DataExchangeIamBinding("binding", {
/// project: dataExchange.project,
/// location: dataExchange.location,
/// dataExchangeId: dataExchange.dataExchangeId,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.bigqueryanalyticshub.DataExchangeIamBinding("binding",
/// project=data_exchange["project"],
/// location=data_exchange["location"],
/// data_exchange_id=data_exchange["dataExchangeId"],
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
/// var binding = new Gcp.BigQueryAnalyticsHub.DataExchangeIamBinding("binding", new()
/// {
/// Project = dataExchange.Project,
/// Location = dataExchange.Location,
/// DataExchangeId = dataExchange.DataExchangeId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigqueryanalyticshub.NewDataExchangeIamBinding(ctx, "binding", &bigqueryanalyticshub.DataExchangeIamBindingArgs{
/// Project:        pulumi.Any(dataExchange.Project),
/// Location:       pulumi.Any(dataExchange.Location),
/// DataExchangeId: pulumi.Any(dataExchange.DataExchangeId),
/// Role:           pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeIamBinding;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeIamBindingArgs;
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
/// var binding = new DataExchangeIamBinding("binding", DataExchangeIamBindingArgs.builder()
/// .project(dataExchange.project())
/// .location(dataExchange.location())
/// .dataExchangeId(dataExchange.dataExchangeId())
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
/// type: gcp:bigqueryanalyticshub:DataExchangeIamBinding
/// properties:
/// project: ${dataExchange.project}
/// location: ${dataExchange.location}
/// dataExchangeId: ${dataExchange.dataExchangeId}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.bigqueryanalyticshub.DataExchangeIamMember
/// " pulumi-lang-dotnet=" gcp.bigqueryanalyticshub.DataExchangeIamMember
/// " pulumi-lang-go=" bigqueryanalyticshub.DataExchangeIamMember
/// " pulumi-lang-python=" bigqueryanalyticshub.DataExchangeIamMember
/// " pulumi-lang-yaml=" gcp.bigqueryanalyticshub.DataExchangeIamMember
/// " pulumi-lang-java=" gcp.bigqueryanalyticshub.DataExchangeIamMember
/// "> gcp.bigqueryanalyticshub.DataExchangeIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.bigqueryanalyticshub.DataExchangeIamMember("member", {
/// project: dataExchange.project,
/// location: dataExchange.location,
/// dataExchangeId: dataExchange.dataExchangeId,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.bigqueryanalyticshub.DataExchangeIamMember("member",
/// project=data_exchange["project"],
/// location=data_exchange["location"],
/// data_exchange_id=data_exchange["dataExchangeId"],
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
/// var member = new Gcp.BigQueryAnalyticsHub.DataExchangeIamMember("member", new()
/// {
/// Project = dataExchange.Project,
/// Location = dataExchange.Location,
/// DataExchangeId = dataExchange.DataExchangeId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigqueryanalyticshub.NewDataExchangeIamMember(ctx, "member", &bigqueryanalyticshub.DataExchangeIamMemberArgs{
/// Project:        pulumi.Any(dataExchange.Project),
/// Location:       pulumi.Any(dataExchange.Location),
/// DataExchangeId: pulumi.Any(dataExchange.DataExchangeId),
/// Role:           pulumi.String("roles/viewer"),
/// Member:         pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeIamMember;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeIamMemberArgs;
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
/// var member = new DataExchangeIamMember("member", DataExchangeIamMemberArgs.builder()
/// .project(dataExchange.project())
/// .location(dataExchange.location())
/// .dataExchangeId(dataExchange.dataExchangeId())
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
/// type: gcp:bigqueryanalyticshub:DataExchangeIamMember
/// properties:
/// project: ${dataExchange.project}
/// location: ${dataExchange.location}
/// dataExchangeId: ${dataExchange.dataExchangeId}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/dataExchanges/{{data_exchange_id}}
///
/// * {{project}}/{{location}}/{{data_exchange_id}}
///
/// * {{location}}/{{data_exchange_id}}
///
/// * {{data_exchange_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// BigQuery Analytics Hub dataexchange IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/dataExchangeIamBinding:DataExchangeIamBinding editor "projects/{{project}}/locations/{{location}}/dataExchanges/{{data_exchange_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/dataExchangeIamBinding:DataExchangeIamBinding editor "projects/{{project}}/locations/{{location}}/dataExchanges/{{data_exchange_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/dataExchangeIamBinding:DataExchangeIamBinding editor projects/{{project}}/locations/{{location}}/dataExchanges/{{data_exchange_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class DataExchangeIamBinding extends CustomResource {
  late final Output<DataExchangeIamBindingCondition?> condition;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> dataExchangeId;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The name of the location this data exchange.
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
  /// <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-go="`bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-python="`bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.DataExchangeIamBinding`" pulumi-lang-java="`gcp.bigqueryanalyticshub.DataExchangeIamBinding`">`gcp.bigqueryanalyticshub.DataExchangeIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  DataExchangeIamBinding(
    String name, {
    DataExchangeIamBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:bigqueryanalyticshub/dataExchangeIamBinding:DataExchangeIamBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = Output.createUnknown<DataExchangeIamBindingCondition?>();
    this.dataExchangeId = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.members = Output.createUnknown<List<String>>();
    this.project = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
  }
}
