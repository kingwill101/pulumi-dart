import 'package:pulumi/pulumi.dart';
import 'subnetwork_iampolicy_args.dart';

/// Three different resources help you manage your IAM policy for Compute Engine Subnetwork. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.compute.SubnetworkIAMPolicy`" pulumi-lang-dotnet="`gcp.compute.SubnetworkIAMPolicy`" pulumi-lang-go="`compute.SubnetworkIAMPolicy`" pulumi-lang-python="`compute.SubnetworkIAMPolicy`" pulumi-lang-yaml="`gcp.compute.SubnetworkIAMPolicy`" pulumi-lang-java="`gcp.compute.SubnetworkIAMPolicy`">`gcp.compute.SubnetworkIAMPolicy`</span>: Authoritative. Sets the IAM policy for the subnetwork and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.compute.SubnetworkIAMBinding`" pulumi-lang-dotnet="`gcp.compute.SubnetworkIAMBinding`" pulumi-lang-go="`compute.SubnetworkIAMBinding`" pulumi-lang-python="`compute.SubnetworkIAMBinding`" pulumi-lang-yaml="`gcp.compute.SubnetworkIAMBinding`" pulumi-lang-java="`gcp.compute.SubnetworkIAMBinding`">`gcp.compute.SubnetworkIAMBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the subnetwork are preserved.
/// * <span pulumi-lang-nodejs="`gcp.compute.SubnetworkIAMMember`" pulumi-lang-dotnet="`gcp.compute.SubnetworkIAMMember`" pulumi-lang-go="`compute.SubnetworkIAMMember`" pulumi-lang-python="`compute.SubnetworkIAMMember`" pulumi-lang-yaml="`gcp.compute.SubnetworkIAMMember`" pulumi-lang-java="`gcp.compute.SubnetworkIAMMember`">`gcp.compute.SubnetworkIAMMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the subnetwork are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.compute.SubnetworkIAMPolicy`" pulumi-lang-dotnet="`gcp.compute.SubnetworkIAMPolicy`" pulumi-lang-go="`compute.SubnetworkIAMPolicy`" pulumi-lang-python="`compute.SubnetworkIAMPolicy`" pulumi-lang-yaml="`gcp.compute.SubnetworkIAMPolicy`" pulumi-lang-java="`gcp.compute.SubnetworkIAMPolicy`">`gcp.compute.SubnetworkIAMPolicy`</span>: Retrieves the IAM policy for the subnetwork
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.SubnetworkIAMPolicy`" pulumi-lang-dotnet="`gcp.compute.SubnetworkIAMPolicy`" pulumi-lang-go="`compute.SubnetworkIAMPolicy`" pulumi-lang-python="`compute.SubnetworkIAMPolicy`" pulumi-lang-yaml="`gcp.compute.SubnetworkIAMPolicy`" pulumi-lang-java="`gcp.compute.SubnetworkIAMPolicy`">`gcp.compute.SubnetworkIAMPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.SubnetworkIAMBinding`" pulumi-lang-dotnet="`gcp.compute.SubnetworkIAMBinding`" pulumi-lang-go="`compute.SubnetworkIAMBinding`" pulumi-lang-python="`compute.SubnetworkIAMBinding`" pulumi-lang-yaml="`gcp.compute.SubnetworkIAMBinding`" pulumi-lang-java="`gcp.compute.SubnetworkIAMBinding`">`gcp.compute.SubnetworkIAMBinding`</span> and <span pulumi-lang-nodejs="`gcp.compute.SubnetworkIAMMember`" pulumi-lang-dotnet="`gcp.compute.SubnetworkIAMMember`" pulumi-lang-go="`compute.SubnetworkIAMMember`" pulumi-lang-python="`compute.SubnetworkIAMMember`" pulumi-lang-yaml="`gcp.compute.SubnetworkIAMMember`" pulumi-lang-java="`gcp.compute.SubnetworkIAMMember`">`gcp.compute.SubnetworkIAMMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.SubnetworkIAMBinding`" pulumi-lang-dotnet="`gcp.compute.SubnetworkIAMBinding`" pulumi-lang-go="`compute.SubnetworkIAMBinding`" pulumi-lang-python="`compute.SubnetworkIAMBinding`" pulumi-lang-yaml="`gcp.compute.SubnetworkIAMBinding`" pulumi-lang-java="`gcp.compute.SubnetworkIAMBinding`">`gcp.compute.SubnetworkIAMBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.SubnetworkIAMMember`" pulumi-lang-dotnet="`gcp.compute.SubnetworkIAMMember`" pulumi-lang-go="`compute.SubnetworkIAMMember`" pulumi-lang-python="`compute.SubnetworkIAMMember`" pulumi-lang-yaml="`gcp.compute.SubnetworkIAMMember`" pulumi-lang-java="`gcp.compute.SubnetworkIAMMember`">`gcp.compute.SubnetworkIAMMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.compute.SubnetworkIAMPolicy
/// " pulumi-lang-dotnet=" gcp.compute.SubnetworkIAMPolicy
/// " pulumi-lang-go=" compute.SubnetworkIAMPolicy
/// " pulumi-lang-python=" compute.SubnetworkIAMPolicy
/// " pulumi-lang-yaml=" gcp.compute.SubnetworkIAMPolicy
/// " pulumi-lang-java=" gcp.compute.SubnetworkIAMPolicy
/// "> gcp.compute.SubnetworkIAMPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/compute.networkUser",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.compute.SubnetworkIAMPolicy("policy", {
/// project: network_with_private_secondary_ip_ranges.project,
/// region: network_with_private_secondary_ip_ranges.region,
/// subnetwork: network_with_private_secondary_ip_ranges.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/compute.networkUser",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.compute.SubnetworkIAMPolicy("policy",
/// project=network_with_private_secondary_ip_ranges["project"],
/// region=network_with_private_secondary_ip_ranges["region"],
/// subnetwork=network_with_private_secondary_ip_ranges["name"],
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
/// Role = "roles/compute.networkUser",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Compute.SubnetworkIAMPolicy("policy", new()
/// {
/// Project = network_with_private_secondary_ip_ranges.Project,
/// Region = network_with_private_secondary_ip_ranges.Region,
/// Subnetwork = network_with_private_secondary_ip_ranges.Name,
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
/// Role: "roles/compute.networkUser",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewSubnetworkIAMPolicy(ctx, "policy", &compute.SubnetworkIAMPolicyArgs{
/// Project:    pulumi.Any(network_with_private_secondary_ip_ranges.Project),
/// Region:     pulumi.Any(network_with_private_secondary_ip_ranges.Region),
/// Subnetwork: pulumi.Any(network_with_private_secondary_ip_ranges.Name),
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
/// import com.pulumi.gcp.compute.SubnetworkIAMPolicy;
/// import com.pulumi.gcp.compute.SubnetworkIAMPolicyArgs;
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
/// .role("roles/compute.networkUser")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new SubnetworkIAMPolicy("policy", SubnetworkIAMPolicyArgs.builder()
/// .project(network_with_private_secondary_ip_ranges.project())
/// .region(network_with_private_secondary_ip_ranges.region())
/// .subnetwork(network_with_private_secondary_ip_ranges.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:compute:SubnetworkIAMPolicy
/// properties:
/// project: ${["network-with-private-secondary-ip-ranges"].project}
/// region: ${["network-with-private-secondary-ip-ranges"].region}
/// subnetwork: ${["network-with-private-secondary-ip-ranges"].name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/compute.networkUser
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
/// role: "roles/compute.networkUser",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const policy = new gcp.compute.SubnetworkIAMPolicy("policy", {
/// project: network_with_private_secondary_ip_ranges.project,
/// region: network_with_private_secondary_ip_ranges.region,
/// subnetwork: network_with_private_secondary_ip_ranges.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/compute.networkUser",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }])
/// policy = gcp.compute.SubnetworkIAMPolicy("policy",
/// project=network_with_private_secondary_ip_ranges["project"],
/// region=network_with_private_secondary_ip_ranges["region"],
/// subnetwork=network_with_private_secondary_ip_ranges["name"],
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
/// Role = "roles/compute.networkUser",
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
/// var policy = new Gcp.Compute.SubnetworkIAMPolicy("policy", new()
/// {
/// Project = network_with_private_secondary_ip_ranges.Project,
/// Region = network_with_private_secondary_ip_ranges.Region,
/// Subnetwork = network_with_private_secondary_ip_ranges.Name,
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
/// Role: "roles/compute.networkUser",
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
/// _, err = compute.NewSubnetworkIAMPolicy(ctx, "policy", &compute.SubnetworkIAMPolicyArgs{
/// Project:    pulumi.Any(network_with_private_secondary_ip_ranges.Project),
/// Region:     pulumi.Any(network_with_private_secondary_ip_ranges.Region),
/// Subnetwork: pulumi.Any(network_with_private_secondary_ip_ranges.Name),
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
/// import com.pulumi.gcp.compute.SubnetworkIAMPolicy;
/// import com.pulumi.gcp.compute.SubnetworkIAMPolicyArgs;
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
/// .role("roles/compute.networkUser")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var policy = new SubnetworkIAMPolicy("policy", SubnetworkIAMPolicyArgs.builder()
/// .project(network_with_private_secondary_ip_ranges.project())
/// .region(network_with_private_secondary_ip_ranges.region())
/// .subnetwork(network_with_private_secondary_ip_ranges.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:compute:SubnetworkIAMPolicy
/// properties:
/// project: ${["network-with-private-secondary-ip-ranges"].project}
/// region: ${["network-with-private-secondary-ip-ranges"].region}
/// subnetwork: ${["network-with-private-secondary-ip-ranges"].name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/compute.networkUser
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.compute.SubnetworkIAMBinding
/// " pulumi-lang-dotnet=" gcp.compute.SubnetworkIAMBinding
/// " pulumi-lang-go=" compute.SubnetworkIAMBinding
/// " pulumi-lang-python=" compute.SubnetworkIAMBinding
/// " pulumi-lang-yaml=" gcp.compute.SubnetworkIAMBinding
/// " pulumi-lang-java=" gcp.compute.SubnetworkIAMBinding
/// "> gcp.compute.SubnetworkIAMBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.SubnetworkIAMBinding("binding", {
/// project: network_with_private_secondary_ip_ranges.project,
/// region: network_with_private_secondary_ip_ranges.region,
/// subnetwork: network_with_private_secondary_ip_ranges.name,
/// role: "roles/compute.networkUser",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.SubnetworkIAMBinding("binding",
/// project=network_with_private_secondary_ip_ranges["project"],
/// region=network_with_private_secondary_ip_ranges["region"],
/// subnetwork=network_with_private_secondary_ip_ranges["name"],
/// role="roles/compute.networkUser",
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
/// var binding = new Gcp.Compute.SubnetworkIAMBinding("binding", new()
/// {
/// Project = network_with_private_secondary_ip_ranges.Project,
/// Region = network_with_private_secondary_ip_ranges.Region,
/// Subnetwork = network_with_private_secondary_ip_ranges.Name,
/// Role = "roles/compute.networkUser",
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
/// _, err := compute.NewSubnetworkIAMBinding(ctx, "binding", &compute.SubnetworkIAMBindingArgs{
/// Project:    pulumi.Any(network_with_private_secondary_ip_ranges.Project),
/// Region:     pulumi.Any(network_with_private_secondary_ip_ranges.Region),
/// Subnetwork: pulumi.Any(network_with_private_secondary_ip_ranges.Name),
/// Role:       pulumi.String("roles/compute.networkUser"),
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
/// import com.pulumi.gcp.compute.SubnetworkIAMBinding;
/// import com.pulumi.gcp.compute.SubnetworkIAMBindingArgs;
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
/// var binding = new SubnetworkIAMBinding("binding", SubnetworkIAMBindingArgs.builder()
/// .project(network_with_private_secondary_ip_ranges.project())
/// .region(network_with_private_secondary_ip_ranges.region())
/// .subnetwork(network_with_private_secondary_ip_ranges.name())
/// .role("roles/compute.networkUser")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:compute:SubnetworkIAMBinding
/// properties:
/// project: ${["network-with-private-secondary-ip-ranges"].project}
/// region: ${["network-with-private-secondary-ip-ranges"].region}
/// subnetwork: ${["network-with-private-secondary-ip-ranges"].name}
/// role: roles/compute.networkUser
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
/// const binding = new gcp.compute.SubnetworkIAMBinding("binding", {
/// project: network_with_private_secondary_ip_ranges.project,
/// region: network_with_private_secondary_ip_ranges.region,
/// subnetwork: network_with_private_secondary_ip_ranges.name,
/// role: "roles/compute.networkUser",
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
/// binding = gcp.compute.SubnetworkIAMBinding("binding",
/// project=network_with_private_secondary_ip_ranges["project"],
/// region=network_with_private_secondary_ip_ranges["region"],
/// subnetwork=network_with_private_secondary_ip_ranges["name"],
/// role="roles/compute.networkUser",
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
/// var binding = new Gcp.Compute.SubnetworkIAMBinding("binding", new()
/// {
/// Project = network_with_private_secondary_ip_ranges.Project,
/// Region = network_with_private_secondary_ip_ranges.Region,
/// Subnetwork = network_with_private_secondary_ip_ranges.Name,
/// Role = "roles/compute.networkUser",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Compute.Inputs.SubnetworkIAMBindingConditionArgs
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
/// _, err := compute.NewSubnetworkIAMBinding(ctx, "binding", &compute.SubnetworkIAMBindingArgs{
/// Project:    pulumi.Any(network_with_private_secondary_ip_ranges.Project),
/// Region:     pulumi.Any(network_with_private_secondary_ip_ranges.Region),
/// Subnetwork: pulumi.Any(network_with_private_secondary_ip_ranges.Name),
/// Role:       pulumi.String("roles/compute.networkUser"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &compute.SubnetworkIAMBindingConditionArgs{
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
/// import com.pulumi.gcp.compute.SubnetworkIAMBinding;
/// import com.pulumi.gcp.compute.SubnetworkIAMBindingArgs;
/// import com.pulumi.gcp.compute.inputs.SubnetworkIAMBindingConditionArgs;
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
/// var binding = new SubnetworkIAMBinding("binding", SubnetworkIAMBindingArgs.builder()
/// .project(network_with_private_secondary_ip_ranges.project())
/// .region(network_with_private_secondary_ip_ranges.region())
/// .subnetwork(network_with_private_secondary_ip_ranges.name())
/// .role("roles/compute.networkUser")
/// .members("user:jane@example.com")
/// .condition(SubnetworkIAMBindingConditionArgs.builder()
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
/// type: gcp:compute:SubnetworkIAMBinding
/// properties:
/// project: ${["network-with-private-secondary-ip-ranges"].project}
/// region: ${["network-with-private-secondary-ip-ranges"].region}
/// subnetwork: ${["network-with-private-secondary-ip-ranges"].name}
/// role: roles/compute.networkUser
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.compute.SubnetworkIAMMember
/// " pulumi-lang-dotnet=" gcp.compute.SubnetworkIAMMember
/// " pulumi-lang-go=" compute.SubnetworkIAMMember
/// " pulumi-lang-python=" compute.SubnetworkIAMMember
/// " pulumi-lang-yaml=" gcp.compute.SubnetworkIAMMember
/// " pulumi-lang-java=" gcp.compute.SubnetworkIAMMember
/// "> gcp.compute.SubnetworkIAMMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.SubnetworkIAMMember("member", {
/// project: network_with_private_secondary_ip_ranges.project,
/// region: network_with_private_secondary_ip_ranges.region,
/// subnetwork: network_with_private_secondary_ip_ranges.name,
/// role: "roles/compute.networkUser",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.SubnetworkIAMMember("member",
/// project=network_with_private_secondary_ip_ranges["project"],
/// region=network_with_private_secondary_ip_ranges["region"],
/// subnetwork=network_with_private_secondary_ip_ranges["name"],
/// role="roles/compute.networkUser",
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
/// var member = new Gcp.Compute.SubnetworkIAMMember("member", new()
/// {
/// Project = network_with_private_secondary_ip_ranges.Project,
/// Region = network_with_private_secondary_ip_ranges.Region,
/// Subnetwork = network_with_private_secondary_ip_ranges.Name,
/// Role = "roles/compute.networkUser",
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
/// _, err := compute.NewSubnetworkIAMMember(ctx, "member", &compute.SubnetworkIAMMemberArgs{
/// Project:    pulumi.Any(network_with_private_secondary_ip_ranges.Project),
/// Region:     pulumi.Any(network_with_private_secondary_ip_ranges.Region),
/// Subnetwork: pulumi.Any(network_with_private_secondary_ip_ranges.Name),
/// Role:       pulumi.String("roles/compute.networkUser"),
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
/// import com.pulumi.gcp.compute.SubnetworkIAMMember;
/// import com.pulumi.gcp.compute.SubnetworkIAMMemberArgs;
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
/// var member = new SubnetworkIAMMember("member", SubnetworkIAMMemberArgs.builder()
/// .project(network_with_private_secondary_ip_ranges.project())
/// .region(network_with_private_secondary_ip_ranges.region())
/// .subnetwork(network_with_private_secondary_ip_ranges.name())
/// .role("roles/compute.networkUser")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:compute:SubnetworkIAMMember
/// properties:
/// project: ${["network-with-private-secondary-ip-ranges"].project}
/// region: ${["network-with-private-secondary-ip-ranges"].region}
/// subnetwork: ${["network-with-private-secondary-ip-ranges"].name}
/// role: roles/compute.networkUser
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
/// const member = new gcp.compute.SubnetworkIAMMember("member", {
/// project: network_with_private_secondary_ip_ranges.project,
/// region: network_with_private_secondary_ip_ranges.region,
/// subnetwork: network_with_private_secondary_ip_ranges.name,
/// role: "roles/compute.networkUser",
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
/// member = gcp.compute.SubnetworkIAMMember("member",
/// project=network_with_private_secondary_ip_ranges["project"],
/// region=network_with_private_secondary_ip_ranges["region"],
/// subnetwork=network_with_private_secondary_ip_ranges["name"],
/// role="roles/compute.networkUser",
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
/// var member = new Gcp.Compute.SubnetworkIAMMember("member", new()
/// {
/// Project = network_with_private_secondary_ip_ranges.Project,
/// Region = network_with_private_secondary_ip_ranges.Region,
/// Subnetwork = network_with_private_secondary_ip_ranges.Name,
/// Role = "roles/compute.networkUser",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Compute.Inputs.SubnetworkIAMMemberConditionArgs
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
/// _, err := compute.NewSubnetworkIAMMember(ctx, "member", &compute.SubnetworkIAMMemberArgs{
/// Project:    pulumi.Any(network_with_private_secondary_ip_ranges.Project),
/// Region:     pulumi.Any(network_with_private_secondary_ip_ranges.Region),
/// Subnetwork: pulumi.Any(network_with_private_secondary_ip_ranges.Name),
/// Role:       pulumi.String("roles/compute.networkUser"),
/// Member:     pulumi.String("user:jane@example.com"),
/// Condition: &compute.SubnetworkIAMMemberConditionArgs{
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
/// import com.pulumi.gcp.compute.SubnetworkIAMMember;
/// import com.pulumi.gcp.compute.SubnetworkIAMMemberArgs;
/// import com.pulumi.gcp.compute.inputs.SubnetworkIAMMemberConditionArgs;
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
/// var member = new SubnetworkIAMMember("member", SubnetworkIAMMemberArgs.builder()
/// .project(network_with_private_secondary_ip_ranges.project())
/// .region(network_with_private_secondary_ip_ranges.region())
/// .subnetwork(network_with_private_secondary_ip_ranges.name())
/// .role("roles/compute.networkUser")
/// .member("user:jane@example.com")
/// .condition(SubnetworkIAMMemberConditionArgs.builder()
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
/// type: gcp:compute:SubnetworkIAMMember
/// properties:
/// project: ${["network-with-private-secondary-ip-ranges"].project}
/// region: ${["network-with-private-secondary-ip-ranges"].region}
/// subnetwork: ${["network-with-private-secondary-ip-ranges"].name}
/// role: roles/compute.networkUser
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
/// # IAM policy for Compute Engine Subnetwork
///
/// Three different resources help you manage your IAM policy for Compute Engine Subnetwork. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.compute.SubnetworkIAMPolicy`" pulumi-lang-dotnet="`gcp.compute.SubnetworkIAMPolicy`" pulumi-lang-go="`compute.SubnetworkIAMPolicy`" pulumi-lang-python="`compute.SubnetworkIAMPolicy`" pulumi-lang-yaml="`gcp.compute.SubnetworkIAMPolicy`" pulumi-lang-java="`gcp.compute.SubnetworkIAMPolicy`">`gcp.compute.SubnetworkIAMPolicy`</span>: Authoritative. Sets the IAM policy for the subnetwork and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.compute.SubnetworkIAMBinding`" pulumi-lang-dotnet="`gcp.compute.SubnetworkIAMBinding`" pulumi-lang-go="`compute.SubnetworkIAMBinding`" pulumi-lang-python="`compute.SubnetworkIAMBinding`" pulumi-lang-yaml="`gcp.compute.SubnetworkIAMBinding`" pulumi-lang-java="`gcp.compute.SubnetworkIAMBinding`">`gcp.compute.SubnetworkIAMBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the subnetwork are preserved.
/// * <span pulumi-lang-nodejs="`gcp.compute.SubnetworkIAMMember`" pulumi-lang-dotnet="`gcp.compute.SubnetworkIAMMember`" pulumi-lang-go="`compute.SubnetworkIAMMember`" pulumi-lang-python="`compute.SubnetworkIAMMember`" pulumi-lang-yaml="`gcp.compute.SubnetworkIAMMember`" pulumi-lang-java="`gcp.compute.SubnetworkIAMMember`">`gcp.compute.SubnetworkIAMMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the subnetwork are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.compute.SubnetworkIAMPolicy`" pulumi-lang-dotnet="`gcp.compute.SubnetworkIAMPolicy`" pulumi-lang-go="`compute.SubnetworkIAMPolicy`" pulumi-lang-python="`compute.SubnetworkIAMPolicy`" pulumi-lang-yaml="`gcp.compute.SubnetworkIAMPolicy`" pulumi-lang-java="`gcp.compute.SubnetworkIAMPolicy`">`gcp.compute.SubnetworkIAMPolicy`</span>: Retrieves the IAM policy for the subnetwork
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.SubnetworkIAMPolicy`" pulumi-lang-dotnet="`gcp.compute.SubnetworkIAMPolicy`" pulumi-lang-go="`compute.SubnetworkIAMPolicy`" pulumi-lang-python="`compute.SubnetworkIAMPolicy`" pulumi-lang-yaml="`gcp.compute.SubnetworkIAMPolicy`" pulumi-lang-java="`gcp.compute.SubnetworkIAMPolicy`">`gcp.compute.SubnetworkIAMPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.SubnetworkIAMBinding`" pulumi-lang-dotnet="`gcp.compute.SubnetworkIAMBinding`" pulumi-lang-go="`compute.SubnetworkIAMBinding`" pulumi-lang-python="`compute.SubnetworkIAMBinding`" pulumi-lang-yaml="`gcp.compute.SubnetworkIAMBinding`" pulumi-lang-java="`gcp.compute.SubnetworkIAMBinding`">`gcp.compute.SubnetworkIAMBinding`</span> and <span pulumi-lang-nodejs="`gcp.compute.SubnetworkIAMMember`" pulumi-lang-dotnet="`gcp.compute.SubnetworkIAMMember`" pulumi-lang-go="`compute.SubnetworkIAMMember`" pulumi-lang-python="`compute.SubnetworkIAMMember`" pulumi-lang-yaml="`gcp.compute.SubnetworkIAMMember`" pulumi-lang-java="`gcp.compute.SubnetworkIAMMember`">`gcp.compute.SubnetworkIAMMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.compute.SubnetworkIAMBinding`" pulumi-lang-dotnet="`gcp.compute.SubnetworkIAMBinding`" pulumi-lang-go="`compute.SubnetworkIAMBinding`" pulumi-lang-python="`compute.SubnetworkIAMBinding`" pulumi-lang-yaml="`gcp.compute.SubnetworkIAMBinding`" pulumi-lang-java="`gcp.compute.SubnetworkIAMBinding`">`gcp.compute.SubnetworkIAMBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.compute.SubnetworkIAMMember`" pulumi-lang-dotnet="`gcp.compute.SubnetworkIAMMember`" pulumi-lang-go="`compute.SubnetworkIAMMember`" pulumi-lang-python="`compute.SubnetworkIAMMember`" pulumi-lang-yaml="`gcp.compute.SubnetworkIAMMember`" pulumi-lang-java="`gcp.compute.SubnetworkIAMMember`">`gcp.compute.SubnetworkIAMMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.compute.SubnetworkIAMPolicy
/// " pulumi-lang-dotnet=" gcp.compute.SubnetworkIAMPolicy
/// " pulumi-lang-go=" compute.SubnetworkIAMPolicy
/// " pulumi-lang-python=" compute.SubnetworkIAMPolicy
/// " pulumi-lang-yaml=" gcp.compute.SubnetworkIAMPolicy
/// " pulumi-lang-java=" gcp.compute.SubnetworkIAMPolicy
/// "> gcp.compute.SubnetworkIAMPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/compute.networkUser",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.compute.SubnetworkIAMPolicy("policy", {
/// project: network_with_private_secondary_ip_ranges.project,
/// region: network_with_private_secondary_ip_ranges.region,
/// subnetwork: network_with_private_secondary_ip_ranges.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/compute.networkUser",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.compute.SubnetworkIAMPolicy("policy",
/// project=network_with_private_secondary_ip_ranges["project"],
/// region=network_with_private_secondary_ip_ranges["region"],
/// subnetwork=network_with_private_secondary_ip_ranges["name"],
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
/// Role = "roles/compute.networkUser",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Compute.SubnetworkIAMPolicy("policy", new()
/// {
/// Project = network_with_private_secondary_ip_ranges.Project,
/// Region = network_with_private_secondary_ip_ranges.Region,
/// Subnetwork = network_with_private_secondary_ip_ranges.Name,
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
/// Role: "roles/compute.networkUser",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewSubnetworkIAMPolicy(ctx, "policy", &compute.SubnetworkIAMPolicyArgs{
/// Project:    pulumi.Any(network_with_private_secondary_ip_ranges.Project),
/// Region:     pulumi.Any(network_with_private_secondary_ip_ranges.Region),
/// Subnetwork: pulumi.Any(network_with_private_secondary_ip_ranges.Name),
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
/// import com.pulumi.gcp.compute.SubnetworkIAMPolicy;
/// import com.pulumi.gcp.compute.SubnetworkIAMPolicyArgs;
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
/// .role("roles/compute.networkUser")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new SubnetworkIAMPolicy("policy", SubnetworkIAMPolicyArgs.builder()
/// .project(network_with_private_secondary_ip_ranges.project())
/// .region(network_with_private_secondary_ip_ranges.region())
/// .subnetwork(network_with_private_secondary_ip_ranges.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:compute:SubnetworkIAMPolicy
/// properties:
/// project: ${["network-with-private-secondary-ip-ranges"].project}
/// region: ${["network-with-private-secondary-ip-ranges"].region}
/// subnetwork: ${["network-with-private-secondary-ip-ranges"].name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/compute.networkUser
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
/// role: "roles/compute.networkUser",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const policy = new gcp.compute.SubnetworkIAMPolicy("policy", {
/// project: network_with_private_secondary_ip_ranges.project,
/// region: network_with_private_secondary_ip_ranges.region,
/// subnetwork: network_with_private_secondary_ip_ranges.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/compute.networkUser",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }])
/// policy = gcp.compute.SubnetworkIAMPolicy("policy",
/// project=network_with_private_secondary_ip_ranges["project"],
/// region=network_with_private_secondary_ip_ranges["region"],
/// subnetwork=network_with_private_secondary_ip_ranges["name"],
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
/// Role = "roles/compute.networkUser",
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
/// var policy = new Gcp.Compute.SubnetworkIAMPolicy("policy", new()
/// {
/// Project = network_with_private_secondary_ip_ranges.Project,
/// Region = network_with_private_secondary_ip_ranges.Region,
/// Subnetwork = network_with_private_secondary_ip_ranges.Name,
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
/// Role: "roles/compute.networkUser",
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
/// _, err = compute.NewSubnetworkIAMPolicy(ctx, "policy", &compute.SubnetworkIAMPolicyArgs{
/// Project:    pulumi.Any(network_with_private_secondary_ip_ranges.Project),
/// Region:     pulumi.Any(network_with_private_secondary_ip_ranges.Region),
/// Subnetwork: pulumi.Any(network_with_private_secondary_ip_ranges.Name),
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
/// import com.pulumi.gcp.compute.SubnetworkIAMPolicy;
/// import com.pulumi.gcp.compute.SubnetworkIAMPolicyArgs;
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
/// .role("roles/compute.networkUser")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var policy = new SubnetworkIAMPolicy("policy", SubnetworkIAMPolicyArgs.builder()
/// .project(network_with_private_secondary_ip_ranges.project())
/// .region(network_with_private_secondary_ip_ranges.region())
/// .subnetwork(network_with_private_secondary_ip_ranges.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:compute:SubnetworkIAMPolicy
/// properties:
/// project: ${["network-with-private-secondary-ip-ranges"].project}
/// region: ${["network-with-private-secondary-ip-ranges"].region}
/// subnetwork: ${["network-with-private-secondary-ip-ranges"].name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/compute.networkUser
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.compute.SubnetworkIAMBinding
/// " pulumi-lang-dotnet=" gcp.compute.SubnetworkIAMBinding
/// " pulumi-lang-go=" compute.SubnetworkIAMBinding
/// " pulumi-lang-python=" compute.SubnetworkIAMBinding
/// " pulumi-lang-yaml=" gcp.compute.SubnetworkIAMBinding
/// " pulumi-lang-java=" gcp.compute.SubnetworkIAMBinding
/// "> gcp.compute.SubnetworkIAMBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.SubnetworkIAMBinding("binding", {
/// project: network_with_private_secondary_ip_ranges.project,
/// region: network_with_private_secondary_ip_ranges.region,
/// subnetwork: network_with_private_secondary_ip_ranges.name,
/// role: "roles/compute.networkUser",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.SubnetworkIAMBinding("binding",
/// project=network_with_private_secondary_ip_ranges["project"],
/// region=network_with_private_secondary_ip_ranges["region"],
/// subnetwork=network_with_private_secondary_ip_ranges["name"],
/// role="roles/compute.networkUser",
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
/// var binding = new Gcp.Compute.SubnetworkIAMBinding("binding", new()
/// {
/// Project = network_with_private_secondary_ip_ranges.Project,
/// Region = network_with_private_secondary_ip_ranges.Region,
/// Subnetwork = network_with_private_secondary_ip_ranges.Name,
/// Role = "roles/compute.networkUser",
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
/// _, err := compute.NewSubnetworkIAMBinding(ctx, "binding", &compute.SubnetworkIAMBindingArgs{
/// Project:    pulumi.Any(network_with_private_secondary_ip_ranges.Project),
/// Region:     pulumi.Any(network_with_private_secondary_ip_ranges.Region),
/// Subnetwork: pulumi.Any(network_with_private_secondary_ip_ranges.Name),
/// Role:       pulumi.String("roles/compute.networkUser"),
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
/// import com.pulumi.gcp.compute.SubnetworkIAMBinding;
/// import com.pulumi.gcp.compute.SubnetworkIAMBindingArgs;
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
/// var binding = new SubnetworkIAMBinding("binding", SubnetworkIAMBindingArgs.builder()
/// .project(network_with_private_secondary_ip_ranges.project())
/// .region(network_with_private_secondary_ip_ranges.region())
/// .subnetwork(network_with_private_secondary_ip_ranges.name())
/// .role("roles/compute.networkUser")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:compute:SubnetworkIAMBinding
/// properties:
/// project: ${["network-with-private-secondary-ip-ranges"].project}
/// region: ${["network-with-private-secondary-ip-ranges"].region}
/// subnetwork: ${["network-with-private-secondary-ip-ranges"].name}
/// role: roles/compute.networkUser
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
/// const binding = new gcp.compute.SubnetworkIAMBinding("binding", {
/// project: network_with_private_secondary_ip_ranges.project,
/// region: network_with_private_secondary_ip_ranges.region,
/// subnetwork: network_with_private_secondary_ip_ranges.name,
/// role: "roles/compute.networkUser",
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
/// binding = gcp.compute.SubnetworkIAMBinding("binding",
/// project=network_with_private_secondary_ip_ranges["project"],
/// region=network_with_private_secondary_ip_ranges["region"],
/// subnetwork=network_with_private_secondary_ip_ranges["name"],
/// role="roles/compute.networkUser",
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
/// var binding = new Gcp.Compute.SubnetworkIAMBinding("binding", new()
/// {
/// Project = network_with_private_secondary_ip_ranges.Project,
/// Region = network_with_private_secondary_ip_ranges.Region,
/// Subnetwork = network_with_private_secondary_ip_ranges.Name,
/// Role = "roles/compute.networkUser",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Compute.Inputs.SubnetworkIAMBindingConditionArgs
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
/// _, err := compute.NewSubnetworkIAMBinding(ctx, "binding", &compute.SubnetworkIAMBindingArgs{
/// Project:    pulumi.Any(network_with_private_secondary_ip_ranges.Project),
/// Region:     pulumi.Any(network_with_private_secondary_ip_ranges.Region),
/// Subnetwork: pulumi.Any(network_with_private_secondary_ip_ranges.Name),
/// Role:       pulumi.String("roles/compute.networkUser"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &compute.SubnetworkIAMBindingConditionArgs{
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
/// import com.pulumi.gcp.compute.SubnetworkIAMBinding;
/// import com.pulumi.gcp.compute.SubnetworkIAMBindingArgs;
/// import com.pulumi.gcp.compute.inputs.SubnetworkIAMBindingConditionArgs;
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
/// var binding = new SubnetworkIAMBinding("binding", SubnetworkIAMBindingArgs.builder()
/// .project(network_with_private_secondary_ip_ranges.project())
/// .region(network_with_private_secondary_ip_ranges.region())
/// .subnetwork(network_with_private_secondary_ip_ranges.name())
/// .role("roles/compute.networkUser")
/// .members("user:jane@example.com")
/// .condition(SubnetworkIAMBindingConditionArgs.builder()
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
/// type: gcp:compute:SubnetworkIAMBinding
/// properties:
/// project: ${["network-with-private-secondary-ip-ranges"].project}
/// region: ${["network-with-private-secondary-ip-ranges"].region}
/// subnetwork: ${["network-with-private-secondary-ip-ranges"].name}
/// role: roles/compute.networkUser
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.compute.SubnetworkIAMMember
/// " pulumi-lang-dotnet=" gcp.compute.SubnetworkIAMMember
/// " pulumi-lang-go=" compute.SubnetworkIAMMember
/// " pulumi-lang-python=" compute.SubnetworkIAMMember
/// " pulumi-lang-yaml=" gcp.compute.SubnetworkIAMMember
/// " pulumi-lang-java=" gcp.compute.SubnetworkIAMMember
/// "> gcp.compute.SubnetworkIAMMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.SubnetworkIAMMember("member", {
/// project: network_with_private_secondary_ip_ranges.project,
/// region: network_with_private_secondary_ip_ranges.region,
/// subnetwork: network_with_private_secondary_ip_ranges.name,
/// role: "roles/compute.networkUser",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.SubnetworkIAMMember("member",
/// project=network_with_private_secondary_ip_ranges["project"],
/// region=network_with_private_secondary_ip_ranges["region"],
/// subnetwork=network_with_private_secondary_ip_ranges["name"],
/// role="roles/compute.networkUser",
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
/// var member = new Gcp.Compute.SubnetworkIAMMember("member", new()
/// {
/// Project = network_with_private_secondary_ip_ranges.Project,
/// Region = network_with_private_secondary_ip_ranges.Region,
/// Subnetwork = network_with_private_secondary_ip_ranges.Name,
/// Role = "roles/compute.networkUser",
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
/// _, err := compute.NewSubnetworkIAMMember(ctx, "member", &compute.SubnetworkIAMMemberArgs{
/// Project:    pulumi.Any(network_with_private_secondary_ip_ranges.Project),
/// Region:     pulumi.Any(network_with_private_secondary_ip_ranges.Region),
/// Subnetwork: pulumi.Any(network_with_private_secondary_ip_ranges.Name),
/// Role:       pulumi.String("roles/compute.networkUser"),
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
/// import com.pulumi.gcp.compute.SubnetworkIAMMember;
/// import com.pulumi.gcp.compute.SubnetworkIAMMemberArgs;
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
/// var member = new SubnetworkIAMMember("member", SubnetworkIAMMemberArgs.builder()
/// .project(network_with_private_secondary_ip_ranges.project())
/// .region(network_with_private_secondary_ip_ranges.region())
/// .subnetwork(network_with_private_secondary_ip_ranges.name())
/// .role("roles/compute.networkUser")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:compute:SubnetworkIAMMember
/// properties:
/// project: ${["network-with-private-secondary-ip-ranges"].project}
/// region: ${["network-with-private-secondary-ip-ranges"].region}
/// subnetwork: ${["network-with-private-secondary-ip-ranges"].name}
/// role: roles/compute.networkUser
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
/// const member = new gcp.compute.SubnetworkIAMMember("member", {
/// project: network_with_private_secondary_ip_ranges.project,
/// region: network_with_private_secondary_ip_ranges.region,
/// subnetwork: network_with_private_secondary_ip_ranges.name,
/// role: "roles/compute.networkUser",
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
/// member = gcp.compute.SubnetworkIAMMember("member",
/// project=network_with_private_secondary_ip_ranges["project"],
/// region=network_with_private_secondary_ip_ranges["region"],
/// subnetwork=network_with_private_secondary_ip_ranges["name"],
/// role="roles/compute.networkUser",
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
/// var member = new Gcp.Compute.SubnetworkIAMMember("member", new()
/// {
/// Project = network_with_private_secondary_ip_ranges.Project,
/// Region = network_with_private_secondary_ip_ranges.Region,
/// Subnetwork = network_with_private_secondary_ip_ranges.Name,
/// Role = "roles/compute.networkUser",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Compute.Inputs.SubnetworkIAMMemberConditionArgs
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
/// _, err := compute.NewSubnetworkIAMMember(ctx, "member", &compute.SubnetworkIAMMemberArgs{
/// Project:    pulumi.Any(network_with_private_secondary_ip_ranges.Project),
/// Region:     pulumi.Any(network_with_private_secondary_ip_ranges.Region),
/// Subnetwork: pulumi.Any(network_with_private_secondary_ip_ranges.Name),
/// Role:       pulumi.String("roles/compute.networkUser"),
/// Member:     pulumi.String("user:jane@example.com"),
/// Condition: &compute.SubnetworkIAMMemberConditionArgs{
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
/// import com.pulumi.gcp.compute.SubnetworkIAMMember;
/// import com.pulumi.gcp.compute.SubnetworkIAMMemberArgs;
/// import com.pulumi.gcp.compute.inputs.SubnetworkIAMMemberConditionArgs;
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
/// var member = new SubnetworkIAMMember("member", SubnetworkIAMMemberArgs.builder()
/// .project(network_with_private_secondary_ip_ranges.project())
/// .region(network_with_private_secondary_ip_ranges.region())
/// .subnetwork(network_with_private_secondary_ip_ranges.name())
/// .role("roles/compute.networkUser")
/// .member("user:jane@example.com")
/// .condition(SubnetworkIAMMemberConditionArgs.builder()
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
/// type: gcp:compute:SubnetworkIAMMember
/// properties:
/// project: ${["network-with-private-secondary-ip-ranges"].project}
/// region: ${["network-with-private-secondary-ip-ranges"].region}
/// subnetwork: ${["network-with-private-secondary-ip-ranges"].name}
/// role: roles/compute.networkUser
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
/// * projects/{{project}}/regions/{{region}}/subnetworks/{{name}}
///
/// * {{project}}/{{region}}/{{name}}
///
/// * {{region}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Compute Engine subnetwork IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/subnetworkIAMPolicy:SubnetworkIAMPolicy editor "projects/{{project}}/regions/{{region}}/subnetworks/{{subnetwork}} roles/compute.networkUser user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/subnetworkIAMPolicy:SubnetworkIAMPolicy editor "projects/{{project}}/regions/{{region}}/subnetworks/{{subnetwork}} roles/compute.networkUser"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/subnetworkIAMPolicy:SubnetworkIAMPolicy editor projects/{{project}}/regions/{{region}}/subnetworks/{{subnetwork}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class SubnetworkIAMPolicy extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// The GCP region for this subnetwork.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  late final Output<String> region;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> subnetwork;

  SubnetworkIAMPolicy(
    String name, {
    SubnetworkIAMPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/subnetworkIAMPolicy:SubnetworkIAMPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = Output.createUnknown<String>();
    this.policyData = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.subnetwork = Output.createUnknown<String>();
  }
}
