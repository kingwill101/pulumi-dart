import 'package:pulumi/pulumi.dart';
import '../machine_image_iam_binding_condition/machine_image_iam_binding_condition.dart';
import 'machine_image_iam_binding_args.dart';

/// Three different resources help you manage your IAM policy for Compute Engine MachineImage. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.compute.MachineImageIamPolicy`" pulumi-lang-dotnet="`gcp.compute.MachineImageIamPolicy`" pulumi-lang-go="`compute.MachineImageIamPolicy`" pulumi-lang-python="`compute.MachineImageIamPolicy`" pulumi-lang-yaml="`gcp.compute.MachineImageIamPolicy`" pulumi-lang-java="`gcp.compute.MachineImageIamPolicy`">`gcp.compute.MachineImageIamPolicy`</span>: Authoritative. Sets the IAM policy for the machineimage and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.compute.MachineImageIamBinding`" pulumi-lang-dotnet="`gcp.compute.MachineImageIamBinding`" pulumi-lang-go="`compute.MachineImageIamBinding`" pulumi-lang-python="`compute.MachineImageIamBinding`" pulumi-lang-yaml="`gcp.compute.MachineImageIamBinding`" pulumi-lang-java="`gcp.compute.MachineImageIamBinding`">`gcp.compute.MachineImageIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the machineimage are preserved.
/// * <span pulumi-lang-nodejs="`gcp.compute.MachineImageIamMember`" pulumi-lang-dotnet="`gcp.compute.MachineImageIamMember`" pulumi-lang-go="`compute.MachineImageIamMember`" pulumi-lang-python="`compute.MachineImageIamMember`" pulumi-lang-yaml="`gcp.compute.MachineImageIamMember`" pulumi-lang-java="`gcp.compute.MachineImageIamMember`">`gcp.compute.MachineImageIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the machineimage are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.compute.MachineImageIamPolicy`" pulumi-lang-dotnet="`gcp.compute.MachineImageIamPolicy`" pulumi-lang-go="`compute.MachineImageIamPolicy`" pulumi-lang-python="`compute.MachineImageIamPolicy`" pulumi-lang-yaml="`gcp.compute.MachineImageIamPolicy`" pulumi-lang-java="`gcp.compute.MachineImageIamPolicy`">`gcp.compute.MachineImageIamPolicy`</span>: Retrieves the IAM policy for the machineimage
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.MachineImageIamPolicy`" pulumi-lang-dotnet="`gcp.compute.MachineImageIamPolicy`" pulumi-lang-go="`compute.MachineImageIamPolicy`" pulumi-lang-python="`compute.MachineImageIamPolicy`" pulumi-lang-yaml="`gcp.compute.MachineImageIamPolicy`" pulumi-lang-java="`gcp.compute.MachineImageIamPolicy`">`gcp.compute.MachineImageIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.MachineImageIamBinding`" pulumi-lang-dotnet="`gcp.compute.MachineImageIamBinding`" pulumi-lang-go="`compute.MachineImageIamBinding`" pulumi-lang-python="`compute.MachineImageIamBinding`" pulumi-lang-yaml="`gcp.compute.MachineImageIamBinding`" pulumi-lang-java="`gcp.compute.MachineImageIamBinding`">`gcp.compute.MachineImageIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.compute.MachineImageIamMember`" pulumi-lang-dotnet="`gcp.compute.MachineImageIamMember`" pulumi-lang-go="`compute.MachineImageIamMember`" pulumi-lang-python="`compute.MachineImageIamMember`" pulumi-lang-yaml="`gcp.compute.MachineImageIamMember`" pulumi-lang-java="`gcp.compute.MachineImageIamMember`">`gcp.compute.MachineImageIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.MachineImageIamBinding`" pulumi-lang-dotnet="`gcp.compute.MachineImageIamBinding`" pulumi-lang-go="`compute.MachineImageIamBinding`" pulumi-lang-python="`compute.MachineImageIamBinding`" pulumi-lang-yaml="`gcp.compute.MachineImageIamBinding`" pulumi-lang-java="`gcp.compute.MachineImageIamBinding`">`gcp.compute.MachineImageIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.MachineImageIamMember`" pulumi-lang-dotnet="`gcp.compute.MachineImageIamMember`" pulumi-lang-go="`compute.MachineImageIamMember`" pulumi-lang-python="`compute.MachineImageIamMember`" pulumi-lang-yaml="`gcp.compute.MachineImageIamMember`" pulumi-lang-java="`gcp.compute.MachineImageIamMember`">`gcp.compute.MachineImageIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
/// ##<span pulumi-lang-nodejs=" gcp.compute.MachineImageIamPolicy
/// " pulumi-lang-dotnet=" gcp.compute.MachineImageIamPolicy
/// " pulumi-lang-go=" compute.MachineImageIamPolicy
/// " pulumi-lang-python=" compute.MachineImageIamPolicy
/// " pulumi-lang-yaml=" gcp.compute.MachineImageIamPolicy
/// " pulumi-lang-java=" gcp.compute.MachineImageIamPolicy
/// "> gcp.compute.MachineImageIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/compute.admin",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.compute.MachineImageIamPolicy("policy", {
/// project: image.project,
/// machineImage: image.name,
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
/// }])
/// policy = gcp.compute.MachineImageIamPolicy("policy",
/// project=image["project"],
/// machine_image=image["name"],
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
/// },
/// },
/// });
///
/// var policy = new Gcp.Compute.MachineImageIamPolicy("policy", new()
/// {
/// Project = image.Project,
/// MachineImage = image.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
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
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewMachineImageIamPolicy(ctx, "policy", &compute.MachineImageIamPolicyArgs{
/// Project:      pulumi.Any(image.Project),
/// MachineImage: pulumi.Any(image.Name),
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
/// import com.pulumi.gcp.compute.MachineImageIamPolicy;
/// import com.pulumi.gcp.compute.MachineImageIamPolicyArgs;
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
/// .build())
/// .build());
///
/// var policy = new MachineImageIamPolicy("policy", MachineImageIamPolicyArgs.builder()
/// .project(image.project())
/// .machineImage(image.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:compute:MachineImageIamPolicy
/// properties:
/// project: ${image.project}
/// machineImage: ${image.name}
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
/// const policy = new gcp.compute.MachineImageIamPolicy("policy", {
/// project: image.project,
/// machineImage: image.name,
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
/// policy = gcp.compute.MachineImageIamPolicy("policy",
/// project=image["project"],
/// machine_image=image["name"],
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
/// var policy = new Gcp.Compute.MachineImageIamPolicy("policy", new()
/// {
/// Project = image.Project,
/// MachineImage = image.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
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
/// _, err = compute.NewMachineImageIamPolicy(ctx, "policy", &compute.MachineImageIamPolicyArgs{
/// Project:      pulumi.Any(image.Project),
/// MachineImage: pulumi.Any(image.Name),
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
/// import com.pulumi.gcp.compute.MachineImageIamPolicy;
/// import com.pulumi.gcp.compute.MachineImageIamPolicyArgs;
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
/// var policy = new MachineImageIamPolicy("policy", MachineImageIamPolicyArgs.builder()
/// .project(image.project())
/// .machineImage(image.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:compute:MachineImageIamPolicy
/// properties:
/// project: ${image.project}
/// machineImage: ${image.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.compute.MachineImageIamBinding
/// " pulumi-lang-dotnet=" gcp.compute.MachineImageIamBinding
/// " pulumi-lang-go=" compute.MachineImageIamBinding
/// " pulumi-lang-python=" compute.MachineImageIamBinding
/// " pulumi-lang-yaml=" gcp.compute.MachineImageIamBinding
/// " pulumi-lang-java=" gcp.compute.MachineImageIamBinding
/// "> gcp.compute.MachineImageIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.MachineImageIamBinding("binding", {
/// project: image.project,
/// machineImage: image.name,
/// role: "roles/compute.admin",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.MachineImageIamBinding("binding",
/// project=image["project"],
/// machine_image=image["name"],
/// role="roles/compute.admin",
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
/// var binding = new Gcp.Compute.MachineImageIamBinding("binding", new()
/// {
/// Project = image.Project,
/// MachineImage = image.Name,
/// Role = "roles/compute.admin",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewMachineImageIamBinding(ctx, "binding", &compute.MachineImageIamBindingArgs{
/// Project:      pulumi.Any(image.Project),
/// MachineImage: pulumi.Any(image.Name),
/// Role:         pulumi.String("roles/compute.admin"),
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
/// import com.pulumi.gcp.compute.MachineImageIamBinding;
/// import com.pulumi.gcp.compute.MachineImageIamBindingArgs;
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
/// var binding = new MachineImageIamBinding("binding", MachineImageIamBindingArgs.builder()
/// .project(image.project())
/// .machineImage(image.name())
/// .role("roles/compute.admin")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:compute:MachineImageIamBinding
/// properties:
/// project: ${image.project}
/// machineImage: ${image.name}
/// role: roles/compute.admin
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
/// const binding = new gcp.compute.MachineImageIamBinding("binding", {
/// project: image.project,
/// machineImage: image.name,
/// role: "roles/compute.admin",
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
/// binding = gcp.compute.MachineImageIamBinding("binding",
/// project=image["project"],
/// machine_image=image["name"],
/// role="roles/compute.admin",
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
/// var binding = new Gcp.Compute.MachineImageIamBinding("binding", new()
/// {
/// Project = image.Project,
/// MachineImage = image.Name,
/// Role = "roles/compute.admin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Compute.Inputs.MachineImageIamBindingConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewMachineImageIamBinding(ctx, "binding", &compute.MachineImageIamBindingArgs{
/// Project:      pulumi.Any(image.Project),
/// MachineImage: pulumi.Any(image.Name),
/// Role:         pulumi.String("roles/compute.admin"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &compute.MachineImageIamBindingConditionArgs{
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
/// import com.pulumi.gcp.compute.MachineImageIamBinding;
/// import com.pulumi.gcp.compute.MachineImageIamBindingArgs;
/// import com.pulumi.gcp.compute.inputs.MachineImageIamBindingConditionArgs;
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
/// var binding = new MachineImageIamBinding("binding", MachineImageIamBindingArgs.builder()
/// .project(image.project())
/// .machineImage(image.name())
/// .role("roles/compute.admin")
/// .members("user:jane@example.com")
/// .condition(MachineImageIamBindingConditionArgs.builder()
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
/// type: gcp:compute:MachineImageIamBinding
/// properties:
/// project: ${image.project}
/// machineImage: ${image.name}
/// role: roles/compute.admin
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.compute.MachineImageIamMember
/// " pulumi-lang-dotnet=" gcp.compute.MachineImageIamMember
/// " pulumi-lang-go=" compute.MachineImageIamMember
/// " pulumi-lang-python=" compute.MachineImageIamMember
/// " pulumi-lang-yaml=" gcp.compute.MachineImageIamMember
/// " pulumi-lang-java=" gcp.compute.MachineImageIamMember
/// "> gcp.compute.MachineImageIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.MachineImageIamMember("member", {
/// project: image.project,
/// machineImage: image.name,
/// role: "roles/compute.admin",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.MachineImageIamMember("member",
/// project=image["project"],
/// machine_image=image["name"],
/// role="roles/compute.admin",
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
/// var member = new Gcp.Compute.MachineImageIamMember("member", new()
/// {
/// Project = image.Project,
/// MachineImage = image.Name,
/// Role = "roles/compute.admin",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewMachineImageIamMember(ctx, "member", &compute.MachineImageIamMemberArgs{
/// Project:      pulumi.Any(image.Project),
/// MachineImage: pulumi.Any(image.Name),
/// Role:         pulumi.String("roles/compute.admin"),
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
/// import com.pulumi.gcp.compute.MachineImageIamMember;
/// import com.pulumi.gcp.compute.MachineImageIamMemberArgs;
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
/// var member = new MachineImageIamMember("member", MachineImageIamMemberArgs.builder()
/// .project(image.project())
/// .machineImage(image.name())
/// .role("roles/compute.admin")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:compute:MachineImageIamMember
/// properties:
/// project: ${image.project}
/// machineImage: ${image.name}
/// role: roles/compute.admin
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
/// const member = new gcp.compute.MachineImageIamMember("member", {
/// project: image.project,
/// machineImage: image.name,
/// role: "roles/compute.admin",
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
/// member = gcp.compute.MachineImageIamMember("member",
/// project=image["project"],
/// machine_image=image["name"],
/// role="roles/compute.admin",
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
/// var member = new Gcp.Compute.MachineImageIamMember("member", new()
/// {
/// Project = image.Project,
/// MachineImage = image.Name,
/// Role = "roles/compute.admin",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Compute.Inputs.MachineImageIamMemberConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewMachineImageIamMember(ctx, "member", &compute.MachineImageIamMemberArgs{
/// Project:      pulumi.Any(image.Project),
/// MachineImage: pulumi.Any(image.Name),
/// Role:         pulumi.String("roles/compute.admin"),
/// Member:       pulumi.String("user:jane@example.com"),
/// Condition: &compute.MachineImageIamMemberConditionArgs{
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
/// import com.pulumi.gcp.compute.MachineImageIamMember;
/// import com.pulumi.gcp.compute.MachineImageIamMemberArgs;
/// import com.pulumi.gcp.compute.inputs.MachineImageIamMemberConditionArgs;
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
/// var member = new MachineImageIamMember("member", MachineImageIamMemberArgs.builder()
/// .project(image.project())
/// .machineImage(image.name())
/// .role("roles/compute.admin")
/// .member("user:jane@example.com")
/// .condition(MachineImageIamMemberConditionArgs.builder()
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
/// type: gcp:compute:MachineImageIamMember
/// properties:
/// project: ${image.project}
/// machineImage: ${image.name}
/// role: roles/compute.admin
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
/// # IAM policy for Compute Engine MachineImage
///
/// Three different resources help you manage your IAM policy for Compute Engine MachineImage. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.compute.MachineImageIamPolicy`" pulumi-lang-dotnet="`gcp.compute.MachineImageIamPolicy`" pulumi-lang-go="`compute.MachineImageIamPolicy`" pulumi-lang-python="`compute.MachineImageIamPolicy`" pulumi-lang-yaml="`gcp.compute.MachineImageIamPolicy`" pulumi-lang-java="`gcp.compute.MachineImageIamPolicy`">`gcp.compute.MachineImageIamPolicy`</span>: Authoritative. Sets the IAM policy for the machineimage and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.compute.MachineImageIamBinding`" pulumi-lang-dotnet="`gcp.compute.MachineImageIamBinding`" pulumi-lang-go="`compute.MachineImageIamBinding`" pulumi-lang-python="`compute.MachineImageIamBinding`" pulumi-lang-yaml="`gcp.compute.MachineImageIamBinding`" pulumi-lang-java="`gcp.compute.MachineImageIamBinding`">`gcp.compute.MachineImageIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the machineimage are preserved.
/// * <span pulumi-lang-nodejs="`gcp.compute.MachineImageIamMember`" pulumi-lang-dotnet="`gcp.compute.MachineImageIamMember`" pulumi-lang-go="`compute.MachineImageIamMember`" pulumi-lang-python="`compute.MachineImageIamMember`" pulumi-lang-yaml="`gcp.compute.MachineImageIamMember`" pulumi-lang-java="`gcp.compute.MachineImageIamMember`">`gcp.compute.MachineImageIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the machineimage are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.compute.MachineImageIamPolicy`" pulumi-lang-dotnet="`gcp.compute.MachineImageIamPolicy`" pulumi-lang-go="`compute.MachineImageIamPolicy`" pulumi-lang-python="`compute.MachineImageIamPolicy`" pulumi-lang-yaml="`gcp.compute.MachineImageIamPolicy`" pulumi-lang-java="`gcp.compute.MachineImageIamPolicy`">`gcp.compute.MachineImageIamPolicy`</span>: Retrieves the IAM policy for the machineimage
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.MachineImageIamPolicy`" pulumi-lang-dotnet="`gcp.compute.MachineImageIamPolicy`" pulumi-lang-go="`compute.MachineImageIamPolicy`" pulumi-lang-python="`compute.MachineImageIamPolicy`" pulumi-lang-yaml="`gcp.compute.MachineImageIamPolicy`" pulumi-lang-java="`gcp.compute.MachineImageIamPolicy`">`gcp.compute.MachineImageIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.MachineImageIamBinding`" pulumi-lang-dotnet="`gcp.compute.MachineImageIamBinding`" pulumi-lang-go="`compute.MachineImageIamBinding`" pulumi-lang-python="`compute.MachineImageIamBinding`" pulumi-lang-yaml="`gcp.compute.MachineImageIamBinding`" pulumi-lang-java="`gcp.compute.MachineImageIamBinding`">`gcp.compute.MachineImageIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.compute.MachineImageIamMember`" pulumi-lang-dotnet="`gcp.compute.MachineImageIamMember`" pulumi-lang-go="`compute.MachineImageIamMember`" pulumi-lang-python="`compute.MachineImageIamMember`" pulumi-lang-yaml="`gcp.compute.MachineImageIamMember`" pulumi-lang-java="`gcp.compute.MachineImageIamMember`">`gcp.compute.MachineImageIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.MachineImageIamBinding`" pulumi-lang-dotnet="`gcp.compute.MachineImageIamBinding`" pulumi-lang-go="`compute.MachineImageIamBinding`" pulumi-lang-python="`compute.MachineImageIamBinding`" pulumi-lang-yaml="`gcp.compute.MachineImageIamBinding`" pulumi-lang-java="`gcp.compute.MachineImageIamBinding`">`gcp.compute.MachineImageIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.MachineImageIamMember`" pulumi-lang-dotnet="`gcp.compute.MachineImageIamMember`" pulumi-lang-go="`compute.MachineImageIamMember`" pulumi-lang-python="`compute.MachineImageIamMember`" pulumi-lang-yaml="`gcp.compute.MachineImageIamMember`" pulumi-lang-java="`gcp.compute.MachineImageIamMember`">`gcp.compute.MachineImageIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
/// ##<span pulumi-lang-nodejs=" gcp.compute.MachineImageIamPolicy
/// " pulumi-lang-dotnet=" gcp.compute.MachineImageIamPolicy
/// " pulumi-lang-go=" compute.MachineImageIamPolicy
/// " pulumi-lang-python=" compute.MachineImageIamPolicy
/// " pulumi-lang-yaml=" gcp.compute.MachineImageIamPolicy
/// " pulumi-lang-java=" gcp.compute.MachineImageIamPolicy
/// "> gcp.compute.MachineImageIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/compute.admin",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.compute.MachineImageIamPolicy("policy", {
/// project: image.project,
/// machineImage: image.name,
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
/// }])
/// policy = gcp.compute.MachineImageIamPolicy("policy",
/// project=image["project"],
/// machine_image=image["name"],
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
/// },
/// },
/// });
///
/// var policy = new Gcp.Compute.MachineImageIamPolicy("policy", new()
/// {
/// Project = image.Project,
/// MachineImage = image.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
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
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewMachineImageIamPolicy(ctx, "policy", &compute.MachineImageIamPolicyArgs{
/// Project:      pulumi.Any(image.Project),
/// MachineImage: pulumi.Any(image.Name),
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
/// import com.pulumi.gcp.compute.MachineImageIamPolicy;
/// import com.pulumi.gcp.compute.MachineImageIamPolicyArgs;
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
/// .build())
/// .build());
///
/// var policy = new MachineImageIamPolicy("policy", MachineImageIamPolicyArgs.builder()
/// .project(image.project())
/// .machineImage(image.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:compute:MachineImageIamPolicy
/// properties:
/// project: ${image.project}
/// machineImage: ${image.name}
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
/// const policy = new gcp.compute.MachineImageIamPolicy("policy", {
/// project: image.project,
/// machineImage: image.name,
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
/// policy = gcp.compute.MachineImageIamPolicy("policy",
/// project=image["project"],
/// machine_image=image["name"],
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
/// var policy = new Gcp.Compute.MachineImageIamPolicy("policy", new()
/// {
/// Project = image.Project,
/// MachineImage = image.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
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
/// _, err = compute.NewMachineImageIamPolicy(ctx, "policy", &compute.MachineImageIamPolicyArgs{
/// Project:      pulumi.Any(image.Project),
/// MachineImage: pulumi.Any(image.Name),
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
/// import com.pulumi.gcp.compute.MachineImageIamPolicy;
/// import com.pulumi.gcp.compute.MachineImageIamPolicyArgs;
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
/// var policy = new MachineImageIamPolicy("policy", MachineImageIamPolicyArgs.builder()
/// .project(image.project())
/// .machineImage(image.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:compute:MachineImageIamPolicy
/// properties:
/// project: ${image.project}
/// machineImage: ${image.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.compute.MachineImageIamBinding
/// " pulumi-lang-dotnet=" gcp.compute.MachineImageIamBinding
/// " pulumi-lang-go=" compute.MachineImageIamBinding
/// " pulumi-lang-python=" compute.MachineImageIamBinding
/// " pulumi-lang-yaml=" gcp.compute.MachineImageIamBinding
/// " pulumi-lang-java=" gcp.compute.MachineImageIamBinding
/// "> gcp.compute.MachineImageIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.MachineImageIamBinding("binding", {
/// project: image.project,
/// machineImage: image.name,
/// role: "roles/compute.admin",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.MachineImageIamBinding("binding",
/// project=image["project"],
/// machine_image=image["name"],
/// role="roles/compute.admin",
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
/// var binding = new Gcp.Compute.MachineImageIamBinding("binding", new()
/// {
/// Project = image.Project,
/// MachineImage = image.Name,
/// Role = "roles/compute.admin",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewMachineImageIamBinding(ctx, "binding", &compute.MachineImageIamBindingArgs{
/// Project:      pulumi.Any(image.Project),
/// MachineImage: pulumi.Any(image.Name),
/// Role:         pulumi.String("roles/compute.admin"),
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
/// import com.pulumi.gcp.compute.MachineImageIamBinding;
/// import com.pulumi.gcp.compute.MachineImageIamBindingArgs;
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
/// var binding = new MachineImageIamBinding("binding", MachineImageIamBindingArgs.builder()
/// .project(image.project())
/// .machineImage(image.name())
/// .role("roles/compute.admin")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:compute:MachineImageIamBinding
/// properties:
/// project: ${image.project}
/// machineImage: ${image.name}
/// role: roles/compute.admin
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
/// const binding = new gcp.compute.MachineImageIamBinding("binding", {
/// project: image.project,
/// machineImage: image.name,
/// role: "roles/compute.admin",
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
/// binding = gcp.compute.MachineImageIamBinding("binding",
/// project=image["project"],
/// machine_image=image["name"],
/// role="roles/compute.admin",
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
/// var binding = new Gcp.Compute.MachineImageIamBinding("binding", new()
/// {
/// Project = image.Project,
/// MachineImage = image.Name,
/// Role = "roles/compute.admin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Compute.Inputs.MachineImageIamBindingConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewMachineImageIamBinding(ctx, "binding", &compute.MachineImageIamBindingArgs{
/// Project:      pulumi.Any(image.Project),
/// MachineImage: pulumi.Any(image.Name),
/// Role:         pulumi.String("roles/compute.admin"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &compute.MachineImageIamBindingConditionArgs{
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
/// import com.pulumi.gcp.compute.MachineImageIamBinding;
/// import com.pulumi.gcp.compute.MachineImageIamBindingArgs;
/// import com.pulumi.gcp.compute.inputs.MachineImageIamBindingConditionArgs;
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
/// var binding = new MachineImageIamBinding("binding", MachineImageIamBindingArgs.builder()
/// .project(image.project())
/// .machineImage(image.name())
/// .role("roles/compute.admin")
/// .members("user:jane@example.com")
/// .condition(MachineImageIamBindingConditionArgs.builder()
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
/// type: gcp:compute:MachineImageIamBinding
/// properties:
/// project: ${image.project}
/// machineImage: ${image.name}
/// role: roles/compute.admin
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.compute.MachineImageIamMember
/// " pulumi-lang-dotnet=" gcp.compute.MachineImageIamMember
/// " pulumi-lang-go=" compute.MachineImageIamMember
/// " pulumi-lang-python=" compute.MachineImageIamMember
/// " pulumi-lang-yaml=" gcp.compute.MachineImageIamMember
/// " pulumi-lang-java=" gcp.compute.MachineImageIamMember
/// "> gcp.compute.MachineImageIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.MachineImageIamMember("member", {
/// project: image.project,
/// machineImage: image.name,
/// role: "roles/compute.admin",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.MachineImageIamMember("member",
/// project=image["project"],
/// machine_image=image["name"],
/// role="roles/compute.admin",
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
/// var member = new Gcp.Compute.MachineImageIamMember("member", new()
/// {
/// Project = image.Project,
/// MachineImage = image.Name,
/// Role = "roles/compute.admin",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewMachineImageIamMember(ctx, "member", &compute.MachineImageIamMemberArgs{
/// Project:      pulumi.Any(image.Project),
/// MachineImage: pulumi.Any(image.Name),
/// Role:         pulumi.String("roles/compute.admin"),
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
/// import com.pulumi.gcp.compute.MachineImageIamMember;
/// import com.pulumi.gcp.compute.MachineImageIamMemberArgs;
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
/// var member = new MachineImageIamMember("member", MachineImageIamMemberArgs.builder()
/// .project(image.project())
/// .machineImage(image.name())
/// .role("roles/compute.admin")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:compute:MachineImageIamMember
/// properties:
/// project: ${image.project}
/// machineImage: ${image.name}
/// role: roles/compute.admin
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
/// const member = new gcp.compute.MachineImageIamMember("member", {
/// project: image.project,
/// machineImage: image.name,
/// role: "roles/compute.admin",
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
/// member = gcp.compute.MachineImageIamMember("member",
/// project=image["project"],
/// machine_image=image["name"],
/// role="roles/compute.admin",
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
/// var member = new Gcp.Compute.MachineImageIamMember("member", new()
/// {
/// Project = image.Project,
/// MachineImage = image.Name,
/// Role = "roles/compute.admin",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Compute.Inputs.MachineImageIamMemberConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewMachineImageIamMember(ctx, "member", &compute.MachineImageIamMemberArgs{
/// Project:      pulumi.Any(image.Project),
/// MachineImage: pulumi.Any(image.Name),
/// Role:         pulumi.String("roles/compute.admin"),
/// Member:       pulumi.String("user:jane@example.com"),
/// Condition: &compute.MachineImageIamMemberConditionArgs{
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
/// import com.pulumi.gcp.compute.MachineImageIamMember;
/// import com.pulumi.gcp.compute.MachineImageIamMemberArgs;
/// import com.pulumi.gcp.compute.inputs.MachineImageIamMemberConditionArgs;
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
/// var member = new MachineImageIamMember("member", MachineImageIamMemberArgs.builder()
/// .project(image.project())
/// .machineImage(image.name())
/// .role("roles/compute.admin")
/// .member("user:jane@example.com")
/// .condition(MachineImageIamMemberConditionArgs.builder()
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
/// type: gcp:compute:MachineImageIamMember
/// properties:
/// project: ${image.project}
/// machineImage: ${image.name}
/// role: roles/compute.admin
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
/// * projects/{{project}}/global/machineImages/{{name}}
///
/// * {{project}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Compute Engine machineimage IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/machineImageIamBinding:MachineImageIamBinding editor "projects/{{project}}/global/machineImages/{{machine_image}} roles/compute.admin user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/machineImageIamBinding:MachineImageIamBinding editor "projects/{{project}}/global/machineImages/{{machine_image}} roles/compute.admin"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/machineImageIamBinding:MachineImageIamBinding editor projects/{{project}}/global/machineImages/{{machine_image}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class MachineImageIamBinding extends CustomResource {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  late final Output<MachineImageIamBindingCondition?> condition;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> machineImage;

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
  /// <span pulumi-lang-nodejs="`gcp.compute.MachineImageIamBinding`" pulumi-lang-dotnet="`gcp.compute.MachineImageIamBinding`" pulumi-lang-go="`compute.MachineImageIamBinding`" pulumi-lang-python="`compute.MachineImageIamBinding`" pulumi-lang-yaml="`gcp.compute.MachineImageIamBinding`" pulumi-lang-java="`gcp.compute.MachineImageIamBinding`">`gcp.compute.MachineImageIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  MachineImageIamBinding(
    String name, {
    MachineImageIamBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/machineImageIamBinding:MachineImageIamBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<MachineImageIamBindingCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.machineImage = registerOutput<String>('machineImage');
    this.members = registerOutput<List<String>>('members');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
