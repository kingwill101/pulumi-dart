import 'package:pulumi/pulumi.dart';
import 'metastore_database_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Dataproc Metastore Database. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-go="`dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-python="`dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-yaml="`gcp.dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-java="`gcp.dataproc.MetastoreDatabaseIamPolicy`">`gcp.dataproc.MetastoreDatabaseIamPolicy`</span>: Authoritative. Sets the IAM policy for the database and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-go="`dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-python="`dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-yaml="`gcp.dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-java="`gcp.dataproc.MetastoreDatabaseIamBinding`">`gcp.dataproc.MetastoreDatabaseIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the database are preserved.
/// * <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreDatabaseIamMember`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreDatabaseIamMember`" pulumi-lang-go="`dataproc.MetastoreDatabaseIamMember`" pulumi-lang-python="`dataproc.MetastoreDatabaseIamMember`" pulumi-lang-yaml="`gcp.dataproc.MetastoreDatabaseIamMember`" pulumi-lang-java="`gcp.dataproc.MetastoreDatabaseIamMember`">`gcp.dataproc.MetastoreDatabaseIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the database are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-go="`dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-python="`dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-yaml="`gcp.dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-java="`gcp.dataproc.MetastoreDatabaseIamPolicy`">`gcp.dataproc.MetastoreDatabaseIamPolicy`</span>: Retrieves the IAM policy for the database
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-go="`dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-python="`dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-yaml="`gcp.dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-java="`gcp.dataproc.MetastoreDatabaseIamPolicy`">`gcp.dataproc.MetastoreDatabaseIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-go="`dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-python="`dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-yaml="`gcp.dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-java="`gcp.dataproc.MetastoreDatabaseIamBinding`">`gcp.dataproc.MetastoreDatabaseIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreDatabaseIamMember`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreDatabaseIamMember`" pulumi-lang-go="`dataproc.MetastoreDatabaseIamMember`" pulumi-lang-python="`dataproc.MetastoreDatabaseIamMember`" pulumi-lang-yaml="`gcp.dataproc.MetastoreDatabaseIamMember`" pulumi-lang-java="`gcp.dataproc.MetastoreDatabaseIamMember`">`gcp.dataproc.MetastoreDatabaseIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-go="`dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-python="`dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-yaml="`gcp.dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-java="`gcp.dataproc.MetastoreDatabaseIamBinding`">`gcp.dataproc.MetastoreDatabaseIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreDatabaseIamMember`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreDatabaseIamMember`" pulumi-lang-go="`dataproc.MetastoreDatabaseIamMember`" pulumi-lang-python="`dataproc.MetastoreDatabaseIamMember`" pulumi-lang-yaml="`gcp.dataproc.MetastoreDatabaseIamMember`" pulumi-lang-java="`gcp.dataproc.MetastoreDatabaseIamMember`">`gcp.dataproc.MetastoreDatabaseIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.MetastoreDatabaseIamPolicy
/// " pulumi-lang-dotnet=" gcp.dataproc.MetastoreDatabaseIamPolicy
/// " pulumi-lang-go=" dataproc.MetastoreDatabaseIamPolicy
/// " pulumi-lang-python=" dataproc.MetastoreDatabaseIamPolicy
/// " pulumi-lang-yaml=" gcp.dataproc.MetastoreDatabaseIamPolicy
/// " pulumi-lang-java=" gcp.dataproc.MetastoreDatabaseIamPolicy
/// "> gcp.dataproc.MetastoreDatabaseIamPolicy
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
/// const policy = new gcp.dataproc.MetastoreDatabaseIamPolicy("policy", {
/// project: dpmsService.project,
/// location: dpmsService.location,
/// serviceId: dpmsService.serviceId,
/// database: hive.hiveConfig[0].properties.database,
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
/// policy = gcp.dataproc.MetastoreDatabaseIamPolicy("policy",
/// project=dpms_service["project"],
/// location=dpms_service["location"],
/// service_id=dpms_service["serviceId"],
/// database=hive["hiveConfig"][0]["properties"]["database"],
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
/// var policy = new Gcp.Dataproc.MetastoreDatabaseIamPolicy("policy", new()
/// {
/// Project = dpmsService.Project,
/// Location = dpmsService.Location,
/// ServiceId = dpmsService.ServiceId,
/// Database = hive.HiveConfig[0].Properties.Database,
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
/// _, err = dataproc.NewMetastoreDatabaseIamPolicy(ctx, "policy", &dataproc.MetastoreDatabaseIamPolicyArgs{
/// Project:    pulumi.Any(dpmsService.Project),
/// Location:   pulumi.Any(dpmsService.Location),
/// ServiceId:  pulumi.Any(dpmsService.ServiceId),
/// Database:   pulumi.Any(hive.HiveConfig[0].Properties.Database),
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
/// import com.pulumi.gcp.dataproc.MetastoreDatabaseIamPolicy;
/// import com.pulumi.gcp.dataproc.MetastoreDatabaseIamPolicyArgs;
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
/// var policy = new MetastoreDatabaseIamPolicy("policy", MetastoreDatabaseIamPolicyArgs.builder()
/// .project(dpmsService.project())
/// .location(dpmsService.location())
/// .serviceId(dpmsService.serviceId())
/// .database(hive.hiveConfig()[0].properties().database())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:dataproc:MetastoreDatabaseIamPolicy
/// properties:
/// project: ${dpmsService.project}
/// location: ${dpmsService.location}
/// serviceId: ${dpmsService.serviceId}
/// database: ${hive.hiveConfig[0].properties.database}
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
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.MetastoreDatabaseIamBinding
/// " pulumi-lang-dotnet=" gcp.dataproc.MetastoreDatabaseIamBinding
/// " pulumi-lang-go=" dataproc.MetastoreDatabaseIamBinding
/// " pulumi-lang-python=" dataproc.MetastoreDatabaseIamBinding
/// " pulumi-lang-yaml=" gcp.dataproc.MetastoreDatabaseIamBinding
/// " pulumi-lang-java=" gcp.dataproc.MetastoreDatabaseIamBinding
/// "> gcp.dataproc.MetastoreDatabaseIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataproc.MetastoreDatabaseIamBinding("binding", {
/// project: dpmsService.project,
/// location: dpmsService.location,
/// serviceId: dpmsService.serviceId,
/// database: hive.hiveConfig[0].properties.database,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataproc.MetastoreDatabaseIamBinding("binding",
/// project=dpms_service["project"],
/// location=dpms_service["location"],
/// service_id=dpms_service["serviceId"],
/// database=hive["hiveConfig"][0]["properties"]["database"],
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
/// var binding = new Gcp.Dataproc.MetastoreDatabaseIamBinding("binding", new()
/// {
/// Project = dpmsService.Project,
/// Location = dpmsService.Location,
/// ServiceId = dpmsService.ServiceId,
/// Database = hive.HiveConfig[0].Properties.Database,
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
/// _, err := dataproc.NewMetastoreDatabaseIamBinding(ctx, "binding", &dataproc.MetastoreDatabaseIamBindingArgs{
/// Project:   pulumi.Any(dpmsService.Project),
/// Location:  pulumi.Any(dpmsService.Location),
/// ServiceId: pulumi.Any(dpmsService.ServiceId),
/// Database:  pulumi.Any(hive.HiveConfig[0].Properties.Database),
/// Role:      pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.dataproc.MetastoreDatabaseIamBinding;
/// import com.pulumi.gcp.dataproc.MetastoreDatabaseIamBindingArgs;
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
/// var binding = new MetastoreDatabaseIamBinding("binding", MetastoreDatabaseIamBindingArgs.builder()
/// .project(dpmsService.project())
/// .location(dpmsService.location())
/// .serviceId(dpmsService.serviceId())
/// .database(hive.hiveConfig()[0].properties().database())
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
/// type: gcp:dataproc:MetastoreDatabaseIamBinding
/// properties:
/// project: ${dpmsService.project}
/// location: ${dpmsService.location}
/// serviceId: ${dpmsService.serviceId}
/// database: ${hive.hiveConfig[0].properties.database}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.MetastoreDatabaseIamMember
/// " pulumi-lang-dotnet=" gcp.dataproc.MetastoreDatabaseIamMember
/// " pulumi-lang-go=" dataproc.MetastoreDatabaseIamMember
/// " pulumi-lang-python=" dataproc.MetastoreDatabaseIamMember
/// " pulumi-lang-yaml=" gcp.dataproc.MetastoreDatabaseIamMember
/// " pulumi-lang-java=" gcp.dataproc.MetastoreDatabaseIamMember
/// "> gcp.dataproc.MetastoreDatabaseIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataproc.MetastoreDatabaseIamMember("member", {
/// project: dpmsService.project,
/// location: dpmsService.location,
/// serviceId: dpmsService.serviceId,
/// database: hive.hiveConfig[0].properties.database,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataproc.MetastoreDatabaseIamMember("member",
/// project=dpms_service["project"],
/// location=dpms_service["location"],
/// service_id=dpms_service["serviceId"],
/// database=hive["hiveConfig"][0]["properties"]["database"],
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
/// var member = new Gcp.Dataproc.MetastoreDatabaseIamMember("member", new()
/// {
/// Project = dpmsService.Project,
/// Location = dpmsService.Location,
/// ServiceId = dpmsService.ServiceId,
/// Database = hive.HiveConfig[0].Properties.Database,
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
/// _, err := dataproc.NewMetastoreDatabaseIamMember(ctx, "member", &dataproc.MetastoreDatabaseIamMemberArgs{
/// Project:   pulumi.Any(dpmsService.Project),
/// Location:  pulumi.Any(dpmsService.Location),
/// ServiceId: pulumi.Any(dpmsService.ServiceId),
/// Database:  pulumi.Any(hive.HiveConfig[0].Properties.Database),
/// Role:      pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.dataproc.MetastoreDatabaseIamMember;
/// import com.pulumi.gcp.dataproc.MetastoreDatabaseIamMemberArgs;
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
/// var member = new MetastoreDatabaseIamMember("member", MetastoreDatabaseIamMemberArgs.builder()
/// .project(dpmsService.project())
/// .location(dpmsService.location())
/// .serviceId(dpmsService.serviceId())
/// .database(hive.hiveConfig()[0].properties().database())
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
/// type: gcp:dataproc:MetastoreDatabaseIamMember
/// properties:
/// project: ${dpmsService.project}
/// location: ${dpmsService.location}
/// serviceId: ${dpmsService.serviceId}
/// database: ${hive.hiveConfig[0].properties.database}
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
/// # IAM policy for Dataproc Metastore Database
///
/// Three different resources help you manage your IAM policy for Dataproc Metastore Database. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-go="`dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-python="`dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-yaml="`gcp.dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-java="`gcp.dataproc.MetastoreDatabaseIamPolicy`">`gcp.dataproc.MetastoreDatabaseIamPolicy`</span>: Authoritative. Sets the IAM policy for the database and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-go="`dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-python="`dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-yaml="`gcp.dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-java="`gcp.dataproc.MetastoreDatabaseIamBinding`">`gcp.dataproc.MetastoreDatabaseIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the database are preserved.
/// * <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreDatabaseIamMember`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreDatabaseIamMember`" pulumi-lang-go="`dataproc.MetastoreDatabaseIamMember`" pulumi-lang-python="`dataproc.MetastoreDatabaseIamMember`" pulumi-lang-yaml="`gcp.dataproc.MetastoreDatabaseIamMember`" pulumi-lang-java="`gcp.dataproc.MetastoreDatabaseIamMember`">`gcp.dataproc.MetastoreDatabaseIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the database are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-go="`dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-python="`dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-yaml="`gcp.dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-java="`gcp.dataproc.MetastoreDatabaseIamPolicy`">`gcp.dataproc.MetastoreDatabaseIamPolicy`</span>: Retrieves the IAM policy for the database
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-go="`dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-python="`dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-yaml="`gcp.dataproc.MetastoreDatabaseIamPolicy`" pulumi-lang-java="`gcp.dataproc.MetastoreDatabaseIamPolicy`">`gcp.dataproc.MetastoreDatabaseIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-go="`dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-python="`dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-yaml="`gcp.dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-java="`gcp.dataproc.MetastoreDatabaseIamBinding`">`gcp.dataproc.MetastoreDatabaseIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreDatabaseIamMember`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreDatabaseIamMember`" pulumi-lang-go="`dataproc.MetastoreDatabaseIamMember`" pulumi-lang-python="`dataproc.MetastoreDatabaseIamMember`" pulumi-lang-yaml="`gcp.dataproc.MetastoreDatabaseIamMember`" pulumi-lang-java="`gcp.dataproc.MetastoreDatabaseIamMember`">`gcp.dataproc.MetastoreDatabaseIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-go="`dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-python="`dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-yaml="`gcp.dataproc.MetastoreDatabaseIamBinding`" pulumi-lang-java="`gcp.dataproc.MetastoreDatabaseIamBinding`">`gcp.dataproc.MetastoreDatabaseIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.dataproc.MetastoreDatabaseIamMember`" pulumi-lang-dotnet="`gcp.dataproc.MetastoreDatabaseIamMember`" pulumi-lang-go="`dataproc.MetastoreDatabaseIamMember`" pulumi-lang-python="`dataproc.MetastoreDatabaseIamMember`" pulumi-lang-yaml="`gcp.dataproc.MetastoreDatabaseIamMember`" pulumi-lang-java="`gcp.dataproc.MetastoreDatabaseIamMember`">`gcp.dataproc.MetastoreDatabaseIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.MetastoreDatabaseIamPolicy
/// " pulumi-lang-dotnet=" gcp.dataproc.MetastoreDatabaseIamPolicy
/// " pulumi-lang-go=" dataproc.MetastoreDatabaseIamPolicy
/// " pulumi-lang-python=" dataproc.MetastoreDatabaseIamPolicy
/// " pulumi-lang-yaml=" gcp.dataproc.MetastoreDatabaseIamPolicy
/// " pulumi-lang-java=" gcp.dataproc.MetastoreDatabaseIamPolicy
/// "> gcp.dataproc.MetastoreDatabaseIamPolicy
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
/// const policy = new gcp.dataproc.MetastoreDatabaseIamPolicy("policy", {
/// project: dpmsService.project,
/// location: dpmsService.location,
/// serviceId: dpmsService.serviceId,
/// database: hive.hiveConfig[0].properties.database,
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
/// policy = gcp.dataproc.MetastoreDatabaseIamPolicy("policy",
/// project=dpms_service["project"],
/// location=dpms_service["location"],
/// service_id=dpms_service["serviceId"],
/// database=hive["hiveConfig"][0]["properties"]["database"],
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
/// var policy = new Gcp.Dataproc.MetastoreDatabaseIamPolicy("policy", new()
/// {
/// Project = dpmsService.Project,
/// Location = dpmsService.Location,
/// ServiceId = dpmsService.ServiceId,
/// Database = hive.HiveConfig[0].Properties.Database,
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
/// _, err = dataproc.NewMetastoreDatabaseIamPolicy(ctx, "policy", &dataproc.MetastoreDatabaseIamPolicyArgs{
/// Project:    pulumi.Any(dpmsService.Project),
/// Location:   pulumi.Any(dpmsService.Location),
/// ServiceId:  pulumi.Any(dpmsService.ServiceId),
/// Database:   pulumi.Any(hive.HiveConfig[0].Properties.Database),
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
/// import com.pulumi.gcp.dataproc.MetastoreDatabaseIamPolicy;
/// import com.pulumi.gcp.dataproc.MetastoreDatabaseIamPolicyArgs;
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
/// var policy = new MetastoreDatabaseIamPolicy("policy", MetastoreDatabaseIamPolicyArgs.builder()
/// .project(dpmsService.project())
/// .location(dpmsService.location())
/// .serviceId(dpmsService.serviceId())
/// .database(hive.hiveConfig()[0].properties().database())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:dataproc:MetastoreDatabaseIamPolicy
/// properties:
/// project: ${dpmsService.project}
/// location: ${dpmsService.location}
/// serviceId: ${dpmsService.serviceId}
/// database: ${hive.hiveConfig[0].properties.database}
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
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.MetastoreDatabaseIamBinding
/// " pulumi-lang-dotnet=" gcp.dataproc.MetastoreDatabaseIamBinding
/// " pulumi-lang-go=" dataproc.MetastoreDatabaseIamBinding
/// " pulumi-lang-python=" dataproc.MetastoreDatabaseIamBinding
/// " pulumi-lang-yaml=" gcp.dataproc.MetastoreDatabaseIamBinding
/// " pulumi-lang-java=" gcp.dataproc.MetastoreDatabaseIamBinding
/// "> gcp.dataproc.MetastoreDatabaseIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataproc.MetastoreDatabaseIamBinding("binding", {
/// project: dpmsService.project,
/// location: dpmsService.location,
/// serviceId: dpmsService.serviceId,
/// database: hive.hiveConfig[0].properties.database,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataproc.MetastoreDatabaseIamBinding("binding",
/// project=dpms_service["project"],
/// location=dpms_service["location"],
/// service_id=dpms_service["serviceId"],
/// database=hive["hiveConfig"][0]["properties"]["database"],
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
/// var binding = new Gcp.Dataproc.MetastoreDatabaseIamBinding("binding", new()
/// {
/// Project = dpmsService.Project,
/// Location = dpmsService.Location,
/// ServiceId = dpmsService.ServiceId,
/// Database = hive.HiveConfig[0].Properties.Database,
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
/// _, err := dataproc.NewMetastoreDatabaseIamBinding(ctx, "binding", &dataproc.MetastoreDatabaseIamBindingArgs{
/// Project:   pulumi.Any(dpmsService.Project),
/// Location:  pulumi.Any(dpmsService.Location),
/// ServiceId: pulumi.Any(dpmsService.ServiceId),
/// Database:  pulumi.Any(hive.HiveConfig[0].Properties.Database),
/// Role:      pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.dataproc.MetastoreDatabaseIamBinding;
/// import com.pulumi.gcp.dataproc.MetastoreDatabaseIamBindingArgs;
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
/// var binding = new MetastoreDatabaseIamBinding("binding", MetastoreDatabaseIamBindingArgs.builder()
/// .project(dpmsService.project())
/// .location(dpmsService.location())
/// .serviceId(dpmsService.serviceId())
/// .database(hive.hiveConfig()[0].properties().database())
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
/// type: gcp:dataproc:MetastoreDatabaseIamBinding
/// properties:
/// project: ${dpmsService.project}
/// location: ${dpmsService.location}
/// serviceId: ${dpmsService.serviceId}
/// database: ${hive.hiveConfig[0].properties.database}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.MetastoreDatabaseIamMember
/// " pulumi-lang-dotnet=" gcp.dataproc.MetastoreDatabaseIamMember
/// " pulumi-lang-go=" dataproc.MetastoreDatabaseIamMember
/// " pulumi-lang-python=" dataproc.MetastoreDatabaseIamMember
/// " pulumi-lang-yaml=" gcp.dataproc.MetastoreDatabaseIamMember
/// " pulumi-lang-java=" gcp.dataproc.MetastoreDatabaseIamMember
/// "> gcp.dataproc.MetastoreDatabaseIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataproc.MetastoreDatabaseIamMember("member", {
/// project: dpmsService.project,
/// location: dpmsService.location,
/// serviceId: dpmsService.serviceId,
/// database: hive.hiveConfig[0].properties.database,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataproc.MetastoreDatabaseIamMember("member",
/// project=dpms_service["project"],
/// location=dpms_service["location"],
/// service_id=dpms_service["serviceId"],
/// database=hive["hiveConfig"][0]["properties"]["database"],
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
/// var member = new Gcp.Dataproc.MetastoreDatabaseIamMember("member", new()
/// {
/// Project = dpmsService.Project,
/// Location = dpmsService.Location,
/// ServiceId = dpmsService.ServiceId,
/// Database = hive.HiveConfig[0].Properties.Database,
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
/// _, err := dataproc.NewMetastoreDatabaseIamMember(ctx, "member", &dataproc.MetastoreDatabaseIamMemberArgs{
/// Project:   pulumi.Any(dpmsService.Project),
/// Location:  pulumi.Any(dpmsService.Location),
/// ServiceId: pulumi.Any(dpmsService.ServiceId),
/// Database:  pulumi.Any(hive.HiveConfig[0].Properties.Database),
/// Role:      pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.dataproc.MetastoreDatabaseIamMember;
/// import com.pulumi.gcp.dataproc.MetastoreDatabaseIamMemberArgs;
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
/// var member = new MetastoreDatabaseIamMember("member", MetastoreDatabaseIamMemberArgs.builder()
/// .project(dpmsService.project())
/// .location(dpmsService.location())
/// .serviceId(dpmsService.serviceId())
/// .database(hive.hiveConfig()[0].properties().database())
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
/// type: gcp:dataproc:MetastoreDatabaseIamMember
/// properties:
/// project: ${dpmsService.project}
/// location: ${dpmsService.location}
/// serviceId: ${dpmsService.serviceId}
/// database: ${hive.hiveConfig[0].properties.database}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/services/{{serviceId}}/databases/{{name}}
///
/// * {{project}}/{{location}}/{{serviceId}}/{{name}}
///
/// * {{location}}/{{serviceId}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Dataproc Metastore database IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreDatabaseIamPolicy:MetastoreDatabaseIamPolicy editor "projects/{{project}}/locations/{{location}}/services/{{serviceId}}/databases/{{database}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreDatabaseIamPolicy:MetastoreDatabaseIamPolicy editor "projects/{{project}}/locations/{{location}}/services/{{serviceId}}/databases/{{database}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreDatabaseIamPolicy:MetastoreDatabaseIamPolicy editor projects/{{project}}/locations/{{location}}/services/{{serviceId}}/databases/{{database}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class MetastoreDatabaseIamPolicy extends CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> database;

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

  MetastoreDatabaseIamPolicy(
    String name, {
    MetastoreDatabaseIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/metastoreDatabaseIamPolicy:MetastoreDatabaseIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.database = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.policyData = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.serviceId = Output.createUnknown<String>();
  }
}
