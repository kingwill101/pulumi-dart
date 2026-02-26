import 'package:pulumi/pulumi.dart';
import 'app_engine_version_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Identity-Aware Proxy AppEngineVersion. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.iap.AppEngineVersionIamPolicy`" pulumi-lang-dotnet="`gcp.iap.AppEngineVersionIamPolicy`" pulumi-lang-go="`iap.AppEngineVersionIamPolicy`" pulumi-lang-python="`iap.AppEngineVersionIamPolicy`" pulumi-lang-yaml="`gcp.iap.AppEngineVersionIamPolicy`" pulumi-lang-java="`gcp.iap.AppEngineVersionIamPolicy`">`gcp.iap.AppEngineVersionIamPolicy`</span>: Authoritative. Sets the IAM policy for the appengineversion and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.iap.AppEngineVersionIamBinding`" pulumi-lang-dotnet="`gcp.iap.AppEngineVersionIamBinding`" pulumi-lang-go="`iap.AppEngineVersionIamBinding`" pulumi-lang-python="`iap.AppEngineVersionIamBinding`" pulumi-lang-yaml="`gcp.iap.AppEngineVersionIamBinding`" pulumi-lang-java="`gcp.iap.AppEngineVersionIamBinding`">`gcp.iap.AppEngineVersionIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the appengineversion are preserved.
/// * <span pulumi-lang-nodejs="`gcp.iap.AppEngineVersionIamMember`" pulumi-lang-dotnet="`gcp.iap.AppEngineVersionIamMember`" pulumi-lang-go="`iap.AppEngineVersionIamMember`" pulumi-lang-python="`iap.AppEngineVersionIamMember`" pulumi-lang-yaml="`gcp.iap.AppEngineVersionIamMember`" pulumi-lang-java="`gcp.iap.AppEngineVersionIamMember`">`gcp.iap.AppEngineVersionIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the appengineversion are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.iap.AppEngineVersionIamPolicy`" pulumi-lang-dotnet="`gcp.iap.AppEngineVersionIamPolicy`" pulumi-lang-go="`iap.AppEngineVersionIamPolicy`" pulumi-lang-python="`iap.AppEngineVersionIamPolicy`" pulumi-lang-yaml="`gcp.iap.AppEngineVersionIamPolicy`" pulumi-lang-java="`gcp.iap.AppEngineVersionIamPolicy`">`gcp.iap.AppEngineVersionIamPolicy`</span>: Retrieves the IAM policy for the appengineversion
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iap.AppEngineVersionIamPolicy`" pulumi-lang-dotnet="`gcp.iap.AppEngineVersionIamPolicy`" pulumi-lang-go="`iap.AppEngineVersionIamPolicy`" pulumi-lang-python="`iap.AppEngineVersionIamPolicy`" pulumi-lang-yaml="`gcp.iap.AppEngineVersionIamPolicy`" pulumi-lang-java="`gcp.iap.AppEngineVersionIamPolicy`">`gcp.iap.AppEngineVersionIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.iap.AppEngineVersionIamBinding`" pulumi-lang-dotnet="`gcp.iap.AppEngineVersionIamBinding`" pulumi-lang-go="`iap.AppEngineVersionIamBinding`" pulumi-lang-python="`iap.AppEngineVersionIamBinding`" pulumi-lang-yaml="`gcp.iap.AppEngineVersionIamBinding`" pulumi-lang-java="`gcp.iap.AppEngineVersionIamBinding`">`gcp.iap.AppEngineVersionIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.iap.AppEngineVersionIamMember`" pulumi-lang-dotnet="`gcp.iap.AppEngineVersionIamMember`" pulumi-lang-go="`iap.AppEngineVersionIamMember`" pulumi-lang-python="`iap.AppEngineVersionIamMember`" pulumi-lang-yaml="`gcp.iap.AppEngineVersionIamMember`" pulumi-lang-java="`gcp.iap.AppEngineVersionIamMember`">`gcp.iap.AppEngineVersionIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iap.AppEngineVersionIamBinding`" pulumi-lang-dotnet="`gcp.iap.AppEngineVersionIamBinding`" pulumi-lang-go="`iap.AppEngineVersionIamBinding`" pulumi-lang-python="`iap.AppEngineVersionIamBinding`" pulumi-lang-yaml="`gcp.iap.AppEngineVersionIamBinding`" pulumi-lang-java="`gcp.iap.AppEngineVersionIamBinding`">`gcp.iap.AppEngineVersionIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.iap.AppEngineVersionIamMember`" pulumi-lang-dotnet="`gcp.iap.AppEngineVersionIamMember`" pulumi-lang-go="`iap.AppEngineVersionIamMember`" pulumi-lang-python="`iap.AppEngineVersionIamMember`" pulumi-lang-yaml="`gcp.iap.AppEngineVersionIamMember`" pulumi-lang-java="`gcp.iap.AppEngineVersionIamMember`">`gcp.iap.AppEngineVersionIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.iap.AppEngineVersionIamPolicy
/// " pulumi-lang-dotnet=" gcp.iap.AppEngineVersionIamPolicy
/// " pulumi-lang-go=" iap.AppEngineVersionIamPolicy
/// " pulumi-lang-python=" iap.AppEngineVersionIamPolicy
/// " pulumi-lang-yaml=" gcp.iap.AppEngineVersionIamPolicy
/// " pulumi-lang-java=" gcp.iap.AppEngineVersionIamPolicy
/// "> gcp.iap.AppEngineVersionIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/iap.httpsResourceAccessor",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.iap.AppEngineVersionIamPolicy("policy", {
/// project: version.project,
/// appId: version.project,
/// service: version.service,
/// versionId: version.versionId,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/iap.httpsResourceAccessor",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.iap.AppEngineVersionIamPolicy("policy",
/// project=version["project"],
/// app_id=version["project"],
/// service=version["service"],
/// version_id=version["versionId"],
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
/// Role = "roles/iap.httpsResourceAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Iap.AppEngineVersionIamPolicy("policy", new()
/// {
/// Project = version.Project,
/// AppId = version.Project,
/// Service = version.Service,
/// VersionId = version.VersionId,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/iap.httpsResourceAccessor",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iap.NewAppEngineVersionIamPolicy(ctx, "policy", &iap.AppEngineVersionIamPolicyArgs{
/// Project:    pulumi.Any(version.Project),
/// AppId:      pulumi.Any(version.Project),
/// Service:    pulumi.Any(version.Service),
/// VersionId:  pulumi.Any(version.VersionId),
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
/// import com.pulumi.gcp.iap.AppEngineVersionIamPolicy;
/// import com.pulumi.gcp.iap.AppEngineVersionIamPolicyArgs;
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
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new AppEngineVersionIamPolicy("policy", AppEngineVersionIamPolicyArgs.builder()
/// .project(version.project())
/// .appId(version.project())
/// .service(version.service())
/// .versionId(version.versionId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:iap:AppEngineVersionIamPolicy
/// properties:
/// project: ${version.project}
/// appId: ${version.project}
/// service: ${version.service}
/// versionId: ${version.versionId}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/iap.httpsResourceAccessor
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
/// role: "roles/iap.httpsResourceAccessor",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const policy = new gcp.iap.AppEngineVersionIamPolicy("policy", {
/// project: version.project,
/// appId: version.project,
/// service: version.service,
/// versionId: version.versionId,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/iap.httpsResourceAccessor",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }])
/// policy = gcp.iap.AppEngineVersionIamPolicy("policy",
/// project=version["project"],
/// app_id=version["project"],
/// service=version["service"],
/// version_id=version["versionId"],
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
/// Role = "roles/iap.httpsResourceAccessor",
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
/// var policy = new Gcp.Iap.AppEngineVersionIamPolicy("policy", new()
/// {
/// Project = version.Project,
/// AppId = version.Project,
/// Service = version.Service,
/// VersionId = version.VersionId,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/iap.httpsResourceAccessor",
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
/// _, err = iap.NewAppEngineVersionIamPolicy(ctx, "policy", &iap.AppEngineVersionIamPolicyArgs{
/// Project:    pulumi.Any(version.Project),
/// AppId:      pulumi.Any(version.Project),
/// Service:    pulumi.Any(version.Service),
/// VersionId:  pulumi.Any(version.VersionId),
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
/// import com.pulumi.gcp.iap.AppEngineVersionIamPolicy;
/// import com.pulumi.gcp.iap.AppEngineVersionIamPolicyArgs;
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
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var policy = new AppEngineVersionIamPolicy("policy", AppEngineVersionIamPolicyArgs.builder()
/// .project(version.project())
/// .appId(version.project())
/// .service(version.service())
/// .versionId(version.versionId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:iap:AppEngineVersionIamPolicy
/// properties:
/// project: ${version.project}
/// appId: ${version.project}
/// service: ${version.service}
/// versionId: ${version.versionId}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/iap.httpsResourceAccessor
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.iap.AppEngineVersionIamBinding
/// " pulumi-lang-dotnet=" gcp.iap.AppEngineVersionIamBinding
/// " pulumi-lang-go=" iap.AppEngineVersionIamBinding
/// " pulumi-lang-python=" iap.AppEngineVersionIamBinding
/// " pulumi-lang-yaml=" gcp.iap.AppEngineVersionIamBinding
/// " pulumi-lang-java=" gcp.iap.AppEngineVersionIamBinding
/// "> gcp.iap.AppEngineVersionIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.AppEngineVersionIamBinding("binding", {
/// project: version.project,
/// appId: version.project,
/// service: version.service,
/// versionId: version.versionId,
/// role: "roles/iap.httpsResourceAccessor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.AppEngineVersionIamBinding("binding",
/// project=version["project"],
/// app_id=version["project"],
/// service=version["service"],
/// version_id=version["versionId"],
/// role="roles/iap.httpsResourceAccessor",
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
/// var binding = new Gcp.Iap.AppEngineVersionIamBinding("binding", new()
/// {
/// Project = version.Project,
/// AppId = version.Project,
/// Service = version.Service,
/// VersionId = version.VersionId,
/// Role = "roles/iap.httpsResourceAccessor",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iap.NewAppEngineVersionIamBinding(ctx, "binding", &iap.AppEngineVersionIamBindingArgs{
/// Project:   pulumi.Any(version.Project),
/// AppId:     pulumi.Any(version.Project),
/// Service:   pulumi.Any(version.Service),
/// VersionId: pulumi.Any(version.VersionId),
/// Role:      pulumi.String("roles/iap.httpsResourceAccessor"),
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
/// import com.pulumi.gcp.iap.AppEngineVersionIamBinding;
/// import com.pulumi.gcp.iap.AppEngineVersionIamBindingArgs;
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
/// var binding = new AppEngineVersionIamBinding("binding", AppEngineVersionIamBindingArgs.builder()
/// .project(version.project())
/// .appId(version.project())
/// .service(version.service())
/// .versionId(version.versionId())
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:iap:AppEngineVersionIamBinding
/// properties:
/// project: ${version.project}
/// appId: ${version.project}
/// service: ${version.service}
/// versionId: ${version.versionId}
/// role: roles/iap.httpsResourceAccessor
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
/// const binding = new gcp.iap.AppEngineVersionIamBinding("binding", {
/// project: version.project,
/// appId: version.project,
/// service: version.service,
/// versionId: version.versionId,
/// role: "roles/iap.httpsResourceAccessor",
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
/// binding = gcp.iap.AppEngineVersionIamBinding("binding",
/// project=version["project"],
/// app_id=version["project"],
/// service=version["service"],
/// version_id=version["versionId"],
/// role="roles/iap.httpsResourceAccessor",
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
/// var binding = new Gcp.Iap.AppEngineVersionIamBinding("binding", new()
/// {
/// Project = version.Project,
/// AppId = version.Project,
/// Service = version.Service,
/// VersionId = version.VersionId,
/// Role = "roles/iap.httpsResourceAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Iap.Inputs.AppEngineVersionIamBindingConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iap.NewAppEngineVersionIamBinding(ctx, "binding", &iap.AppEngineVersionIamBindingArgs{
/// Project:   pulumi.Any(version.Project),
/// AppId:     pulumi.Any(version.Project),
/// Service:   pulumi.Any(version.Service),
/// VersionId: pulumi.Any(version.VersionId),
/// Role:      pulumi.String("roles/iap.httpsResourceAccessor"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &iap.AppEngineVersionIamBindingConditionArgs{
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
/// import com.pulumi.gcp.iap.AppEngineVersionIamBinding;
/// import com.pulumi.gcp.iap.AppEngineVersionIamBindingArgs;
/// import com.pulumi.gcp.iap.inputs.AppEngineVersionIamBindingConditionArgs;
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
/// var binding = new AppEngineVersionIamBinding("binding", AppEngineVersionIamBindingArgs.builder()
/// .project(version.project())
/// .appId(version.project())
/// .service(version.service())
/// .versionId(version.versionId())
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .condition(AppEngineVersionIamBindingConditionArgs.builder()
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
/// type: gcp:iap:AppEngineVersionIamBinding
/// properties:
/// project: ${version.project}
/// appId: ${version.project}
/// service: ${version.service}
/// versionId: ${version.versionId}
/// role: roles/iap.httpsResourceAccessor
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.iap.AppEngineVersionIamMember
/// " pulumi-lang-dotnet=" gcp.iap.AppEngineVersionIamMember
/// " pulumi-lang-go=" iap.AppEngineVersionIamMember
/// " pulumi-lang-python=" iap.AppEngineVersionIamMember
/// " pulumi-lang-yaml=" gcp.iap.AppEngineVersionIamMember
/// " pulumi-lang-java=" gcp.iap.AppEngineVersionIamMember
/// "> gcp.iap.AppEngineVersionIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.AppEngineVersionIamMember("member", {
/// project: version.project,
/// appId: version.project,
/// service: version.service,
/// versionId: version.versionId,
/// role: "roles/iap.httpsResourceAccessor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.AppEngineVersionIamMember("member",
/// project=version["project"],
/// app_id=version["project"],
/// service=version["service"],
/// version_id=version["versionId"],
/// role="roles/iap.httpsResourceAccessor",
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
/// var member = new Gcp.Iap.AppEngineVersionIamMember("member", new()
/// {
/// Project = version.Project,
/// AppId = version.Project,
/// Service = version.Service,
/// VersionId = version.VersionId,
/// Role = "roles/iap.httpsResourceAccessor",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iap.NewAppEngineVersionIamMember(ctx, "member", &iap.AppEngineVersionIamMemberArgs{
/// Project:   pulumi.Any(version.Project),
/// AppId:     pulumi.Any(version.Project),
/// Service:   pulumi.Any(version.Service),
/// VersionId: pulumi.Any(version.VersionId),
/// Role:      pulumi.String("roles/iap.httpsResourceAccessor"),
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
/// import com.pulumi.gcp.iap.AppEngineVersionIamMember;
/// import com.pulumi.gcp.iap.AppEngineVersionIamMemberArgs;
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
/// var member = new AppEngineVersionIamMember("member", AppEngineVersionIamMemberArgs.builder()
/// .project(version.project())
/// .appId(version.project())
/// .service(version.service())
/// .versionId(version.versionId())
/// .role("roles/iap.httpsResourceAccessor")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:iap:AppEngineVersionIamMember
/// properties:
/// project: ${version.project}
/// appId: ${version.project}
/// service: ${version.service}
/// versionId: ${version.versionId}
/// role: roles/iap.httpsResourceAccessor
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
/// const member = new gcp.iap.AppEngineVersionIamMember("member", {
/// project: version.project,
/// appId: version.project,
/// service: version.service,
/// versionId: version.versionId,
/// role: "roles/iap.httpsResourceAccessor",
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
/// member = gcp.iap.AppEngineVersionIamMember("member",
/// project=version["project"],
/// app_id=version["project"],
/// service=version["service"],
/// version_id=version["versionId"],
/// role="roles/iap.httpsResourceAccessor",
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
/// var member = new Gcp.Iap.AppEngineVersionIamMember("member", new()
/// {
/// Project = version.Project,
/// AppId = version.Project,
/// Service = version.Service,
/// VersionId = version.VersionId,
/// Role = "roles/iap.httpsResourceAccessor",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Iap.Inputs.AppEngineVersionIamMemberConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iap.NewAppEngineVersionIamMember(ctx, "member", &iap.AppEngineVersionIamMemberArgs{
/// Project:   pulumi.Any(version.Project),
/// AppId:     pulumi.Any(version.Project),
/// Service:   pulumi.Any(version.Service),
/// VersionId: pulumi.Any(version.VersionId),
/// Role:      pulumi.String("roles/iap.httpsResourceAccessor"),
/// Member:    pulumi.String("user:jane@example.com"),
/// Condition: &iap.AppEngineVersionIamMemberConditionArgs{
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
/// import com.pulumi.gcp.iap.AppEngineVersionIamMember;
/// import com.pulumi.gcp.iap.AppEngineVersionIamMemberArgs;
/// import com.pulumi.gcp.iap.inputs.AppEngineVersionIamMemberConditionArgs;
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
/// var member = new AppEngineVersionIamMember("member", AppEngineVersionIamMemberArgs.builder()
/// .project(version.project())
/// .appId(version.project())
/// .service(version.service())
/// .versionId(version.versionId())
/// .role("roles/iap.httpsResourceAccessor")
/// .member("user:jane@example.com")
/// .condition(AppEngineVersionIamMemberConditionArgs.builder()
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
/// type: gcp:iap:AppEngineVersionIamMember
/// properties:
/// project: ${version.project}
/// appId: ${version.project}
/// service: ${version.service}
/// versionId: ${version.versionId}
/// role: roles/iap.httpsResourceAccessor
/// member: user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Identity-Aware Proxy AppEngineVersion
///
/// Three different resources help you manage your IAM policy for Identity-Aware Proxy AppEngineVersion. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.iap.AppEngineVersionIamPolicy`" pulumi-lang-dotnet="`gcp.iap.AppEngineVersionIamPolicy`" pulumi-lang-go="`iap.AppEngineVersionIamPolicy`" pulumi-lang-python="`iap.AppEngineVersionIamPolicy`" pulumi-lang-yaml="`gcp.iap.AppEngineVersionIamPolicy`" pulumi-lang-java="`gcp.iap.AppEngineVersionIamPolicy`">`gcp.iap.AppEngineVersionIamPolicy`</span>: Authoritative. Sets the IAM policy for the appengineversion and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.iap.AppEngineVersionIamBinding`" pulumi-lang-dotnet="`gcp.iap.AppEngineVersionIamBinding`" pulumi-lang-go="`iap.AppEngineVersionIamBinding`" pulumi-lang-python="`iap.AppEngineVersionIamBinding`" pulumi-lang-yaml="`gcp.iap.AppEngineVersionIamBinding`" pulumi-lang-java="`gcp.iap.AppEngineVersionIamBinding`">`gcp.iap.AppEngineVersionIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the appengineversion are preserved.
/// * <span pulumi-lang-nodejs="`gcp.iap.AppEngineVersionIamMember`" pulumi-lang-dotnet="`gcp.iap.AppEngineVersionIamMember`" pulumi-lang-go="`iap.AppEngineVersionIamMember`" pulumi-lang-python="`iap.AppEngineVersionIamMember`" pulumi-lang-yaml="`gcp.iap.AppEngineVersionIamMember`" pulumi-lang-java="`gcp.iap.AppEngineVersionIamMember`">`gcp.iap.AppEngineVersionIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the appengineversion are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.iap.AppEngineVersionIamPolicy`" pulumi-lang-dotnet="`gcp.iap.AppEngineVersionIamPolicy`" pulumi-lang-go="`iap.AppEngineVersionIamPolicy`" pulumi-lang-python="`iap.AppEngineVersionIamPolicy`" pulumi-lang-yaml="`gcp.iap.AppEngineVersionIamPolicy`" pulumi-lang-java="`gcp.iap.AppEngineVersionIamPolicy`">`gcp.iap.AppEngineVersionIamPolicy`</span>: Retrieves the IAM policy for the appengineversion
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iap.AppEngineVersionIamPolicy`" pulumi-lang-dotnet="`gcp.iap.AppEngineVersionIamPolicy`" pulumi-lang-go="`iap.AppEngineVersionIamPolicy`" pulumi-lang-python="`iap.AppEngineVersionIamPolicy`" pulumi-lang-yaml="`gcp.iap.AppEngineVersionIamPolicy`" pulumi-lang-java="`gcp.iap.AppEngineVersionIamPolicy`">`gcp.iap.AppEngineVersionIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.iap.AppEngineVersionIamBinding`" pulumi-lang-dotnet="`gcp.iap.AppEngineVersionIamBinding`" pulumi-lang-go="`iap.AppEngineVersionIamBinding`" pulumi-lang-python="`iap.AppEngineVersionIamBinding`" pulumi-lang-yaml="`gcp.iap.AppEngineVersionIamBinding`" pulumi-lang-java="`gcp.iap.AppEngineVersionIamBinding`">`gcp.iap.AppEngineVersionIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.iap.AppEngineVersionIamMember`" pulumi-lang-dotnet="`gcp.iap.AppEngineVersionIamMember`" pulumi-lang-go="`iap.AppEngineVersionIamMember`" pulumi-lang-python="`iap.AppEngineVersionIamMember`" pulumi-lang-yaml="`gcp.iap.AppEngineVersionIamMember`" pulumi-lang-java="`gcp.iap.AppEngineVersionIamMember`">`gcp.iap.AppEngineVersionIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iap.AppEngineVersionIamBinding`" pulumi-lang-dotnet="`gcp.iap.AppEngineVersionIamBinding`" pulumi-lang-go="`iap.AppEngineVersionIamBinding`" pulumi-lang-python="`iap.AppEngineVersionIamBinding`" pulumi-lang-yaml="`gcp.iap.AppEngineVersionIamBinding`" pulumi-lang-java="`gcp.iap.AppEngineVersionIamBinding`">`gcp.iap.AppEngineVersionIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.iap.AppEngineVersionIamMember`" pulumi-lang-dotnet="`gcp.iap.AppEngineVersionIamMember`" pulumi-lang-go="`iap.AppEngineVersionIamMember`" pulumi-lang-python="`iap.AppEngineVersionIamMember`" pulumi-lang-yaml="`gcp.iap.AppEngineVersionIamMember`" pulumi-lang-java="`gcp.iap.AppEngineVersionIamMember`">`gcp.iap.AppEngineVersionIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.iap.AppEngineVersionIamPolicy
/// " pulumi-lang-dotnet=" gcp.iap.AppEngineVersionIamPolicy
/// " pulumi-lang-go=" iap.AppEngineVersionIamPolicy
/// " pulumi-lang-python=" iap.AppEngineVersionIamPolicy
/// " pulumi-lang-yaml=" gcp.iap.AppEngineVersionIamPolicy
/// " pulumi-lang-java=" gcp.iap.AppEngineVersionIamPolicy
/// "> gcp.iap.AppEngineVersionIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/iap.httpsResourceAccessor",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.iap.AppEngineVersionIamPolicy("policy", {
/// project: version.project,
/// appId: version.project,
/// service: version.service,
/// versionId: version.versionId,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/iap.httpsResourceAccessor",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.iap.AppEngineVersionIamPolicy("policy",
/// project=version["project"],
/// app_id=version["project"],
/// service=version["service"],
/// version_id=version["versionId"],
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
/// Role = "roles/iap.httpsResourceAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Iap.AppEngineVersionIamPolicy("policy", new()
/// {
/// Project = version.Project,
/// AppId = version.Project,
/// Service = version.Service,
/// VersionId = version.VersionId,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/iap.httpsResourceAccessor",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iap.NewAppEngineVersionIamPolicy(ctx, "policy", &iap.AppEngineVersionIamPolicyArgs{
/// Project:    pulumi.Any(version.Project),
/// AppId:      pulumi.Any(version.Project),
/// Service:    pulumi.Any(version.Service),
/// VersionId:  pulumi.Any(version.VersionId),
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
/// import com.pulumi.gcp.iap.AppEngineVersionIamPolicy;
/// import com.pulumi.gcp.iap.AppEngineVersionIamPolicyArgs;
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
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new AppEngineVersionIamPolicy("policy", AppEngineVersionIamPolicyArgs.builder()
/// .project(version.project())
/// .appId(version.project())
/// .service(version.service())
/// .versionId(version.versionId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:iap:AppEngineVersionIamPolicy
/// properties:
/// project: ${version.project}
/// appId: ${version.project}
/// service: ${version.service}
/// versionId: ${version.versionId}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/iap.httpsResourceAccessor
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
/// role: "roles/iap.httpsResourceAccessor",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const policy = new gcp.iap.AppEngineVersionIamPolicy("policy", {
/// project: version.project,
/// appId: version.project,
/// service: version.service,
/// versionId: version.versionId,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/iap.httpsResourceAccessor",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }])
/// policy = gcp.iap.AppEngineVersionIamPolicy("policy",
/// project=version["project"],
/// app_id=version["project"],
/// service=version["service"],
/// version_id=version["versionId"],
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
/// Role = "roles/iap.httpsResourceAccessor",
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
/// var policy = new Gcp.Iap.AppEngineVersionIamPolicy("policy", new()
/// {
/// Project = version.Project,
/// AppId = version.Project,
/// Service = version.Service,
/// VersionId = version.VersionId,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/iap.httpsResourceAccessor",
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
/// _, err = iap.NewAppEngineVersionIamPolicy(ctx, "policy", &iap.AppEngineVersionIamPolicyArgs{
/// Project:    pulumi.Any(version.Project),
/// AppId:      pulumi.Any(version.Project),
/// Service:    pulumi.Any(version.Service),
/// VersionId:  pulumi.Any(version.VersionId),
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
/// import com.pulumi.gcp.iap.AppEngineVersionIamPolicy;
/// import com.pulumi.gcp.iap.AppEngineVersionIamPolicyArgs;
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
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var policy = new AppEngineVersionIamPolicy("policy", AppEngineVersionIamPolicyArgs.builder()
/// .project(version.project())
/// .appId(version.project())
/// .service(version.service())
/// .versionId(version.versionId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:iap:AppEngineVersionIamPolicy
/// properties:
/// project: ${version.project}
/// appId: ${version.project}
/// service: ${version.service}
/// versionId: ${version.versionId}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/iap.httpsResourceAccessor
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.iap.AppEngineVersionIamBinding
/// " pulumi-lang-dotnet=" gcp.iap.AppEngineVersionIamBinding
/// " pulumi-lang-go=" iap.AppEngineVersionIamBinding
/// " pulumi-lang-python=" iap.AppEngineVersionIamBinding
/// " pulumi-lang-yaml=" gcp.iap.AppEngineVersionIamBinding
/// " pulumi-lang-java=" gcp.iap.AppEngineVersionIamBinding
/// "> gcp.iap.AppEngineVersionIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.AppEngineVersionIamBinding("binding", {
/// project: version.project,
/// appId: version.project,
/// service: version.service,
/// versionId: version.versionId,
/// role: "roles/iap.httpsResourceAccessor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.AppEngineVersionIamBinding("binding",
/// project=version["project"],
/// app_id=version["project"],
/// service=version["service"],
/// version_id=version["versionId"],
/// role="roles/iap.httpsResourceAccessor",
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
/// var binding = new Gcp.Iap.AppEngineVersionIamBinding("binding", new()
/// {
/// Project = version.Project,
/// AppId = version.Project,
/// Service = version.Service,
/// VersionId = version.VersionId,
/// Role = "roles/iap.httpsResourceAccessor",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iap.NewAppEngineVersionIamBinding(ctx, "binding", &iap.AppEngineVersionIamBindingArgs{
/// Project:   pulumi.Any(version.Project),
/// AppId:     pulumi.Any(version.Project),
/// Service:   pulumi.Any(version.Service),
/// VersionId: pulumi.Any(version.VersionId),
/// Role:      pulumi.String("roles/iap.httpsResourceAccessor"),
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
/// import com.pulumi.gcp.iap.AppEngineVersionIamBinding;
/// import com.pulumi.gcp.iap.AppEngineVersionIamBindingArgs;
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
/// var binding = new AppEngineVersionIamBinding("binding", AppEngineVersionIamBindingArgs.builder()
/// .project(version.project())
/// .appId(version.project())
/// .service(version.service())
/// .versionId(version.versionId())
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:iap:AppEngineVersionIamBinding
/// properties:
/// project: ${version.project}
/// appId: ${version.project}
/// service: ${version.service}
/// versionId: ${version.versionId}
/// role: roles/iap.httpsResourceAccessor
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
/// const binding = new gcp.iap.AppEngineVersionIamBinding("binding", {
/// project: version.project,
/// appId: version.project,
/// service: version.service,
/// versionId: version.versionId,
/// role: "roles/iap.httpsResourceAccessor",
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
/// binding = gcp.iap.AppEngineVersionIamBinding("binding",
/// project=version["project"],
/// app_id=version["project"],
/// service=version["service"],
/// version_id=version["versionId"],
/// role="roles/iap.httpsResourceAccessor",
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
/// var binding = new Gcp.Iap.AppEngineVersionIamBinding("binding", new()
/// {
/// Project = version.Project,
/// AppId = version.Project,
/// Service = version.Service,
/// VersionId = version.VersionId,
/// Role = "roles/iap.httpsResourceAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Iap.Inputs.AppEngineVersionIamBindingConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iap.NewAppEngineVersionIamBinding(ctx, "binding", &iap.AppEngineVersionIamBindingArgs{
/// Project:   pulumi.Any(version.Project),
/// AppId:     pulumi.Any(version.Project),
/// Service:   pulumi.Any(version.Service),
/// VersionId: pulumi.Any(version.VersionId),
/// Role:      pulumi.String("roles/iap.httpsResourceAccessor"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &iap.AppEngineVersionIamBindingConditionArgs{
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
/// import com.pulumi.gcp.iap.AppEngineVersionIamBinding;
/// import com.pulumi.gcp.iap.AppEngineVersionIamBindingArgs;
/// import com.pulumi.gcp.iap.inputs.AppEngineVersionIamBindingConditionArgs;
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
/// var binding = new AppEngineVersionIamBinding("binding", AppEngineVersionIamBindingArgs.builder()
/// .project(version.project())
/// .appId(version.project())
/// .service(version.service())
/// .versionId(version.versionId())
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .condition(AppEngineVersionIamBindingConditionArgs.builder()
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
/// type: gcp:iap:AppEngineVersionIamBinding
/// properties:
/// project: ${version.project}
/// appId: ${version.project}
/// service: ${version.service}
/// versionId: ${version.versionId}
/// role: roles/iap.httpsResourceAccessor
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.iap.AppEngineVersionIamMember
/// " pulumi-lang-dotnet=" gcp.iap.AppEngineVersionIamMember
/// " pulumi-lang-go=" iap.AppEngineVersionIamMember
/// " pulumi-lang-python=" iap.AppEngineVersionIamMember
/// " pulumi-lang-yaml=" gcp.iap.AppEngineVersionIamMember
/// " pulumi-lang-java=" gcp.iap.AppEngineVersionIamMember
/// "> gcp.iap.AppEngineVersionIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.AppEngineVersionIamMember("member", {
/// project: version.project,
/// appId: version.project,
/// service: version.service,
/// versionId: version.versionId,
/// role: "roles/iap.httpsResourceAccessor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.AppEngineVersionIamMember("member",
/// project=version["project"],
/// app_id=version["project"],
/// service=version["service"],
/// version_id=version["versionId"],
/// role="roles/iap.httpsResourceAccessor",
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
/// var member = new Gcp.Iap.AppEngineVersionIamMember("member", new()
/// {
/// Project = version.Project,
/// AppId = version.Project,
/// Service = version.Service,
/// VersionId = version.VersionId,
/// Role = "roles/iap.httpsResourceAccessor",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iap.NewAppEngineVersionIamMember(ctx, "member", &iap.AppEngineVersionIamMemberArgs{
/// Project:   pulumi.Any(version.Project),
/// AppId:     pulumi.Any(version.Project),
/// Service:   pulumi.Any(version.Service),
/// VersionId: pulumi.Any(version.VersionId),
/// Role:      pulumi.String("roles/iap.httpsResourceAccessor"),
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
/// import com.pulumi.gcp.iap.AppEngineVersionIamMember;
/// import com.pulumi.gcp.iap.AppEngineVersionIamMemberArgs;
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
/// var member = new AppEngineVersionIamMember("member", AppEngineVersionIamMemberArgs.builder()
/// .project(version.project())
/// .appId(version.project())
/// .service(version.service())
/// .versionId(version.versionId())
/// .role("roles/iap.httpsResourceAccessor")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:iap:AppEngineVersionIamMember
/// properties:
/// project: ${version.project}
/// appId: ${version.project}
/// service: ${version.service}
/// versionId: ${version.versionId}
/// role: roles/iap.httpsResourceAccessor
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
/// const member = new gcp.iap.AppEngineVersionIamMember("member", {
/// project: version.project,
/// appId: version.project,
/// service: version.service,
/// versionId: version.versionId,
/// role: "roles/iap.httpsResourceAccessor",
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
/// member = gcp.iap.AppEngineVersionIamMember("member",
/// project=version["project"],
/// app_id=version["project"],
/// service=version["service"],
/// version_id=version["versionId"],
/// role="roles/iap.httpsResourceAccessor",
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
/// var member = new Gcp.Iap.AppEngineVersionIamMember("member", new()
/// {
/// Project = version.Project,
/// AppId = version.Project,
/// Service = version.Service,
/// VersionId = version.VersionId,
/// Role = "roles/iap.httpsResourceAccessor",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Iap.Inputs.AppEngineVersionIamMemberConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iap.NewAppEngineVersionIamMember(ctx, "member", &iap.AppEngineVersionIamMemberArgs{
/// Project:   pulumi.Any(version.Project),
/// AppId:     pulumi.Any(version.Project),
/// Service:   pulumi.Any(version.Service),
/// VersionId: pulumi.Any(version.VersionId),
/// Role:      pulumi.String("roles/iap.httpsResourceAccessor"),
/// Member:    pulumi.String("user:jane@example.com"),
/// Condition: &iap.AppEngineVersionIamMemberConditionArgs{
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
/// import com.pulumi.gcp.iap.AppEngineVersionIamMember;
/// import com.pulumi.gcp.iap.AppEngineVersionIamMemberArgs;
/// import com.pulumi.gcp.iap.inputs.AppEngineVersionIamMemberConditionArgs;
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
/// var member = new AppEngineVersionIamMember("member", AppEngineVersionIamMemberArgs.builder()
/// .project(version.project())
/// .appId(version.project())
/// .service(version.service())
/// .versionId(version.versionId())
/// .role("roles/iap.httpsResourceAccessor")
/// .member("user:jane@example.com")
/// .condition(AppEngineVersionIamMemberConditionArgs.builder()
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
/// type: gcp:iap:AppEngineVersionIamMember
/// properties:
/// project: ${version.project}
/// appId: ${version.project}
/// service: ${version.service}
/// versionId: ${version.versionId}
/// role: roles/iap.httpsResourceAccessor
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
/// * projects/{{project}}/iap_web/appengine-{{appId}}/services/{{service}}/versions/{{versionId}}
///
/// * {{project}}/{{appId}}/{{service}}/{{versionId}}
///
/// * {{appId}}/{{service}}/{{versionId}}
///
/// * {{version}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Identity-Aware Proxy appengineversion IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/appEngineVersionIamPolicy:AppEngineVersionIamPolicy editor "projects/{{project}}/iap_web/appengine-{{appId}}/services/{{service}}/versions/{{versionId}} roles/iap.httpsResourceAccessor user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/appEngineVersionIamPolicy:AppEngineVersionIamPolicy editor "projects/{{project}}/iap_web/appengine-{{appId}}/services/{{service}}/versions/{{versionId}} roles/iap.httpsResourceAccessor"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/appEngineVersionIamPolicy:AppEngineVersionIamPolicy editor projects/{{project}}/iap_web/appengine-{{appId}}/services/{{service}}/versions/{{versionId}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class AppEngineVersionIamPolicy extends CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> appId;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// Service id of the App Engine application Used to find the parent resource to bind the IAM policy to
  late final Output<String> service;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> versionId;

  AppEngineVersionIamPolicy(
    String name, {
    AppEngineVersionIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:iap/appEngineVersionIamPolicy:AppEngineVersionIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appId = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.policyData = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.service = Output.createUnknown<String>();
    this.versionId = Output.createUnknown<String>();
  }
}
