import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnetwork_iampolicy_args.dart';

/// Three different resources help you manage your IAM policy for Compute Engine Subnetwork. Each of these resources serves a different use case:
///
/// * `gcp.compute.SubnetworkIAMPolicy`: Authoritative. Sets the IAM policy for the subnetwork and replaces any existing policy already attached.
/// * `gcp.compute.SubnetworkIAMBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the subnetwork are preserved.
/// * `gcp.compute.SubnetworkIAMMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the subnetwork are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.compute.SubnetworkIAMPolicy`: Retrieves the IAM policy for the subnetwork
///
/// > **Note:** `gcp.compute.SubnetworkIAMPolicy` **cannot** be used in conjunction with `gcp.compute.SubnetworkIAMBinding` and `gcp.compute.SubnetworkIAMMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.compute.SubnetworkIAMBinding` resources **can be** used in conjunction with `gcp.compute.SubnetworkIAMMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.compute.SubnetworkIAMPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/compute.networkUser",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.compute.SubnetworkIAMPolicy("policy", {
///     project: network_with_private_secondary_ip_ranges.project,
///     region: network_with_private_secondary_ip_ranges.region,
///     subnetwork: network_with_private_secondary_ip_ranges.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/compute.networkUser",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.compute.SubnetworkIAMPolicy("policy",
///     project=network_with_private_secondary_ip_ranges["project"],
///     region=network_with_private_secondary_ip_ranges["region"],
///     subnetwork=network_with_private_secondary_ip_ranges["name"],
///     policy_data=admin.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var admin = Gcp.Organizations.GetIAMPolicy.Invoke(new()
///     {
///         Bindings = new[]
///         {
///             new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
///             {
///                 Role = "roles/compute.networkUser",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Compute.SubnetworkIAMPolicy("policy", new()
///     {
///         Project = network_with_private_secondary_ip_ranges.Project,
///         Region = network_with_private_secondary_ip_ranges.Region,
///         Subnetwork = network_with_private_secondary_ip_ranges.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/compute.networkUser",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetworkIAMPolicy(ctx, "policy", &compute.SubnetworkIAMPolicyArgs{
/// 			Project:    pulumi.Any(network_with_private_secondary_ip_ranges.Project),
/// 			Region:     pulumi.Any(network_with_private_secondary_ip_ranges.Region),
/// 			Subnetwork: pulumi.Any(network_with_private_secondary_ip_ranges.Name),
/// 			PolicyData: pulumi.String(admin.PolicyData),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var admin = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
///             .bindings(GetIAMPolicyBindingArgs.builder()
///                 .role("roles/compute.networkUser")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new SubnetworkIAMPolicy("policy", SubnetworkIAMPolicyArgs.builder()
///             .project(network_with_private_secondary_ip_ranges.project())
///             .region(network_with_private_secondary_ip_ranges.region())
///             .subnetwork(network_with_private_secondary_ip_ranges.name())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:SubnetworkIAMPolicy
///     properties:
///       project: ${["network-with-private-secondary-ip-ranges"].project}
///       region: ${["network-with-private-secondary-ip-ranges"].region}
///       subnetwork: ${["network-with-private-secondary-ip-ranges"].name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/compute.networkUser
///             members:
///               - user:jane@example.com
/// ```
///
///
/// With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/compute.networkUser",
///         members: ["user:jane@example.com"],
///         condition: {
///             title: "expires_after_2019_12_31",
///             description: "Expiring at midnight of 2019-12-31",
///             expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     }],
/// });
/// const policy = new gcp.compute.SubnetworkIAMPolicy("policy", {
///     project: network_with_private_secondary_ip_ranges.project,
///     region: network_with_private_secondary_ip_ranges.region,
///     subnetwork: network_with_private_secondary_ip_ranges.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/compute.networkUser",
///     "members": ["user:jane@example.com"],
///     "condition": {
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// }])
/// policy = gcp.compute.SubnetworkIAMPolicy("policy",
///     project=network_with_private_secondary_ip_ranges["project"],
///     region=network_with_private_secondary_ip_ranges["region"],
///     subnetwork=network_with_private_secondary_ip_ranges["name"],
///     policy_data=admin.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var admin = Gcp.Organizations.GetIAMPolicy.Invoke(new()
///     {
///         Bindings = new[]
///         {
///             new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
///             {
///                 Role = "roles/compute.networkUser",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///                 Condition = new Gcp.Organizations.Inputs.GetIAMPolicyBindingConditionInputArgs
///                 {
///                     Title = "expires_after_2019_12_31",
///                     Description = "Expiring at midnight of 2019-12-31",
///                     Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Compute.SubnetworkIAMPolicy("policy", new()
///     {
///         Project = network_with_private_secondary_ip_ranges.Project,
///         Region = network_with_private_secondary_ip_ranges.Region,
///         Subnetwork = network_with_private_secondary_ip_ranges.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/compute.networkUser",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 					Condition: {
/// 						Title:       "expires_after_2019_12_31",
/// 						Description: pulumi.StringRef("Expiring at midnight of 2019-12-31"),
/// 						Expression:  "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetworkIAMPolicy(ctx, "policy", &compute.SubnetworkIAMPolicyArgs{
/// 			Project:    pulumi.Any(network_with_private_secondary_ip_ranges.Project),
/// 			Region:     pulumi.Any(network_with_private_secondary_ip_ranges.Region),
/// 			Subnetwork: pulumi.Any(network_with_private_secondary_ip_ranges.Name),
/// 			PolicyData: pulumi.String(admin.PolicyData),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var admin = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
///             .bindings(GetIAMPolicyBindingArgs.builder()
///                 .role("roles/compute.networkUser")
///                 .members("user:jane@example.com")
///                 .condition(GetIAMPolicyBindingConditionArgs.builder()
///                     .title("expires_after_2019_12_31")
///                     .description("Expiring at midnight of 2019-12-31")
///                     .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                     .build())
///                 .build())
///             .build());
///
///         var policy = new SubnetworkIAMPolicy("policy", SubnetworkIAMPolicyArgs.builder()
///             .project(network_with_private_secondary_ip_ranges.project())
///             .region(network_with_private_secondary_ip_ranges.region())
///             .subnetwork(network_with_private_secondary_ip_ranges.name())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:SubnetworkIAMPolicy
///     properties:
///       project: ${["network-with-private-secondary-ip-ranges"].project}
///       region: ${["network-with-private-secondary-ip-ranges"].region}
///       subnetwork: ${["network-with-private-secondary-ip-ranges"].name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/compute.networkUser
///             members:
///               - user:jane@example.com
///             condition:
///               title: expires_after_2019_12_31
///               description: Expiring at midnight of 2019-12-31
///               expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.compute.SubnetworkIAMBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.SubnetworkIAMBinding("binding", {
///     project: network_with_private_secondary_ip_ranges.project,
///     region: network_with_private_secondary_ip_ranges.region,
///     subnetwork: network_with_private_secondary_ip_ranges.name,
///     role: "roles/compute.networkUser",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.SubnetworkIAMBinding("binding",
///     project=network_with_private_secondary_ip_ranges["project"],
///     region=network_with_private_secondary_ip_ranges["region"],
///     subnetwork=network_with_private_secondary_ip_ranges["name"],
///     role="roles/compute.networkUser",
///     members=["user:jane@example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var binding = new Gcp.Compute.SubnetworkIAMBinding("binding", new()
///     {
///         Project = network_with_private_secondary_ip_ranges.Project,
///         Region = network_with_private_secondary_ip_ranges.Region,
///         Subnetwork = network_with_private_secondary_ip_ranges.Name,
///         Role = "roles/compute.networkUser",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewSubnetworkIAMBinding(ctx, "binding", &compute.SubnetworkIAMBindingArgs{
/// 			Project:    pulumi.Any(network_with_private_secondary_ip_ranges.Project),
/// 			Region:     pulumi.Any(network_with_private_secondary_ip_ranges.Region),
/// 			Subnetwork: pulumi.Any(network_with_private_secondary_ip_ranges.Name),
/// 			Role:       pulumi.String("roles/compute.networkUser"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var binding = new SubnetworkIAMBinding("binding", SubnetworkIAMBindingArgs.builder()
///             .project(network_with_private_secondary_ip_ranges.project())
///             .region(network_with_private_secondary_ip_ranges.region())
///             .subnetwork(network_with_private_secondary_ip_ranges.name())
///             .role("roles/compute.networkUser")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:compute:SubnetworkIAMBinding
///     properties:
///       project: ${["network-with-private-secondary-ip-ranges"].project}
///       region: ${["network-with-private-secondary-ip-ranges"].region}
///       subnetwork: ${["network-with-private-secondary-ip-ranges"].name}
///       role: roles/compute.networkUser
///       members:
///         - user:jane@example.com
/// ```
///
///
/// With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.SubnetworkIAMBinding("binding", {
///     project: network_with_private_secondary_ip_ranges.project,
///     region: network_with_private_secondary_ip_ranges.region,
///     subnetwork: network_with_private_secondary_ip_ranges.name,
///     role: "roles/compute.networkUser",
///     members: ["user:jane@example.com"],
///     condition: {
///         title: "expires_after_2019_12_31",
///         description: "Expiring at midnight of 2019-12-31",
///         expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.SubnetworkIAMBinding("binding",
///     project=network_with_private_secondary_ip_ranges["project"],
///     region=network_with_private_secondary_ip_ranges["region"],
///     subnetwork=network_with_private_secondary_ip_ranges["name"],
///     role="roles/compute.networkUser",
///     members=["user:jane@example.com"],
///     condition={
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var binding = new Gcp.Compute.SubnetworkIAMBinding("binding", new()
///     {
///         Project = network_with_private_secondary_ip_ranges.Project,
///         Region = network_with_private_secondary_ip_ranges.Region,
///         Subnetwork = network_with_private_secondary_ip_ranges.Name,
///         Role = "roles/compute.networkUser",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Compute.Inputs.SubnetworkIAMBindingConditionArgs
///         {
///             Title = "expires_after_2019_12_31",
///             Description = "Expiring at midnight of 2019-12-31",
///             Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewSubnetworkIAMBinding(ctx, "binding", &compute.SubnetworkIAMBindingArgs{
/// 			Project:    pulumi.Any(network_with_private_secondary_ip_ranges.Project),
/// 			Region:     pulumi.Any(network_with_private_secondary_ip_ranges.Region),
/// 			Subnetwork: pulumi.Any(network_with_private_secondary_ip_ranges.Name),
/// 			Role:       pulumi.String("roles/compute.networkUser"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &compute.SubnetworkIAMBindingConditionArgs{
/// 				Title:       pulumi.String("expires_after_2019_12_31"),
/// 				Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// 				Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var binding = new SubnetworkIAMBinding("binding", SubnetworkIAMBindingArgs.builder()
///             .project(network_with_private_secondary_ip_ranges.project())
///             .region(network_with_private_secondary_ip_ranges.region())
///             .subnetwork(network_with_private_secondary_ip_ranges.name())
///             .role("roles/compute.networkUser")
///             .members("user:jane@example.com")
///             .condition(SubnetworkIAMBindingConditionArgs.builder()
///                 .title("expires_after_2019_12_31")
///                 .description("Expiring at midnight of 2019-12-31")
///                 .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:compute:SubnetworkIAMBinding
///     properties:
///       project: ${["network-with-private-secondary-ip-ranges"].project}
///       region: ${["network-with-private-secondary-ip-ranges"].region}
///       subnetwork: ${["network-with-private-secondary-ip-ranges"].name}
///       role: roles/compute.networkUser
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.compute.SubnetworkIAMMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.SubnetworkIAMMember("member", {
///     project: network_with_private_secondary_ip_ranges.project,
///     region: network_with_private_secondary_ip_ranges.region,
///     subnetwork: network_with_private_secondary_ip_ranges.name,
///     role: "roles/compute.networkUser",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.SubnetworkIAMMember("member",
///     project=network_with_private_secondary_ip_ranges["project"],
///     region=network_with_private_secondary_ip_ranges["region"],
///     subnetwork=network_with_private_secondary_ip_ranges["name"],
///     role="roles/compute.networkUser",
///     member="user:jane@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var member = new Gcp.Compute.SubnetworkIAMMember("member", new()
///     {
///         Project = network_with_private_secondary_ip_ranges.Project,
///         Region = network_with_private_secondary_ip_ranges.Region,
///         Subnetwork = network_with_private_secondary_ip_ranges.Name,
///         Role = "roles/compute.networkUser",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewSubnetworkIAMMember(ctx, "member", &compute.SubnetworkIAMMemberArgs{
/// 			Project:    pulumi.Any(network_with_private_secondary_ip_ranges.Project),
/// 			Region:     pulumi.Any(network_with_private_secondary_ip_ranges.Region),
/// 			Subnetwork: pulumi.Any(network_with_private_secondary_ip_ranges.Name),
/// 			Role:       pulumi.String("roles/compute.networkUser"),
/// 			Member:     pulumi.String("user:jane@example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var member = new SubnetworkIAMMember("member", SubnetworkIAMMemberArgs.builder()
///             .project(network_with_private_secondary_ip_ranges.project())
///             .region(network_with_private_secondary_ip_ranges.region())
///             .subnetwork(network_with_private_secondary_ip_ranges.name())
///             .role("roles/compute.networkUser")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:compute:SubnetworkIAMMember
///     properties:
///       project: ${["network-with-private-secondary-ip-ranges"].project}
///       region: ${["network-with-private-secondary-ip-ranges"].region}
///       subnetwork: ${["network-with-private-secondary-ip-ranges"].name}
///       role: roles/compute.networkUser
///       member: user:jane@example.com
/// ```
///
///
/// With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.SubnetworkIAMMember("member", {
///     project: network_with_private_secondary_ip_ranges.project,
///     region: network_with_private_secondary_ip_ranges.region,
///     subnetwork: network_with_private_secondary_ip_ranges.name,
///     role: "roles/compute.networkUser",
///     member: "user:jane@example.com",
///     condition: {
///         title: "expires_after_2019_12_31",
///         description: "Expiring at midnight of 2019-12-31",
///         expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.SubnetworkIAMMember("member",
///     project=network_with_private_secondary_ip_ranges["project"],
///     region=network_with_private_secondary_ip_ranges["region"],
///     subnetwork=network_with_private_secondary_ip_ranges["name"],
///     role="roles/compute.networkUser",
///     member="user:jane@example.com",
///     condition={
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var member = new Gcp.Compute.SubnetworkIAMMember("member", new()
///     {
///         Project = network_with_private_secondary_ip_ranges.Project,
///         Region = network_with_private_secondary_ip_ranges.Region,
///         Subnetwork = network_with_private_secondary_ip_ranges.Name,
///         Role = "roles/compute.networkUser",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Compute.Inputs.SubnetworkIAMMemberConditionArgs
///         {
///             Title = "expires_after_2019_12_31",
///             Description = "Expiring at midnight of 2019-12-31",
///             Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewSubnetworkIAMMember(ctx, "member", &compute.SubnetworkIAMMemberArgs{
/// 			Project:    pulumi.Any(network_with_private_secondary_ip_ranges.Project),
/// 			Region:     pulumi.Any(network_with_private_secondary_ip_ranges.Region),
/// 			Subnetwork: pulumi.Any(network_with_private_secondary_ip_ranges.Name),
/// 			Role:       pulumi.String("roles/compute.networkUser"),
/// 			Member:     pulumi.String("user:jane@example.com"),
/// 			Condition: &compute.SubnetworkIAMMemberConditionArgs{
/// 				Title:       pulumi.String("expires_after_2019_12_31"),
/// 				Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// 				Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var member = new SubnetworkIAMMember("member", SubnetworkIAMMemberArgs.builder()
///             .project(network_with_private_secondary_ip_ranges.project())
///             .region(network_with_private_secondary_ip_ranges.region())
///             .subnetwork(network_with_private_secondary_ip_ranges.name())
///             .role("roles/compute.networkUser")
///             .member("user:jane@example.com")
///             .condition(SubnetworkIAMMemberConditionArgs.builder()
///                 .title("expires_after_2019_12_31")
///                 .description("Expiring at midnight of 2019-12-31")
///                 .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:compute:SubnetworkIAMMember
///     properties:
///       project: ${["network-with-private-secondary-ip-ranges"].project}
///       region: ${["network-with-private-secondary-ip-ranges"].region}
///       subnetwork: ${["network-with-private-secondary-ip-ranges"].name}
///       role: roles/compute.networkUser
///       member: user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Compute Engine Subnetwork
///
/// Three different resources help you manage your IAM policy for Compute Engine Subnetwork. Each of these resources serves a different use case:
///
/// * `gcp.compute.SubnetworkIAMPolicy`: Authoritative. Sets the IAM policy for the subnetwork and replaces any existing policy already attached.
/// * `gcp.compute.SubnetworkIAMBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the subnetwork are preserved.
/// * `gcp.compute.SubnetworkIAMMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the subnetwork are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.compute.SubnetworkIAMPolicy`: Retrieves the IAM policy for the subnetwork
///
/// > **Note:** `gcp.compute.SubnetworkIAMPolicy` **cannot** be used in conjunction with `gcp.compute.SubnetworkIAMBinding` and `gcp.compute.SubnetworkIAMMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.compute.SubnetworkIAMBinding` resources **can be** used in conjunction with `gcp.compute.SubnetworkIAMMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.compute.SubnetworkIAMPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/compute.networkUser",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.compute.SubnetworkIAMPolicy("policy", {
///     project: network_with_private_secondary_ip_ranges.project,
///     region: network_with_private_secondary_ip_ranges.region,
///     subnetwork: network_with_private_secondary_ip_ranges.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/compute.networkUser",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.compute.SubnetworkIAMPolicy("policy",
///     project=network_with_private_secondary_ip_ranges["project"],
///     region=network_with_private_secondary_ip_ranges["region"],
///     subnetwork=network_with_private_secondary_ip_ranges["name"],
///     policy_data=admin.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var admin = Gcp.Organizations.GetIAMPolicy.Invoke(new()
///     {
///         Bindings = new[]
///         {
///             new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
///             {
///                 Role = "roles/compute.networkUser",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Compute.SubnetworkIAMPolicy("policy", new()
///     {
///         Project = network_with_private_secondary_ip_ranges.Project,
///         Region = network_with_private_secondary_ip_ranges.Region,
///         Subnetwork = network_with_private_secondary_ip_ranges.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/compute.networkUser",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetworkIAMPolicy(ctx, "policy", &compute.SubnetworkIAMPolicyArgs{
/// 			Project:    pulumi.Any(network_with_private_secondary_ip_ranges.Project),
/// 			Region:     pulumi.Any(network_with_private_secondary_ip_ranges.Region),
/// 			Subnetwork: pulumi.Any(network_with_private_secondary_ip_ranges.Name),
/// 			PolicyData: pulumi.String(admin.PolicyData),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var admin = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
///             .bindings(GetIAMPolicyBindingArgs.builder()
///                 .role("roles/compute.networkUser")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new SubnetworkIAMPolicy("policy", SubnetworkIAMPolicyArgs.builder()
///             .project(network_with_private_secondary_ip_ranges.project())
///             .region(network_with_private_secondary_ip_ranges.region())
///             .subnetwork(network_with_private_secondary_ip_ranges.name())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:SubnetworkIAMPolicy
///     properties:
///       project: ${["network-with-private-secondary-ip-ranges"].project}
///       region: ${["network-with-private-secondary-ip-ranges"].region}
///       subnetwork: ${["network-with-private-secondary-ip-ranges"].name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/compute.networkUser
///             members:
///               - user:jane@example.com
/// ```
///
///
/// With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/compute.networkUser",
///         members: ["user:jane@example.com"],
///         condition: {
///             title: "expires_after_2019_12_31",
///             description: "Expiring at midnight of 2019-12-31",
///             expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     }],
/// });
/// const policy = new gcp.compute.SubnetworkIAMPolicy("policy", {
///     project: network_with_private_secondary_ip_ranges.project,
///     region: network_with_private_secondary_ip_ranges.region,
///     subnetwork: network_with_private_secondary_ip_ranges.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/compute.networkUser",
///     "members": ["user:jane@example.com"],
///     "condition": {
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// }])
/// policy = gcp.compute.SubnetworkIAMPolicy("policy",
///     project=network_with_private_secondary_ip_ranges["project"],
///     region=network_with_private_secondary_ip_ranges["region"],
///     subnetwork=network_with_private_secondary_ip_ranges["name"],
///     policy_data=admin.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var admin = Gcp.Organizations.GetIAMPolicy.Invoke(new()
///     {
///         Bindings = new[]
///         {
///             new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
///             {
///                 Role = "roles/compute.networkUser",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///                 Condition = new Gcp.Organizations.Inputs.GetIAMPolicyBindingConditionInputArgs
///                 {
///                     Title = "expires_after_2019_12_31",
///                     Description = "Expiring at midnight of 2019-12-31",
///                     Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Compute.SubnetworkIAMPolicy("policy", new()
///     {
///         Project = network_with_private_secondary_ip_ranges.Project,
///         Region = network_with_private_secondary_ip_ranges.Region,
///         Subnetwork = network_with_private_secondary_ip_ranges.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/compute.networkUser",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 					Condition: {
/// 						Title:       "expires_after_2019_12_31",
/// 						Description: pulumi.StringRef("Expiring at midnight of 2019-12-31"),
/// 						Expression:  "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetworkIAMPolicy(ctx, "policy", &compute.SubnetworkIAMPolicyArgs{
/// 			Project:    pulumi.Any(network_with_private_secondary_ip_ranges.Project),
/// 			Region:     pulumi.Any(network_with_private_secondary_ip_ranges.Region),
/// 			Subnetwork: pulumi.Any(network_with_private_secondary_ip_ranges.Name),
/// 			PolicyData: pulumi.String(admin.PolicyData),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var admin = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
///             .bindings(GetIAMPolicyBindingArgs.builder()
///                 .role("roles/compute.networkUser")
///                 .members("user:jane@example.com")
///                 .condition(GetIAMPolicyBindingConditionArgs.builder()
///                     .title("expires_after_2019_12_31")
///                     .description("Expiring at midnight of 2019-12-31")
///                     .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                     .build())
///                 .build())
///             .build());
///
///         var policy = new SubnetworkIAMPolicy("policy", SubnetworkIAMPolicyArgs.builder()
///             .project(network_with_private_secondary_ip_ranges.project())
///             .region(network_with_private_secondary_ip_ranges.region())
///             .subnetwork(network_with_private_secondary_ip_ranges.name())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:SubnetworkIAMPolicy
///     properties:
///       project: ${["network-with-private-secondary-ip-ranges"].project}
///       region: ${["network-with-private-secondary-ip-ranges"].region}
///       subnetwork: ${["network-with-private-secondary-ip-ranges"].name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/compute.networkUser
///             members:
///               - user:jane@example.com
///             condition:
///               title: expires_after_2019_12_31
///               description: Expiring at midnight of 2019-12-31
///               expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.compute.SubnetworkIAMBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.SubnetworkIAMBinding("binding", {
///     project: network_with_private_secondary_ip_ranges.project,
///     region: network_with_private_secondary_ip_ranges.region,
///     subnetwork: network_with_private_secondary_ip_ranges.name,
///     role: "roles/compute.networkUser",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.SubnetworkIAMBinding("binding",
///     project=network_with_private_secondary_ip_ranges["project"],
///     region=network_with_private_secondary_ip_ranges["region"],
///     subnetwork=network_with_private_secondary_ip_ranges["name"],
///     role="roles/compute.networkUser",
///     members=["user:jane@example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var binding = new Gcp.Compute.SubnetworkIAMBinding("binding", new()
///     {
///         Project = network_with_private_secondary_ip_ranges.Project,
///         Region = network_with_private_secondary_ip_ranges.Region,
///         Subnetwork = network_with_private_secondary_ip_ranges.Name,
///         Role = "roles/compute.networkUser",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewSubnetworkIAMBinding(ctx, "binding", &compute.SubnetworkIAMBindingArgs{
/// 			Project:    pulumi.Any(network_with_private_secondary_ip_ranges.Project),
/// 			Region:     pulumi.Any(network_with_private_secondary_ip_ranges.Region),
/// 			Subnetwork: pulumi.Any(network_with_private_secondary_ip_ranges.Name),
/// 			Role:       pulumi.String("roles/compute.networkUser"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var binding = new SubnetworkIAMBinding("binding", SubnetworkIAMBindingArgs.builder()
///             .project(network_with_private_secondary_ip_ranges.project())
///             .region(network_with_private_secondary_ip_ranges.region())
///             .subnetwork(network_with_private_secondary_ip_ranges.name())
///             .role("roles/compute.networkUser")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:compute:SubnetworkIAMBinding
///     properties:
///       project: ${["network-with-private-secondary-ip-ranges"].project}
///       region: ${["network-with-private-secondary-ip-ranges"].region}
///       subnetwork: ${["network-with-private-secondary-ip-ranges"].name}
///       role: roles/compute.networkUser
///       members:
///         - user:jane@example.com
/// ```
///
///
/// With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.SubnetworkIAMBinding("binding", {
///     project: network_with_private_secondary_ip_ranges.project,
///     region: network_with_private_secondary_ip_ranges.region,
///     subnetwork: network_with_private_secondary_ip_ranges.name,
///     role: "roles/compute.networkUser",
///     members: ["user:jane@example.com"],
///     condition: {
///         title: "expires_after_2019_12_31",
///         description: "Expiring at midnight of 2019-12-31",
///         expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.SubnetworkIAMBinding("binding",
///     project=network_with_private_secondary_ip_ranges["project"],
///     region=network_with_private_secondary_ip_ranges["region"],
///     subnetwork=network_with_private_secondary_ip_ranges["name"],
///     role="roles/compute.networkUser",
///     members=["user:jane@example.com"],
///     condition={
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var binding = new Gcp.Compute.SubnetworkIAMBinding("binding", new()
///     {
///         Project = network_with_private_secondary_ip_ranges.Project,
///         Region = network_with_private_secondary_ip_ranges.Region,
///         Subnetwork = network_with_private_secondary_ip_ranges.Name,
///         Role = "roles/compute.networkUser",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Compute.Inputs.SubnetworkIAMBindingConditionArgs
///         {
///             Title = "expires_after_2019_12_31",
///             Description = "Expiring at midnight of 2019-12-31",
///             Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewSubnetworkIAMBinding(ctx, "binding", &compute.SubnetworkIAMBindingArgs{
/// 			Project:    pulumi.Any(network_with_private_secondary_ip_ranges.Project),
/// 			Region:     pulumi.Any(network_with_private_secondary_ip_ranges.Region),
/// 			Subnetwork: pulumi.Any(network_with_private_secondary_ip_ranges.Name),
/// 			Role:       pulumi.String("roles/compute.networkUser"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &compute.SubnetworkIAMBindingConditionArgs{
/// 				Title:       pulumi.String("expires_after_2019_12_31"),
/// 				Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// 				Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var binding = new SubnetworkIAMBinding("binding", SubnetworkIAMBindingArgs.builder()
///             .project(network_with_private_secondary_ip_ranges.project())
///             .region(network_with_private_secondary_ip_ranges.region())
///             .subnetwork(network_with_private_secondary_ip_ranges.name())
///             .role("roles/compute.networkUser")
///             .members("user:jane@example.com")
///             .condition(SubnetworkIAMBindingConditionArgs.builder()
///                 .title("expires_after_2019_12_31")
///                 .description("Expiring at midnight of 2019-12-31")
///                 .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:compute:SubnetworkIAMBinding
///     properties:
///       project: ${["network-with-private-secondary-ip-ranges"].project}
///       region: ${["network-with-private-secondary-ip-ranges"].region}
///       subnetwork: ${["network-with-private-secondary-ip-ranges"].name}
///       role: roles/compute.networkUser
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.compute.SubnetworkIAMMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.SubnetworkIAMMember("member", {
///     project: network_with_private_secondary_ip_ranges.project,
///     region: network_with_private_secondary_ip_ranges.region,
///     subnetwork: network_with_private_secondary_ip_ranges.name,
///     role: "roles/compute.networkUser",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.SubnetworkIAMMember("member",
///     project=network_with_private_secondary_ip_ranges["project"],
///     region=network_with_private_secondary_ip_ranges["region"],
///     subnetwork=network_with_private_secondary_ip_ranges["name"],
///     role="roles/compute.networkUser",
///     member="user:jane@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var member = new Gcp.Compute.SubnetworkIAMMember("member", new()
///     {
///         Project = network_with_private_secondary_ip_ranges.Project,
///         Region = network_with_private_secondary_ip_ranges.Region,
///         Subnetwork = network_with_private_secondary_ip_ranges.Name,
///         Role = "roles/compute.networkUser",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewSubnetworkIAMMember(ctx, "member", &compute.SubnetworkIAMMemberArgs{
/// 			Project:    pulumi.Any(network_with_private_secondary_ip_ranges.Project),
/// 			Region:     pulumi.Any(network_with_private_secondary_ip_ranges.Region),
/// 			Subnetwork: pulumi.Any(network_with_private_secondary_ip_ranges.Name),
/// 			Role:       pulumi.String("roles/compute.networkUser"),
/// 			Member:     pulumi.String("user:jane@example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var member = new SubnetworkIAMMember("member", SubnetworkIAMMemberArgs.builder()
///             .project(network_with_private_secondary_ip_ranges.project())
///             .region(network_with_private_secondary_ip_ranges.region())
///             .subnetwork(network_with_private_secondary_ip_ranges.name())
///             .role("roles/compute.networkUser")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:compute:SubnetworkIAMMember
///     properties:
///       project: ${["network-with-private-secondary-ip-ranges"].project}
///       region: ${["network-with-private-secondary-ip-ranges"].region}
///       subnetwork: ${["network-with-private-secondary-ip-ranges"].name}
///       role: roles/compute.networkUser
///       member: user:jane@example.com
/// ```
///
///
/// With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.SubnetworkIAMMember("member", {
///     project: network_with_private_secondary_ip_ranges.project,
///     region: network_with_private_secondary_ip_ranges.region,
///     subnetwork: network_with_private_secondary_ip_ranges.name,
///     role: "roles/compute.networkUser",
///     member: "user:jane@example.com",
///     condition: {
///         title: "expires_after_2019_12_31",
///         description: "Expiring at midnight of 2019-12-31",
///         expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.SubnetworkIAMMember("member",
///     project=network_with_private_secondary_ip_ranges["project"],
///     region=network_with_private_secondary_ip_ranges["region"],
///     subnetwork=network_with_private_secondary_ip_ranges["name"],
///     role="roles/compute.networkUser",
///     member="user:jane@example.com",
///     condition={
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var member = new Gcp.Compute.SubnetworkIAMMember("member", new()
///     {
///         Project = network_with_private_secondary_ip_ranges.Project,
///         Region = network_with_private_secondary_ip_ranges.Region,
///         Subnetwork = network_with_private_secondary_ip_ranges.Name,
///         Role = "roles/compute.networkUser",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Compute.Inputs.SubnetworkIAMMemberConditionArgs
///         {
///             Title = "expires_after_2019_12_31",
///             Description = "Expiring at midnight of 2019-12-31",
///             Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewSubnetworkIAMMember(ctx, "member", &compute.SubnetworkIAMMemberArgs{
/// 			Project:    pulumi.Any(network_with_private_secondary_ip_ranges.Project),
/// 			Region:     pulumi.Any(network_with_private_secondary_ip_ranges.Region),
/// 			Subnetwork: pulumi.Any(network_with_private_secondary_ip_ranges.Name),
/// 			Role:       pulumi.String("roles/compute.networkUser"),
/// 			Member:     pulumi.String("user:jane@example.com"),
/// 			Condition: &compute.SubnetworkIAMMemberConditionArgs{
/// 				Title:       pulumi.String("expires_after_2019_12_31"),
/// 				Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// 				Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var member = new SubnetworkIAMMember("member", SubnetworkIAMMemberArgs.builder()
///             .project(network_with_private_secondary_ip_ranges.project())
///             .region(network_with_private_secondary_ip_ranges.region())
///             .subnetwork(network_with_private_secondary_ip_ranges.name())
///             .role("roles/compute.networkUser")
///             .member("user:jane@example.com")
///             .condition(SubnetworkIAMMemberConditionArgs.builder()
///                 .title("expires_after_2019_12_31")
///                 .description("Expiring at midnight of 2019-12-31")
///                 .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:compute:SubnetworkIAMMember
///     properties:
///       project: ${["network-with-private-secondary-ip-ranges"].project}
///       region: ${["network-with-private-secondary-ip-ranges"].region}
///       subnetwork: ${["network-with-private-secondary-ip-ranges"].name}
///       role: roles/compute.networkUser
///       member: user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
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
class SubnetworkIAMPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// The GCP region for this subnetwork.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> region;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> subnetwork;

  /// Creates a new [SubnetworkIAMPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubnetworkIAMPolicy]. {@macro pulumi_compute_subnetwork_iampolicy_subnetwork_iampolicy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubnetworkIAMPolicy(
    String name, {
    SubnetworkIAMPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/subnetworkIAMPolicy:SubnetworkIAMPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.subnetwork = registerOutput<String>('subnetwork');
  }
}
