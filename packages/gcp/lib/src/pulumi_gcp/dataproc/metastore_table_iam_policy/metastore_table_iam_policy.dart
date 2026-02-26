import 'package:pulumi/pulumi.dart';
import 'metastore_table_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Dataproc Metastore Table. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreTableIamPolicy`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreTableIamPolicy`" pulumi-lang-go="`dataproc.MetastoreTableIamPolicy`" pulumi-lang-python="`dataproc.MetastoreTableIamPolicy`" pulumi-lang-yaml="`gcp.dataproc.MetastoreTableIamPolicy`" pulumi-lang-java="`gcp.dataproc.MetastoreTableIamPolicy`">`gcp.dataproc.MetastoreTableIamPolicy`</span>: Authoritative. Sets the IAM policy for the table and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreTableIamBinding`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreTableIamBinding`" pulumi-lang-go="`dataproc.MetastoreTableIamBinding`" pulumi-lang-python="`dataproc.MetastoreTableIamBinding`" pulumi-lang-yaml="`gcp.dataproc.MetastoreTableIamBinding`" pulumi-lang-java="`gcp.dataproc.MetastoreTableIamBinding`">`gcp.dataproc.MetastoreTableIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the table are preserved.
/// * <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreTableIamMember`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreTableIamMember`" pulumi-lang-go="`dataproc.MetastoreTableIamMember`" pulumi-lang-python="`dataproc.MetastoreTableIamMember`" pulumi-lang-yaml="`gcp.dataproc.MetastoreTableIamMember`" pulumi-lang-java="`gcp.dataproc.MetastoreTableIamMember`">`gcp.dataproc.MetastoreTableIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the table are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreTableIamPolicy`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreTableIamPolicy`" pulumi-lang-go="`dataproc.MetastoreTableIamPolicy`" pulumi-lang-python="`dataproc.MetastoreTableIamPolicy`" pulumi-lang-yaml="`gcp.dataproc.MetastoreTableIamPolicy`" pulumi-lang-java="`gcp.dataproc.MetastoreTableIamPolicy`">`gcp.dataproc.MetastoreTableIamPolicy`</span>: Retrieves the IAM policy for the table
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreTableIamPolicy`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreTableIamPolicy`" pulumi-lang-go="`dataproc.MetastoreTableIamPolicy`" pulumi-lang-python="`dataproc.MetastoreTableIamPolicy`" pulumi-lang-yaml="`gcp.dataproc.MetastoreTableIamPolicy`" pulumi-lang-java="`gcp.dataproc.MetastoreTableIamPolicy`">`gcp.dataproc.MetastoreTableIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreTableIamBinding`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreTableIamBinding`" pulumi-lang-go="`dataproc.MetastoreTableIamBinding`" pulumi-lang-python="`dataproc.MetastoreTableIamBinding`" pulumi-lang-yaml="`gcp.dataproc.MetastoreTableIamBinding`" pulumi-lang-java="`gcp.dataproc.MetastoreTableIamBinding`">`gcp.dataproc.MetastoreTableIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreTableIamMember`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreTableIamMember`" pulumi-lang-go="`dataproc.MetastoreTableIamMember`" pulumi-lang-python="`dataproc.MetastoreTableIamMember`" pulumi-lang-yaml="`gcp.dataproc.MetastoreTableIamMember`" pulumi-lang-java="`gcp.dataproc.MetastoreTableIamMember`">`gcp.dataproc.MetastoreTableIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreTableIamBinding`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreTableIamBinding`" pulumi-lang-go="`dataproc.MetastoreTableIamBinding`" pulumi-lang-python="`dataproc.MetastoreTableIamBinding`" pulumi-lang-yaml="`gcp.dataproc.MetastoreTableIamBinding`" pulumi-lang-java="`gcp.dataproc.MetastoreTableIamBinding`">`gcp.dataproc.MetastoreTableIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreTableIamMember`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreTableIamMember`" pulumi-lang-go="`dataproc.MetastoreTableIamMember`" pulumi-lang-python="`dataproc.MetastoreTableIamMember`" pulumi-lang-yaml="`gcp.dataproc.MetastoreTableIamMember`" pulumi-lang-java="`gcp.dataproc.MetastoreTableIamMember`">`gcp.dataproc.MetastoreTableIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.MetastoreTableIamPolicy
/// " pulumi-lang-dotnet=" gcp.dataproc.MetastoreTableIamPolicy
/// " pulumi-lang-go=" dataproc.MetastoreTableIamPolicy
/// " pulumi-lang-python=" dataproc.MetastoreTableIamPolicy
/// " pulumi-lang-yaml=" gcp.dataproc.MetastoreTableIamPolicy
/// " pulumi-lang-java=" gcp.dataproc.MetastoreTableIamPolicy
/// "> gcp.dataproc.MetastoreTableIamPolicy
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
/// const policy = new gcp.dataproc.MetastoreTableIamPolicy("policy", {
/// project: dpmsService.project,
/// location: dpmsService.location,
/// serviceId: dpmsService.serviceId,
/// databaseId: hive.hiveConfig[0].properties.database,
/// table: hive.hiveConfig[0].properties.table,
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
/// policy = gcp.dataproc.MetastoreTableIamPolicy("policy",
/// project=dpms_service["project"],
/// location=dpms_service["location"],
/// service_id=dpms_service["serviceId"],
/// database_id=hive["hiveConfig"][0]["properties"]["database"],
/// table=hive["hiveConfig"][0]["properties"]["table"],
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
/// var policy = new Gcp.Dataproc.MetastoreTableIamPolicy("policy", new()
/// {
/// Project = dpmsService.Project,
/// Location = dpmsService.Location,
/// ServiceId = dpmsService.ServiceId,
/// DatabaseId = hive.HiveConfig[0].Properties.Database,
/// Table = hive.HiveConfig[0].Properties.Table,
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
/// _, err = dataproc.NewMetastoreTableIamPolicy(ctx, "policy", &dataproc.MetastoreTableIamPolicyArgs{
/// Project:    pulumi.Any(dpmsService.Project),
/// Location:   pulumi.Any(dpmsService.Location),
/// ServiceId:  pulumi.Any(dpmsService.ServiceId),
/// DatabaseId: pulumi.Any(hive.HiveConfig[0].Properties.Database),
/// Table:      pulumi.Any(hive.HiveConfig[0].Properties.Table),
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
/// import com.pulumi.gcp.dataproc.MetastoreTableIamPolicy;
/// import com.pulumi.gcp.dataproc.MetastoreTableIamPolicyArgs;
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
/// var policy = new MetastoreTableIamPolicy("policy", MetastoreTableIamPolicyArgs.builder()
/// .project(dpmsService.project())
/// .location(dpmsService.location())
/// .serviceId(dpmsService.serviceId())
/// .databaseId(hive.hiveConfig()[0].properties().database())
/// .table(hive.hiveConfig()[0].properties().table())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:dataproc:MetastoreTableIamPolicy
/// properties:
/// project: ${dpmsService.project}
/// location: ${dpmsService.location}
/// serviceId: ${dpmsService.serviceId}
/// databaseId: ${hive.hiveConfig[0].properties.database}
/// table: ${hive.hiveConfig[0].properties.table}
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
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.MetastoreTableIamBinding
/// " pulumi-lang-dotnet=" gcp.dataproc.MetastoreTableIamBinding
/// " pulumi-lang-go=" dataproc.MetastoreTableIamBinding
/// " pulumi-lang-python=" dataproc.MetastoreTableIamBinding
/// " pulumi-lang-yaml=" gcp.dataproc.MetastoreTableIamBinding
/// " pulumi-lang-java=" gcp.dataproc.MetastoreTableIamBinding
/// "> gcp.dataproc.MetastoreTableIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataproc.MetastoreTableIamBinding("binding", {
/// project: dpmsService.project,
/// location: dpmsService.location,
/// serviceId: dpmsService.serviceId,
/// databaseId: hive.hiveConfig[0].properties.database,
/// table: hive.hiveConfig[0].properties.table,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataproc.MetastoreTableIamBinding("binding",
/// project=dpms_service["project"],
/// location=dpms_service["location"],
/// service_id=dpms_service["serviceId"],
/// database_id=hive["hiveConfig"][0]["properties"]["database"],
/// table=hive["hiveConfig"][0]["properties"]["table"],
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
/// var binding = new Gcp.Dataproc.MetastoreTableIamBinding("binding", new()
/// {
/// Project = dpmsService.Project,
/// Location = dpmsService.Location,
/// ServiceId = dpmsService.ServiceId,
/// DatabaseId = hive.HiveConfig[0].Properties.Database,
/// Table = hive.HiveConfig[0].Properties.Table,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.NewMetastoreTableIamBinding(ctx, "binding", &dataproc.MetastoreTableIamBindingArgs{
/// Project:    pulumi.Any(dpmsService.Project),
/// Location:   pulumi.Any(dpmsService.Location),
/// ServiceId:  pulumi.Any(dpmsService.ServiceId),
/// DatabaseId: pulumi.Any(hive.HiveConfig[0].Properties.Database),
/// Table:      pulumi.Any(hive.HiveConfig[0].Properties.Table),
/// Role:       pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.dataproc.MetastoreTableIamBinding;
/// import com.pulumi.gcp.dataproc.MetastoreTableIamBindingArgs;
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
/// var binding = new MetastoreTableIamBinding("binding", MetastoreTableIamBindingArgs.builder()
/// .project(dpmsService.project())
/// .location(dpmsService.location())
/// .serviceId(dpmsService.serviceId())
/// .databaseId(hive.hiveConfig()[0].properties().database())
/// .table(hive.hiveConfig()[0].properties().table())
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
/// type: gcp:dataproc:MetastoreTableIamBinding
/// properties:
/// project: ${dpmsService.project}
/// location: ${dpmsService.location}
/// serviceId: ${dpmsService.serviceId}
/// databaseId: ${hive.hiveConfig[0].properties.database}
/// table: ${hive.hiveConfig[0].properties.table}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.MetastoreTableIamMember
/// " pulumi-lang-dotnet=" gcp.dataproc.MetastoreTableIamMember
/// " pulumi-lang-go=" dataproc.MetastoreTableIamMember
/// " pulumi-lang-python=" dataproc.MetastoreTableIamMember
/// " pulumi-lang-yaml=" gcp.dataproc.MetastoreTableIamMember
/// " pulumi-lang-java=" gcp.dataproc.MetastoreTableIamMember
/// "> gcp.dataproc.MetastoreTableIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataproc.MetastoreTableIamMember("member", {
/// project: dpmsService.project,
/// location: dpmsService.location,
/// serviceId: dpmsService.serviceId,
/// databaseId: hive.hiveConfig[0].properties.database,
/// table: hive.hiveConfig[0].properties.table,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataproc.MetastoreTableIamMember("member",
/// project=dpms_service["project"],
/// location=dpms_service["location"],
/// service_id=dpms_service["serviceId"],
/// database_id=hive["hiveConfig"][0]["properties"]["database"],
/// table=hive["hiveConfig"][0]["properties"]["table"],
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
/// var member = new Gcp.Dataproc.MetastoreTableIamMember("member", new()
/// {
/// Project = dpmsService.Project,
/// Location = dpmsService.Location,
/// ServiceId = dpmsService.ServiceId,
/// DatabaseId = hive.HiveConfig[0].Properties.Database,
/// Table = hive.HiveConfig[0].Properties.Table,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.NewMetastoreTableIamMember(ctx, "member", &dataproc.MetastoreTableIamMemberArgs{
/// Project:    pulumi.Any(dpmsService.Project),
/// Location:   pulumi.Any(dpmsService.Location),
/// ServiceId:  pulumi.Any(dpmsService.ServiceId),
/// DatabaseId: pulumi.Any(hive.HiveConfig[0].Properties.Database),
/// Table:      pulumi.Any(hive.HiveConfig[0].Properties.Table),
/// Role:       pulumi.String("roles/viewer"),
/// Member:     pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.dataproc.MetastoreTableIamMember;
/// import com.pulumi.gcp.dataproc.MetastoreTableIamMemberArgs;
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
/// var member = new MetastoreTableIamMember("member", MetastoreTableIamMemberArgs.builder()
/// .project(dpmsService.project())
/// .location(dpmsService.location())
/// .serviceId(dpmsService.serviceId())
/// .databaseId(hive.hiveConfig()[0].properties().database())
/// .table(hive.hiveConfig()[0].properties().table())
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
/// type: gcp:dataproc:MetastoreTableIamMember
/// properties:
/// project: ${dpmsService.project}
/// location: ${dpmsService.location}
/// serviceId: ${dpmsService.serviceId}
/// databaseId: ${hive.hiveConfig[0].properties.database}
/// table: ${hive.hiveConfig[0].properties.table}
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
/// # IAM policy for Dataproc Metastore Table
///
/// Three different resources help you manage your IAM policy for Dataproc Metastore Table. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreTableIamPolicy`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreTableIamPolicy`" pulumi-lang-go="`dataproc.MetastoreTableIamPolicy`" pulumi-lang-python="`dataproc.MetastoreTableIamPolicy`" pulumi-lang-yaml="`gcp.dataproc.MetastoreTableIamPolicy`" pulumi-lang-java="`gcp.dataproc.MetastoreTableIamPolicy`">`gcp.dataproc.MetastoreTableIamPolicy`</span>: Authoritative. Sets the IAM policy for the table and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreTableIamBinding`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreTableIamBinding`" pulumi-lang-go="`dataproc.MetastoreTableIamBinding`" pulumi-lang-python="`dataproc.MetastoreTableIamBinding`" pulumi-lang-yaml="`gcp.dataproc.MetastoreTableIamBinding`" pulumi-lang-java="`gcp.dataproc.MetastoreTableIamBinding`">`gcp.dataproc.MetastoreTableIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the table are preserved.
/// * <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreTableIamMember`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreTableIamMember`" pulumi-lang-go="`dataproc.MetastoreTableIamMember`" pulumi-lang-python="`dataproc.MetastoreTableIamMember`" pulumi-lang-yaml="`gcp.dataproc.MetastoreTableIamMember`" pulumi-lang-java="`gcp.dataproc.MetastoreTableIamMember`">`gcp.dataproc.MetastoreTableIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the table are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreTableIamPolicy`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreTableIamPolicy`" pulumi-lang-go="`dataproc.MetastoreTableIamPolicy`" pulumi-lang-python="`dataproc.MetastoreTableIamPolicy`" pulumi-lang-yaml="`gcp.dataproc.MetastoreTableIamPolicy`" pulumi-lang-java="`gcp.dataproc.MetastoreTableIamPolicy`">`gcp.dataproc.MetastoreTableIamPolicy`</span>: Retrieves the IAM policy for the table
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreTableIamPolicy`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreTableIamPolicy`" pulumi-lang-go="`dataproc.MetastoreTableIamPolicy`" pulumi-lang-python="`dataproc.MetastoreTableIamPolicy`" pulumi-lang-yaml="`gcp.dataproc.MetastoreTableIamPolicy`" pulumi-lang-java="`gcp.dataproc.MetastoreTableIamPolicy`">`gcp.dataproc.MetastoreTableIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreTableIamBinding`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreTableIamBinding`" pulumi-lang-go="`dataproc.MetastoreTableIamBinding`" pulumi-lang-python="`dataproc.MetastoreTableIamBinding`" pulumi-lang-yaml="`gcp.dataproc.MetastoreTableIamBinding`" pulumi-lang-java="`gcp.dataproc.MetastoreTableIamBinding`">`gcp.dataproc.MetastoreTableIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreTableIamMember`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreTableIamMember`" pulumi-lang-go="`dataproc.MetastoreTableIamMember`" pulumi-lang-python="`dataproc.MetastoreTableIamMember`" pulumi-lang-yaml="`gcp.dataproc.MetastoreTableIamMember`" pulumi-lang-java="`gcp.dataproc.MetastoreTableIamMember`">`gcp.dataproc.MetastoreTableIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreTableIamBinding`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreTableIamBinding`" pulumi-lang-go="`dataproc.MetastoreTableIamBinding`" pulumi-lang-python="`dataproc.MetastoreTableIamBinding`" pulumi-lang-yaml="`gcp.dataproc.MetastoreTableIamBinding`" pulumi-lang-java="`gcp.dataproc.MetastoreTableIamBinding`">`gcp.dataproc.MetastoreTableIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreTableIamMember`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreTableIamMember`" pulumi-lang-go="`dataproc.MetastoreTableIamMember`" pulumi-lang-python="`dataproc.MetastoreTableIamMember`" pulumi-lang-yaml="`gcp.dataproc.MetastoreTableIamMember`" pulumi-lang-java="`gcp.dataproc.MetastoreTableIamMember`">`gcp.dataproc.MetastoreTableIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.MetastoreTableIamPolicy
/// " pulumi-lang-dotnet=" gcp.dataproc.MetastoreTableIamPolicy
/// " pulumi-lang-go=" dataproc.MetastoreTableIamPolicy
/// " pulumi-lang-python=" dataproc.MetastoreTableIamPolicy
/// " pulumi-lang-yaml=" gcp.dataproc.MetastoreTableIamPolicy
/// " pulumi-lang-java=" gcp.dataproc.MetastoreTableIamPolicy
/// "> gcp.dataproc.MetastoreTableIamPolicy
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
/// const policy = new gcp.dataproc.MetastoreTableIamPolicy("policy", {
/// project: dpmsService.project,
/// location: dpmsService.location,
/// serviceId: dpmsService.serviceId,
/// databaseId: hive.hiveConfig[0].properties.database,
/// table: hive.hiveConfig[0].properties.table,
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
/// policy = gcp.dataproc.MetastoreTableIamPolicy("policy",
/// project=dpms_service["project"],
/// location=dpms_service["location"],
/// service_id=dpms_service["serviceId"],
/// database_id=hive["hiveConfig"][0]["properties"]["database"],
/// table=hive["hiveConfig"][0]["properties"]["table"],
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
/// var policy = new Gcp.Dataproc.MetastoreTableIamPolicy("policy", new()
/// {
/// Project = dpmsService.Project,
/// Location = dpmsService.Location,
/// ServiceId = dpmsService.ServiceId,
/// DatabaseId = hive.HiveConfig[0].Properties.Database,
/// Table = hive.HiveConfig[0].Properties.Table,
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
/// _, err = dataproc.NewMetastoreTableIamPolicy(ctx, "policy", &dataproc.MetastoreTableIamPolicyArgs{
/// Project:    pulumi.Any(dpmsService.Project),
/// Location:   pulumi.Any(dpmsService.Location),
/// ServiceId:  pulumi.Any(dpmsService.ServiceId),
/// DatabaseId: pulumi.Any(hive.HiveConfig[0].Properties.Database),
/// Table:      pulumi.Any(hive.HiveConfig[0].Properties.Table),
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
/// import com.pulumi.gcp.dataproc.MetastoreTableIamPolicy;
/// import com.pulumi.gcp.dataproc.MetastoreTableIamPolicyArgs;
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
/// var policy = new MetastoreTableIamPolicy("policy", MetastoreTableIamPolicyArgs.builder()
/// .project(dpmsService.project())
/// .location(dpmsService.location())
/// .serviceId(dpmsService.serviceId())
/// .databaseId(hive.hiveConfig()[0].properties().database())
/// .table(hive.hiveConfig()[0].properties().table())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:dataproc:MetastoreTableIamPolicy
/// properties:
/// project: ${dpmsService.project}
/// location: ${dpmsService.location}
/// serviceId: ${dpmsService.serviceId}
/// databaseId: ${hive.hiveConfig[0].properties.database}
/// table: ${hive.hiveConfig[0].properties.table}
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
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.MetastoreTableIamBinding
/// " pulumi-lang-dotnet=" gcp.dataproc.MetastoreTableIamBinding
/// " pulumi-lang-go=" dataproc.MetastoreTableIamBinding
/// " pulumi-lang-python=" dataproc.MetastoreTableIamBinding
/// " pulumi-lang-yaml=" gcp.dataproc.MetastoreTableIamBinding
/// " pulumi-lang-java=" gcp.dataproc.MetastoreTableIamBinding
/// "> gcp.dataproc.MetastoreTableIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataproc.MetastoreTableIamBinding("binding", {
/// project: dpmsService.project,
/// location: dpmsService.location,
/// serviceId: dpmsService.serviceId,
/// databaseId: hive.hiveConfig[0].properties.database,
/// table: hive.hiveConfig[0].properties.table,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataproc.MetastoreTableIamBinding("binding",
/// project=dpms_service["project"],
/// location=dpms_service["location"],
/// service_id=dpms_service["serviceId"],
/// database_id=hive["hiveConfig"][0]["properties"]["database"],
/// table=hive["hiveConfig"][0]["properties"]["table"],
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
/// var binding = new Gcp.Dataproc.MetastoreTableIamBinding("binding", new()
/// {
/// Project = dpmsService.Project,
/// Location = dpmsService.Location,
/// ServiceId = dpmsService.ServiceId,
/// DatabaseId = hive.HiveConfig[0].Properties.Database,
/// Table = hive.HiveConfig[0].Properties.Table,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.NewMetastoreTableIamBinding(ctx, "binding", &dataproc.MetastoreTableIamBindingArgs{
/// Project:    pulumi.Any(dpmsService.Project),
/// Location:   pulumi.Any(dpmsService.Location),
/// ServiceId:  pulumi.Any(dpmsService.ServiceId),
/// DatabaseId: pulumi.Any(hive.HiveConfig[0].Properties.Database),
/// Table:      pulumi.Any(hive.HiveConfig[0].Properties.Table),
/// Role:       pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.dataproc.MetastoreTableIamBinding;
/// import com.pulumi.gcp.dataproc.MetastoreTableIamBindingArgs;
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
/// var binding = new MetastoreTableIamBinding("binding", MetastoreTableIamBindingArgs.builder()
/// .project(dpmsService.project())
/// .location(dpmsService.location())
/// .serviceId(dpmsService.serviceId())
/// .databaseId(hive.hiveConfig()[0].properties().database())
/// .table(hive.hiveConfig()[0].properties().table())
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
/// type: gcp:dataproc:MetastoreTableIamBinding
/// properties:
/// project: ${dpmsService.project}
/// location: ${dpmsService.location}
/// serviceId: ${dpmsService.serviceId}
/// databaseId: ${hive.hiveConfig[0].properties.database}
/// table: ${hive.hiveConfig[0].properties.table}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.MetastoreTableIamMember
/// " pulumi-lang-dotnet=" gcp.dataproc.MetastoreTableIamMember
/// " pulumi-lang-go=" dataproc.MetastoreTableIamMember
/// " pulumi-lang-python=" dataproc.MetastoreTableIamMember
/// " pulumi-lang-yaml=" gcp.dataproc.MetastoreTableIamMember
/// " pulumi-lang-java=" gcp.dataproc.MetastoreTableIamMember
/// "> gcp.dataproc.MetastoreTableIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataproc.MetastoreTableIamMember("member", {
/// project: dpmsService.project,
/// location: dpmsService.location,
/// serviceId: dpmsService.serviceId,
/// databaseId: hive.hiveConfig[0].properties.database,
/// table: hive.hiveConfig[0].properties.table,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataproc.MetastoreTableIamMember("member",
/// project=dpms_service["project"],
/// location=dpms_service["location"],
/// service_id=dpms_service["serviceId"],
/// database_id=hive["hiveConfig"][0]["properties"]["database"],
/// table=hive["hiveConfig"][0]["properties"]["table"],
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
/// var member = new Gcp.Dataproc.MetastoreTableIamMember("member", new()
/// {
/// Project = dpmsService.Project,
/// Location = dpmsService.Location,
/// ServiceId = dpmsService.ServiceId,
/// DatabaseId = hive.HiveConfig[0].Properties.Database,
/// Table = hive.HiveConfig[0].Properties.Table,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.NewMetastoreTableIamMember(ctx, "member", &dataproc.MetastoreTableIamMemberArgs{
/// Project:    pulumi.Any(dpmsService.Project),
/// Location:   pulumi.Any(dpmsService.Location),
/// ServiceId:  pulumi.Any(dpmsService.ServiceId),
/// DatabaseId: pulumi.Any(hive.HiveConfig[0].Properties.Database),
/// Table:      pulumi.Any(hive.HiveConfig[0].Properties.Table),
/// Role:       pulumi.String("roles/viewer"),
/// Member:     pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.dataproc.MetastoreTableIamMember;
/// import com.pulumi.gcp.dataproc.MetastoreTableIamMemberArgs;
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
/// var member = new MetastoreTableIamMember("member", MetastoreTableIamMemberArgs.builder()
/// .project(dpmsService.project())
/// .location(dpmsService.location())
/// .serviceId(dpmsService.serviceId())
/// .databaseId(hive.hiveConfig()[0].properties().database())
/// .table(hive.hiveConfig()[0].properties().table())
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
/// type: gcp:dataproc:MetastoreTableIamMember
/// properties:
/// project: ${dpmsService.project}
/// location: ${dpmsService.location}
/// serviceId: ${dpmsService.serviceId}
/// databaseId: ${hive.hiveConfig[0].properties.database}
/// table: ${hive.hiveConfig[0].properties.table}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/services/{{serviceId}}/databases/{{databaseId}}/tables/{{name}}
///
/// * {{project}}/{{location}}/{{serviceId}}/{{databaseId}}/{{name}}
///
/// * {{location}}/{{serviceId}}/{{databaseId}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Dataproc Metastore table IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreTableIamPolicy:MetastoreTableIamPolicy editor "projects/{{project}}/locations/{{location}}/services/{{serviceId}}/databases/{{databaseId}}/tables/{{table}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreTableIamPolicy:MetastoreTableIamPolicy editor "projects/{{project}}/locations/{{location}}/services/{{serviceId}}/databases/{{databaseId}}/tables/{{table}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreTableIamPolicy:MetastoreTableIamPolicy editor projects/{{project}}/locations/{{location}}/services/{{serviceId}}/databases/{{databaseId}}/tables/{{table}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class MetastoreTableIamPolicy extends CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> databaseId;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final Output<String> location;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> serviceId;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> table;

  MetastoreTableIamPolicy(
    String name, {
    MetastoreTableIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/metastoreTableIamPolicy:MetastoreTableIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.databaseId = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.policyData = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.serviceId = Output.createUnknown<String>();
    this.table = Output.createUnknown<String>();
  }
}
