import 'package:pulumi/pulumi.dart';
import 'regional_secret_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Secret Manager RegionalSecret. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.secretmanager.RegionalSecretIamPolicy`" pulumi-lang-dotnet="`gcp.secretmanager.RegionalSecretIamPolicy`" pulumi-lang-go="`secretmanager.RegionalSecretIamPolicy`" pulumi-lang-python="`secretmanager.RegionalSecretIamPolicy`" pulumi-lang-yaml="`gcp.secretmanager.RegionalSecretIamPolicy`" pulumi-lang-java="`gcp.secretmanager.RegionalSecretIamPolicy`">`gcp.secretmanager.RegionalSecretIamPolicy`</span>: Authoritative. Sets the IAM policy for the regionalsecret and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.secretmanager.RegionalSecretIamBinding`" pulumi-lang-dotnet="`gcp.secretmanager.RegionalSecretIamBinding`" pulumi-lang-go="`secretmanager.RegionalSecretIamBinding`" pulumi-lang-python="`secretmanager.RegionalSecretIamBinding`" pulumi-lang-yaml="`gcp.secretmanager.RegionalSecretIamBinding`" pulumi-lang-java="`gcp.secretmanager.RegionalSecretIamBinding`">`gcp.secretmanager.RegionalSecretIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the regionalsecret are preserved.
/// * <span pulumi-lang-nodejs="`gcp.secretmanager.RegionalSecretIamMember`" pulumi-lang-dotnet="`gcp.secretmanager.RegionalSecretIamMember`" pulumi-lang-go="`secretmanager.RegionalSecretIamMember`" pulumi-lang-python="`secretmanager.RegionalSecretIamMember`" pulumi-lang-yaml="`gcp.secretmanager.RegionalSecretIamMember`" pulumi-lang-java="`gcp.secretmanager.RegionalSecretIamMember`">`gcp.secretmanager.RegionalSecretIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the regionalsecret are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.secretmanager.RegionalSecretIamPolicy`" pulumi-lang-dotnet="`gcp.secretmanager.RegionalSecretIamPolicy`" pulumi-lang-go="`secretmanager.RegionalSecretIamPolicy`" pulumi-lang-python="`secretmanager.RegionalSecretIamPolicy`" pulumi-lang-yaml="`gcp.secretmanager.RegionalSecretIamPolicy`" pulumi-lang-java="`gcp.secretmanager.RegionalSecretIamPolicy`">`gcp.secretmanager.RegionalSecretIamPolicy`</span>: Retrieves the IAM policy for the regionalsecret
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.secretmanager.RegionalSecretIamPolicy`" pulumi-lang-dotnet="`gcp.secretmanager.RegionalSecretIamPolicy`" pulumi-lang-go="`secretmanager.RegionalSecretIamPolicy`" pulumi-lang-python="`secretmanager.RegionalSecretIamPolicy`" pulumi-lang-yaml="`gcp.secretmanager.RegionalSecretIamPolicy`" pulumi-lang-java="`gcp.secretmanager.RegionalSecretIamPolicy`">`gcp.secretmanager.RegionalSecretIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.secretmanager.RegionalSecretIamBinding`" pulumi-lang-dotnet="`gcp.secretmanager.RegionalSecretIamBinding`" pulumi-lang-go="`secretmanager.RegionalSecretIamBinding`" pulumi-lang-python="`secretmanager.RegionalSecretIamBinding`" pulumi-lang-yaml="`gcp.secretmanager.RegionalSecretIamBinding`" pulumi-lang-java="`gcp.secretmanager.RegionalSecretIamBinding`">`gcp.secretmanager.RegionalSecretIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.secretmanager.RegionalSecretIamMember`" pulumi-lang-dotnet="`gcp.secretmanager.RegionalSecretIamMember`" pulumi-lang-go="`secretmanager.RegionalSecretIamMember`" pulumi-lang-python="`secretmanager.RegionalSecretIamMember`" pulumi-lang-yaml="`gcp.secretmanager.RegionalSecretIamMember`" pulumi-lang-java="`gcp.secretmanager.RegionalSecretIamMember`">`gcp.secretmanager.RegionalSecretIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.secretmanager.RegionalSecretIamBinding`" pulumi-lang-dotnet="`gcp.secretmanager.RegionalSecretIamBinding`" pulumi-lang-go="`secretmanager.RegionalSecretIamBinding`" pulumi-lang-python="`secretmanager.RegionalSecretIamBinding`" pulumi-lang-yaml="`gcp.secretmanager.RegionalSecretIamBinding`" pulumi-lang-java="`gcp.secretmanager.RegionalSecretIamBinding`">`gcp.secretmanager.RegionalSecretIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.secretmanager.RegionalSecretIamMember`" pulumi-lang-dotnet="`gcp.secretmanager.RegionalSecretIamMember`" pulumi-lang-go="`secretmanager.RegionalSecretIamMember`" pulumi-lang-python="`secretmanager.RegionalSecretIamMember`" pulumi-lang-yaml="`gcp.secretmanager.RegionalSecretIamMember`" pulumi-lang-java="`gcp.secretmanager.RegionalSecretIamMember`">`gcp.secretmanager.RegionalSecretIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.secretmanager.RegionalSecretIamPolicy
/// " pulumi-lang-dotnet=" gcp.secretmanager.RegionalSecretIamPolicy
/// " pulumi-lang-go=" secretmanager.RegionalSecretIamPolicy
/// " pulumi-lang-python=" secretmanager.RegionalSecretIamPolicy
/// " pulumi-lang-yaml=" gcp.secretmanager.RegionalSecretIamPolicy
/// " pulumi-lang-java=" gcp.secretmanager.RegionalSecretIamPolicy
/// "> gcp.secretmanager.RegionalSecretIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/secretmanager.secretAccessor",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.secretmanager.RegionalSecretIamPolicy("policy", {
/// project: regional_secret_basic.project,
/// location: regional_secret_basic.location,
/// secretId: regional_secret_basic.secretId,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/secretmanager.secretAccessor",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.secretmanager.RegionalSecretIamPolicy("policy",
/// project=regional_secret_basic["project"],
/// location=regional_secret_basic["location"],
/// secret_id=regional_secret_basic["secretId"],
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
/// Role = "roles/secretmanager.secretAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.SecretManager.RegionalSecretIamPolicy("policy", new()
/// {
/// Project = regional_secret_basic.Project,
/// Location = regional_secret_basic.Location,
/// SecretId = regional_secret_basic.SecretId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/secretmanager.secretAccessor",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = secretmanager.NewRegionalSecretIamPolicy(ctx, "policy", &secretmanager.RegionalSecretIamPolicyArgs{
/// Project:    pulumi.Any(regional_secret_basic.Project),
/// Location:   pulumi.Any(regional_secret_basic.Location),
/// SecretId:   pulumi.Any(regional_secret_basic.SecretId),
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
/// import com.pulumi.gcp.secretmanager.RegionalSecretIamPolicy;
/// import com.pulumi.gcp.secretmanager.RegionalSecretIamPolicyArgs;
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
/// .role("roles/secretmanager.secretAccessor")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new RegionalSecretIamPolicy("policy", RegionalSecretIamPolicyArgs.builder()
/// .project(regional_secret_basic.project())
/// .location(regional_secret_basic.location())
/// .secretId(regional_secret_basic.secretId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:secretmanager:RegionalSecretIamPolicy
/// properties:
/// project: ${["regional-secret-basic"].project}
/// location: ${["regional-secret-basic"].location}
/// secretId: ${["regional-secret-basic"].secretId}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/secretmanager.secretAccessor
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
/// role: "roles/secretmanager.secretAccessor",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const policy = new gcp.secretmanager.RegionalSecretIamPolicy("policy", {
/// project: regional_secret_basic.project,
/// location: regional_secret_basic.location,
/// secretId: regional_secret_basic.secretId,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/secretmanager.secretAccessor",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }])
/// policy = gcp.secretmanager.RegionalSecretIamPolicy("policy",
/// project=regional_secret_basic["project"],
/// location=regional_secret_basic["location"],
/// secret_id=regional_secret_basic["secretId"],
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
/// Role = "roles/secretmanager.secretAccessor",
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
/// var policy = new Gcp.SecretManager.RegionalSecretIamPolicy("policy", new()
/// {
/// Project = regional_secret_basic.Project,
/// Location = regional_secret_basic.Location,
/// SecretId = regional_secret_basic.SecretId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/secretmanager.secretAccessor",
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
/// _, err = secretmanager.NewRegionalSecretIamPolicy(ctx, "policy", &secretmanager.RegionalSecretIamPolicyArgs{
/// Project:    pulumi.Any(regional_secret_basic.Project),
/// Location:   pulumi.Any(regional_secret_basic.Location),
/// SecretId:   pulumi.Any(regional_secret_basic.SecretId),
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
/// import com.pulumi.gcp.secretmanager.RegionalSecretIamPolicy;
/// import com.pulumi.gcp.secretmanager.RegionalSecretIamPolicyArgs;
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
/// .role("roles/secretmanager.secretAccessor")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var policy = new RegionalSecretIamPolicy("policy", RegionalSecretIamPolicyArgs.builder()
/// .project(regional_secret_basic.project())
/// .location(regional_secret_basic.location())
/// .secretId(regional_secret_basic.secretId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:secretmanager:RegionalSecretIamPolicy
/// properties:
/// project: ${["regional-secret-basic"].project}
/// location: ${["regional-secret-basic"].location}
/// secretId: ${["regional-secret-basic"].secretId}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/secretmanager.secretAccessor
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.secretmanager.RegionalSecretIamBinding
/// " pulumi-lang-dotnet=" gcp.secretmanager.RegionalSecretIamBinding
/// " pulumi-lang-go=" secretmanager.RegionalSecretIamBinding
/// " pulumi-lang-python=" secretmanager.RegionalSecretIamBinding
/// " pulumi-lang-yaml=" gcp.secretmanager.RegionalSecretIamBinding
/// " pulumi-lang-java=" gcp.secretmanager.RegionalSecretIamBinding
/// "> gcp.secretmanager.RegionalSecretIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.secretmanager.RegionalSecretIamBinding("binding", {
/// project: regional_secret_basic.project,
/// location: regional_secret_basic.location,
/// secretId: regional_secret_basic.secretId,
/// role: "roles/secretmanager.secretAccessor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.secretmanager.RegionalSecretIamBinding("binding",
/// project=regional_secret_basic["project"],
/// location=regional_secret_basic["location"],
/// secret_id=regional_secret_basic["secretId"],
/// role="roles/secretmanager.secretAccessor",
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
/// var binding = new Gcp.SecretManager.RegionalSecretIamBinding("binding", new()
/// {
/// Project = regional_secret_basic.Project,
/// Location = regional_secret_basic.Location,
/// SecretId = regional_secret_basic.SecretId,
/// Role = "roles/secretmanager.secretAccessor",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := secretmanager.NewRegionalSecretIamBinding(ctx, "binding", &secretmanager.RegionalSecretIamBindingArgs{
/// Project:  pulumi.Any(regional_secret_basic.Project),
/// Location: pulumi.Any(regional_secret_basic.Location),
/// SecretId: pulumi.Any(regional_secret_basic.SecretId),
/// Role:     pulumi.String("roles/secretmanager.secretAccessor"),
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
/// import com.pulumi.gcp.secretmanager.RegionalSecretIamBinding;
/// import com.pulumi.gcp.secretmanager.RegionalSecretIamBindingArgs;
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
/// var binding = new RegionalSecretIamBinding("binding", RegionalSecretIamBindingArgs.builder()
/// .project(regional_secret_basic.project())
/// .location(regional_secret_basic.location())
/// .secretId(regional_secret_basic.secretId())
/// .role("roles/secretmanager.secretAccessor")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:secretmanager:RegionalSecretIamBinding
/// properties:
/// project: ${["regional-secret-basic"].project}
/// location: ${["regional-secret-basic"].location}
/// secretId: ${["regional-secret-basic"].secretId}
/// role: roles/secretmanager.secretAccessor
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
/// const binding = new gcp.secretmanager.RegionalSecretIamBinding("binding", {
/// project: regional_secret_basic.project,
/// location: regional_secret_basic.location,
/// secretId: regional_secret_basic.secretId,
/// role: "roles/secretmanager.secretAccessor",
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
/// binding = gcp.secretmanager.RegionalSecretIamBinding("binding",
/// project=regional_secret_basic["project"],
/// location=regional_secret_basic["location"],
/// secret_id=regional_secret_basic["secretId"],
/// role="roles/secretmanager.secretAccessor",
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
/// var binding = new Gcp.SecretManager.RegionalSecretIamBinding("binding", new()
/// {
/// Project = regional_secret_basic.Project,
/// Location = regional_secret_basic.Location,
/// SecretId = regional_secret_basic.SecretId,
/// Role = "roles/secretmanager.secretAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.SecretManager.Inputs.RegionalSecretIamBindingConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := secretmanager.NewRegionalSecretIamBinding(ctx, "binding", &secretmanager.RegionalSecretIamBindingArgs{
/// Project:  pulumi.Any(regional_secret_basic.Project),
/// Location: pulumi.Any(regional_secret_basic.Location),
/// SecretId: pulumi.Any(regional_secret_basic.SecretId),
/// Role:     pulumi.String("roles/secretmanager.secretAccessor"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &secretmanager.RegionalSecretIamBindingConditionArgs{
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
/// import com.pulumi.gcp.secretmanager.RegionalSecretIamBinding;
/// import com.pulumi.gcp.secretmanager.RegionalSecretIamBindingArgs;
/// import com.pulumi.gcp.secretmanager.inputs.RegionalSecretIamBindingConditionArgs;
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
/// var binding = new RegionalSecretIamBinding("binding", RegionalSecretIamBindingArgs.builder()
/// .project(regional_secret_basic.project())
/// .location(regional_secret_basic.location())
/// .secretId(regional_secret_basic.secretId())
/// .role("roles/secretmanager.secretAccessor")
/// .members("user:jane@example.com")
/// .condition(RegionalSecretIamBindingConditionArgs.builder()
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
/// type: gcp:secretmanager:RegionalSecretIamBinding
/// properties:
/// project: ${["regional-secret-basic"].project}
/// location: ${["regional-secret-basic"].location}
/// secretId: ${["regional-secret-basic"].secretId}
/// role: roles/secretmanager.secretAccessor
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.secretmanager.RegionalSecretIamMember
/// " pulumi-lang-dotnet=" gcp.secretmanager.RegionalSecretIamMember
/// " pulumi-lang-go=" secretmanager.RegionalSecretIamMember
/// " pulumi-lang-python=" secretmanager.RegionalSecretIamMember
/// " pulumi-lang-yaml=" gcp.secretmanager.RegionalSecretIamMember
/// " pulumi-lang-java=" gcp.secretmanager.RegionalSecretIamMember
/// "> gcp.secretmanager.RegionalSecretIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.secretmanager.RegionalSecretIamMember("member", {
/// project: regional_secret_basic.project,
/// location: regional_secret_basic.location,
/// secretId: regional_secret_basic.secretId,
/// role: "roles/secretmanager.secretAccessor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.secretmanager.RegionalSecretIamMember("member",
/// project=regional_secret_basic["project"],
/// location=regional_secret_basic["location"],
/// secret_id=regional_secret_basic["secretId"],
/// role="roles/secretmanager.secretAccessor",
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
/// var member = new Gcp.SecretManager.RegionalSecretIamMember("member", new()
/// {
/// Project = regional_secret_basic.Project,
/// Location = regional_secret_basic.Location,
/// SecretId = regional_secret_basic.SecretId,
/// Role = "roles/secretmanager.secretAccessor",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := secretmanager.NewRegionalSecretIamMember(ctx, "member", &secretmanager.RegionalSecretIamMemberArgs{
/// Project:  pulumi.Any(regional_secret_basic.Project),
/// Location: pulumi.Any(regional_secret_basic.Location),
/// SecretId: pulumi.Any(regional_secret_basic.SecretId),
/// Role:     pulumi.String("roles/secretmanager.secretAccessor"),
/// Member:   pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.secretmanager.RegionalSecretIamMember;
/// import com.pulumi.gcp.secretmanager.RegionalSecretIamMemberArgs;
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
/// var member = new RegionalSecretIamMember("member", RegionalSecretIamMemberArgs.builder()
/// .project(regional_secret_basic.project())
/// .location(regional_secret_basic.location())
/// .secretId(regional_secret_basic.secretId())
/// .role("roles/secretmanager.secretAccessor")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:secretmanager:RegionalSecretIamMember
/// properties:
/// project: ${["regional-secret-basic"].project}
/// location: ${["regional-secret-basic"].location}
/// secretId: ${["regional-secret-basic"].secretId}
/// role: roles/secretmanager.secretAccessor
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
/// const member = new gcp.secretmanager.RegionalSecretIamMember("member", {
/// project: regional_secret_basic.project,
/// location: regional_secret_basic.location,
/// secretId: regional_secret_basic.secretId,
/// role: "roles/secretmanager.secretAccessor",
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
/// member = gcp.secretmanager.RegionalSecretIamMember("member",
/// project=regional_secret_basic["project"],
/// location=regional_secret_basic["location"],
/// secret_id=regional_secret_basic["secretId"],
/// role="roles/secretmanager.secretAccessor",
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
/// var member = new Gcp.SecretManager.RegionalSecretIamMember("member", new()
/// {
/// Project = regional_secret_basic.Project,
/// Location = regional_secret_basic.Location,
/// SecretId = regional_secret_basic.SecretId,
/// Role = "roles/secretmanager.secretAccessor",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.SecretManager.Inputs.RegionalSecretIamMemberConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := secretmanager.NewRegionalSecretIamMember(ctx, "member", &secretmanager.RegionalSecretIamMemberArgs{
/// Project:  pulumi.Any(regional_secret_basic.Project),
/// Location: pulumi.Any(regional_secret_basic.Location),
/// SecretId: pulumi.Any(regional_secret_basic.SecretId),
/// Role:     pulumi.String("roles/secretmanager.secretAccessor"),
/// Member:   pulumi.String("user:jane@example.com"),
/// Condition: &secretmanager.RegionalSecretIamMemberConditionArgs{
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
/// import com.pulumi.gcp.secretmanager.RegionalSecretIamMember;
/// import com.pulumi.gcp.secretmanager.RegionalSecretIamMemberArgs;
/// import com.pulumi.gcp.secretmanager.inputs.RegionalSecretIamMemberConditionArgs;
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
/// var member = new RegionalSecretIamMember("member", RegionalSecretIamMemberArgs.builder()
/// .project(regional_secret_basic.project())
/// .location(regional_secret_basic.location())
/// .secretId(regional_secret_basic.secretId())
/// .role("roles/secretmanager.secretAccessor")
/// .member("user:jane@example.com")
/// .condition(RegionalSecretIamMemberConditionArgs.builder()
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
/// type: gcp:secretmanager:RegionalSecretIamMember
/// properties:
/// project: ${["regional-secret-basic"].project}
/// location: ${["regional-secret-basic"].location}
/// secretId: ${["regional-secret-basic"].secretId}
/// role: roles/secretmanager.secretAccessor
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
/// # IAM policy for Secret Manager RegionalSecret
///
/// Three different resources help you manage your IAM policy for Secret Manager RegionalSecret. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.secretmanager.RegionalSecretIamPolicy`" pulumi-lang-dotnet="`gcp.secretmanager.RegionalSecretIamPolicy`" pulumi-lang-go="`secretmanager.RegionalSecretIamPolicy`" pulumi-lang-python="`secretmanager.RegionalSecretIamPolicy`" pulumi-lang-yaml="`gcp.secretmanager.RegionalSecretIamPolicy`" pulumi-lang-java="`gcp.secretmanager.RegionalSecretIamPolicy`">`gcp.secretmanager.RegionalSecretIamPolicy`</span>: Authoritative. Sets the IAM policy for the regionalsecret and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.secretmanager.RegionalSecretIamBinding`" pulumi-lang-dotnet="`gcp.secretmanager.RegionalSecretIamBinding`" pulumi-lang-go="`secretmanager.RegionalSecretIamBinding`" pulumi-lang-python="`secretmanager.RegionalSecretIamBinding`" pulumi-lang-yaml="`gcp.secretmanager.RegionalSecretIamBinding`" pulumi-lang-java="`gcp.secretmanager.RegionalSecretIamBinding`">`gcp.secretmanager.RegionalSecretIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the regionalsecret are preserved.
/// * <span pulumi-lang-nodejs="`gcp.secretmanager.RegionalSecretIamMember`" pulumi-lang-dotnet="`gcp.secretmanager.RegionalSecretIamMember`" pulumi-lang-go="`secretmanager.RegionalSecretIamMember`" pulumi-lang-python="`secretmanager.RegionalSecretIamMember`" pulumi-lang-yaml="`gcp.secretmanager.RegionalSecretIamMember`" pulumi-lang-java="`gcp.secretmanager.RegionalSecretIamMember`">`gcp.secretmanager.RegionalSecretIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the regionalsecret are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.secretmanager.RegionalSecretIamPolicy`" pulumi-lang-dotnet="`gcp.secretmanager.RegionalSecretIamPolicy`" pulumi-lang-go="`secretmanager.RegionalSecretIamPolicy`" pulumi-lang-python="`secretmanager.RegionalSecretIamPolicy`" pulumi-lang-yaml="`gcp.secretmanager.RegionalSecretIamPolicy`" pulumi-lang-java="`gcp.secretmanager.RegionalSecretIamPolicy`">`gcp.secretmanager.RegionalSecretIamPolicy`</span>: Retrieves the IAM policy for the regionalsecret
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.secretmanager.RegionalSecretIamPolicy`" pulumi-lang-dotnet="`gcp.secretmanager.RegionalSecretIamPolicy`" pulumi-lang-go="`secretmanager.RegionalSecretIamPolicy`" pulumi-lang-python="`secretmanager.RegionalSecretIamPolicy`" pulumi-lang-yaml="`gcp.secretmanager.RegionalSecretIamPolicy`" pulumi-lang-java="`gcp.secretmanager.RegionalSecretIamPolicy`">`gcp.secretmanager.RegionalSecretIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.secretmanager.RegionalSecretIamBinding`" pulumi-lang-dotnet="`gcp.secretmanager.RegionalSecretIamBinding`" pulumi-lang-go="`secretmanager.RegionalSecretIamBinding`" pulumi-lang-python="`secretmanager.RegionalSecretIamBinding`" pulumi-lang-yaml="`gcp.secretmanager.RegionalSecretIamBinding`" pulumi-lang-java="`gcp.secretmanager.RegionalSecretIamBinding`">`gcp.secretmanager.RegionalSecretIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.secretmanager.RegionalSecretIamMember`" pulumi-lang-dotnet="`gcp.secretmanager.RegionalSecretIamMember`" pulumi-lang-go="`secretmanager.RegionalSecretIamMember`" pulumi-lang-python="`secretmanager.RegionalSecretIamMember`" pulumi-lang-yaml="`gcp.secretmanager.RegionalSecretIamMember`" pulumi-lang-java="`gcp.secretmanager.RegionalSecretIamMember`">`gcp.secretmanager.RegionalSecretIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.secretmanager.RegionalSecretIamBinding`" pulumi-lang-dotnet="`gcp.secretmanager.RegionalSecretIamBinding`" pulumi-lang-go="`secretmanager.RegionalSecretIamBinding`" pulumi-lang-python="`secretmanager.RegionalSecretIamBinding`" pulumi-lang-yaml="`gcp.secretmanager.RegionalSecretIamBinding`" pulumi-lang-java="`gcp.secretmanager.RegionalSecretIamBinding`">`gcp.secretmanager.RegionalSecretIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.secretmanager.RegionalSecretIamMember`" pulumi-lang-dotnet="`gcp.secretmanager.RegionalSecretIamMember`" pulumi-lang-go="`secretmanager.RegionalSecretIamMember`" pulumi-lang-python="`secretmanager.RegionalSecretIamMember`" pulumi-lang-yaml="`gcp.secretmanager.RegionalSecretIamMember`" pulumi-lang-java="`gcp.secretmanager.RegionalSecretIamMember`">`gcp.secretmanager.RegionalSecretIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.secretmanager.RegionalSecretIamPolicy
/// " pulumi-lang-dotnet=" gcp.secretmanager.RegionalSecretIamPolicy
/// " pulumi-lang-go=" secretmanager.RegionalSecretIamPolicy
/// " pulumi-lang-python=" secretmanager.RegionalSecretIamPolicy
/// " pulumi-lang-yaml=" gcp.secretmanager.RegionalSecretIamPolicy
/// " pulumi-lang-java=" gcp.secretmanager.RegionalSecretIamPolicy
/// "> gcp.secretmanager.RegionalSecretIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/secretmanager.secretAccessor",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.secretmanager.RegionalSecretIamPolicy("policy", {
/// project: regional_secret_basic.project,
/// location: regional_secret_basic.location,
/// secretId: regional_secret_basic.secretId,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/secretmanager.secretAccessor",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.secretmanager.RegionalSecretIamPolicy("policy",
/// project=regional_secret_basic["project"],
/// location=regional_secret_basic["location"],
/// secret_id=regional_secret_basic["secretId"],
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
/// Role = "roles/secretmanager.secretAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.SecretManager.RegionalSecretIamPolicy("policy", new()
/// {
/// Project = regional_secret_basic.Project,
/// Location = regional_secret_basic.Location,
/// SecretId = regional_secret_basic.SecretId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/secretmanager.secretAccessor",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = secretmanager.NewRegionalSecretIamPolicy(ctx, "policy", &secretmanager.RegionalSecretIamPolicyArgs{
/// Project:    pulumi.Any(regional_secret_basic.Project),
/// Location:   pulumi.Any(regional_secret_basic.Location),
/// SecretId:   pulumi.Any(regional_secret_basic.SecretId),
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
/// import com.pulumi.gcp.secretmanager.RegionalSecretIamPolicy;
/// import com.pulumi.gcp.secretmanager.RegionalSecretIamPolicyArgs;
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
/// .role("roles/secretmanager.secretAccessor")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new RegionalSecretIamPolicy("policy", RegionalSecretIamPolicyArgs.builder()
/// .project(regional_secret_basic.project())
/// .location(regional_secret_basic.location())
/// .secretId(regional_secret_basic.secretId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:secretmanager:RegionalSecretIamPolicy
/// properties:
/// project: ${["regional-secret-basic"].project}
/// location: ${["regional-secret-basic"].location}
/// secretId: ${["regional-secret-basic"].secretId}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/secretmanager.secretAccessor
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
/// role: "roles/secretmanager.secretAccessor",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const policy = new gcp.secretmanager.RegionalSecretIamPolicy("policy", {
/// project: regional_secret_basic.project,
/// location: regional_secret_basic.location,
/// secretId: regional_secret_basic.secretId,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/secretmanager.secretAccessor",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }])
/// policy = gcp.secretmanager.RegionalSecretIamPolicy("policy",
/// project=regional_secret_basic["project"],
/// location=regional_secret_basic["location"],
/// secret_id=regional_secret_basic["secretId"],
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
/// Role = "roles/secretmanager.secretAccessor",
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
/// var policy = new Gcp.SecretManager.RegionalSecretIamPolicy("policy", new()
/// {
/// Project = regional_secret_basic.Project,
/// Location = regional_secret_basic.Location,
/// SecretId = regional_secret_basic.SecretId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/secretmanager.secretAccessor",
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
/// _, err = secretmanager.NewRegionalSecretIamPolicy(ctx, "policy", &secretmanager.RegionalSecretIamPolicyArgs{
/// Project:    pulumi.Any(regional_secret_basic.Project),
/// Location:   pulumi.Any(regional_secret_basic.Location),
/// SecretId:   pulumi.Any(regional_secret_basic.SecretId),
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
/// import com.pulumi.gcp.secretmanager.RegionalSecretIamPolicy;
/// import com.pulumi.gcp.secretmanager.RegionalSecretIamPolicyArgs;
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
/// .role("roles/secretmanager.secretAccessor")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var policy = new RegionalSecretIamPolicy("policy", RegionalSecretIamPolicyArgs.builder()
/// .project(regional_secret_basic.project())
/// .location(regional_secret_basic.location())
/// .secretId(regional_secret_basic.secretId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:secretmanager:RegionalSecretIamPolicy
/// properties:
/// project: ${["regional-secret-basic"].project}
/// location: ${["regional-secret-basic"].location}
/// secretId: ${["regional-secret-basic"].secretId}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/secretmanager.secretAccessor
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.secretmanager.RegionalSecretIamBinding
/// " pulumi-lang-dotnet=" gcp.secretmanager.RegionalSecretIamBinding
/// " pulumi-lang-go=" secretmanager.RegionalSecretIamBinding
/// " pulumi-lang-python=" secretmanager.RegionalSecretIamBinding
/// " pulumi-lang-yaml=" gcp.secretmanager.RegionalSecretIamBinding
/// " pulumi-lang-java=" gcp.secretmanager.RegionalSecretIamBinding
/// "> gcp.secretmanager.RegionalSecretIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.secretmanager.RegionalSecretIamBinding("binding", {
/// project: regional_secret_basic.project,
/// location: regional_secret_basic.location,
/// secretId: regional_secret_basic.secretId,
/// role: "roles/secretmanager.secretAccessor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.secretmanager.RegionalSecretIamBinding("binding",
/// project=regional_secret_basic["project"],
/// location=regional_secret_basic["location"],
/// secret_id=regional_secret_basic["secretId"],
/// role="roles/secretmanager.secretAccessor",
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
/// var binding = new Gcp.SecretManager.RegionalSecretIamBinding("binding", new()
/// {
/// Project = regional_secret_basic.Project,
/// Location = regional_secret_basic.Location,
/// SecretId = regional_secret_basic.SecretId,
/// Role = "roles/secretmanager.secretAccessor",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := secretmanager.NewRegionalSecretIamBinding(ctx, "binding", &secretmanager.RegionalSecretIamBindingArgs{
/// Project:  pulumi.Any(regional_secret_basic.Project),
/// Location: pulumi.Any(regional_secret_basic.Location),
/// SecretId: pulumi.Any(regional_secret_basic.SecretId),
/// Role:     pulumi.String("roles/secretmanager.secretAccessor"),
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
/// import com.pulumi.gcp.secretmanager.RegionalSecretIamBinding;
/// import com.pulumi.gcp.secretmanager.RegionalSecretIamBindingArgs;
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
/// var binding = new RegionalSecretIamBinding("binding", RegionalSecretIamBindingArgs.builder()
/// .project(regional_secret_basic.project())
/// .location(regional_secret_basic.location())
/// .secretId(regional_secret_basic.secretId())
/// .role("roles/secretmanager.secretAccessor")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:secretmanager:RegionalSecretIamBinding
/// properties:
/// project: ${["regional-secret-basic"].project}
/// location: ${["regional-secret-basic"].location}
/// secretId: ${["regional-secret-basic"].secretId}
/// role: roles/secretmanager.secretAccessor
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
/// const binding = new gcp.secretmanager.RegionalSecretIamBinding("binding", {
/// project: regional_secret_basic.project,
/// location: regional_secret_basic.location,
/// secretId: regional_secret_basic.secretId,
/// role: "roles/secretmanager.secretAccessor",
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
/// binding = gcp.secretmanager.RegionalSecretIamBinding("binding",
/// project=regional_secret_basic["project"],
/// location=regional_secret_basic["location"],
/// secret_id=regional_secret_basic["secretId"],
/// role="roles/secretmanager.secretAccessor",
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
/// var binding = new Gcp.SecretManager.RegionalSecretIamBinding("binding", new()
/// {
/// Project = regional_secret_basic.Project,
/// Location = regional_secret_basic.Location,
/// SecretId = regional_secret_basic.SecretId,
/// Role = "roles/secretmanager.secretAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.SecretManager.Inputs.RegionalSecretIamBindingConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := secretmanager.NewRegionalSecretIamBinding(ctx, "binding", &secretmanager.RegionalSecretIamBindingArgs{
/// Project:  pulumi.Any(regional_secret_basic.Project),
/// Location: pulumi.Any(regional_secret_basic.Location),
/// SecretId: pulumi.Any(regional_secret_basic.SecretId),
/// Role:     pulumi.String("roles/secretmanager.secretAccessor"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &secretmanager.RegionalSecretIamBindingConditionArgs{
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
/// import com.pulumi.gcp.secretmanager.RegionalSecretIamBinding;
/// import com.pulumi.gcp.secretmanager.RegionalSecretIamBindingArgs;
/// import com.pulumi.gcp.secretmanager.inputs.RegionalSecretIamBindingConditionArgs;
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
/// var binding = new RegionalSecretIamBinding("binding", RegionalSecretIamBindingArgs.builder()
/// .project(regional_secret_basic.project())
/// .location(regional_secret_basic.location())
/// .secretId(regional_secret_basic.secretId())
/// .role("roles/secretmanager.secretAccessor")
/// .members("user:jane@example.com")
/// .condition(RegionalSecretIamBindingConditionArgs.builder()
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
/// type: gcp:secretmanager:RegionalSecretIamBinding
/// properties:
/// project: ${["regional-secret-basic"].project}
/// location: ${["regional-secret-basic"].location}
/// secretId: ${["regional-secret-basic"].secretId}
/// role: roles/secretmanager.secretAccessor
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.secretmanager.RegionalSecretIamMember
/// " pulumi-lang-dotnet=" gcp.secretmanager.RegionalSecretIamMember
/// " pulumi-lang-go=" secretmanager.RegionalSecretIamMember
/// " pulumi-lang-python=" secretmanager.RegionalSecretIamMember
/// " pulumi-lang-yaml=" gcp.secretmanager.RegionalSecretIamMember
/// " pulumi-lang-java=" gcp.secretmanager.RegionalSecretIamMember
/// "> gcp.secretmanager.RegionalSecretIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.secretmanager.RegionalSecretIamMember("member", {
/// project: regional_secret_basic.project,
/// location: regional_secret_basic.location,
/// secretId: regional_secret_basic.secretId,
/// role: "roles/secretmanager.secretAccessor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.secretmanager.RegionalSecretIamMember("member",
/// project=regional_secret_basic["project"],
/// location=regional_secret_basic["location"],
/// secret_id=regional_secret_basic["secretId"],
/// role="roles/secretmanager.secretAccessor",
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
/// var member = new Gcp.SecretManager.RegionalSecretIamMember("member", new()
/// {
/// Project = regional_secret_basic.Project,
/// Location = regional_secret_basic.Location,
/// SecretId = regional_secret_basic.SecretId,
/// Role = "roles/secretmanager.secretAccessor",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := secretmanager.NewRegionalSecretIamMember(ctx, "member", &secretmanager.RegionalSecretIamMemberArgs{
/// Project:  pulumi.Any(regional_secret_basic.Project),
/// Location: pulumi.Any(regional_secret_basic.Location),
/// SecretId: pulumi.Any(regional_secret_basic.SecretId),
/// Role:     pulumi.String("roles/secretmanager.secretAccessor"),
/// Member:   pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.secretmanager.RegionalSecretIamMember;
/// import com.pulumi.gcp.secretmanager.RegionalSecretIamMemberArgs;
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
/// var member = new RegionalSecretIamMember("member", RegionalSecretIamMemberArgs.builder()
/// .project(regional_secret_basic.project())
/// .location(regional_secret_basic.location())
/// .secretId(regional_secret_basic.secretId())
/// .role("roles/secretmanager.secretAccessor")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:secretmanager:RegionalSecretIamMember
/// properties:
/// project: ${["regional-secret-basic"].project}
/// location: ${["regional-secret-basic"].location}
/// secretId: ${["regional-secret-basic"].secretId}
/// role: roles/secretmanager.secretAccessor
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
/// const member = new gcp.secretmanager.RegionalSecretIamMember("member", {
/// project: regional_secret_basic.project,
/// location: regional_secret_basic.location,
/// secretId: regional_secret_basic.secretId,
/// role: "roles/secretmanager.secretAccessor",
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
/// member = gcp.secretmanager.RegionalSecretIamMember("member",
/// project=regional_secret_basic["project"],
/// location=regional_secret_basic["location"],
/// secret_id=regional_secret_basic["secretId"],
/// role="roles/secretmanager.secretAccessor",
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
/// var member = new Gcp.SecretManager.RegionalSecretIamMember("member", new()
/// {
/// Project = regional_secret_basic.Project,
/// Location = regional_secret_basic.Location,
/// SecretId = regional_secret_basic.SecretId,
/// Role = "roles/secretmanager.secretAccessor",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.SecretManager.Inputs.RegionalSecretIamMemberConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := secretmanager.NewRegionalSecretIamMember(ctx, "member", &secretmanager.RegionalSecretIamMemberArgs{
/// Project:  pulumi.Any(regional_secret_basic.Project),
/// Location: pulumi.Any(regional_secret_basic.Location),
/// SecretId: pulumi.Any(regional_secret_basic.SecretId),
/// Role:     pulumi.String("roles/secretmanager.secretAccessor"),
/// Member:   pulumi.String("user:jane@example.com"),
/// Condition: &secretmanager.RegionalSecretIamMemberConditionArgs{
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
/// import com.pulumi.gcp.secretmanager.RegionalSecretIamMember;
/// import com.pulumi.gcp.secretmanager.RegionalSecretIamMemberArgs;
/// import com.pulumi.gcp.secretmanager.inputs.RegionalSecretIamMemberConditionArgs;
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
/// var member = new RegionalSecretIamMember("member", RegionalSecretIamMemberArgs.builder()
/// .project(regional_secret_basic.project())
/// .location(regional_secret_basic.location())
/// .secretId(regional_secret_basic.secretId())
/// .role("roles/secretmanager.secretAccessor")
/// .member("user:jane@example.com")
/// .condition(RegionalSecretIamMemberConditionArgs.builder()
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
/// type: gcp:secretmanager:RegionalSecretIamMember
/// properties:
/// project: ${["regional-secret-basic"].project}
/// location: ${["regional-secret-basic"].location}
/// secretId: ${["regional-secret-basic"].secretId}
/// role: roles/secretmanager.secretAccessor
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
/// * projects/{{project}}/locations/{{location}}/secrets/{{secret_id}}
///
/// * {{project}}/{{location}}/{{secret_id}}
///
/// * {{location}}/{{secret_id}}
///
/// * {{secret_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Secret Manager regionalsecret IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:secretmanager/regionalSecretIamPolicy:RegionalSecretIamPolicy editor "projects/{{project}}/locations/{{location}}/secrets/{{secret_id}} roles/secretmanager.secretAccessor user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:secretmanager/regionalSecretIamPolicy:RegionalSecretIamPolicy editor "projects/{{project}}/locations/{{location}}/secrets/{{secret_id}} roles/secretmanager.secretAccessor"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:secretmanager/regionalSecretIamPolicy:RegionalSecretIamPolicy editor projects/{{project}}/locations/{{location}}/secrets/{{secret_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class RegionalSecretIamPolicy extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The location of the regional secret. eg us-central1
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
  late final Output<String> secretId;

  RegionalSecretIamPolicy(
    String name, {
    RegionalSecretIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:secretmanager/regionalSecretIamPolicy:RegionalSecretIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.policyData = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.secretId = Output.createUnknown<String>();
  }
}
