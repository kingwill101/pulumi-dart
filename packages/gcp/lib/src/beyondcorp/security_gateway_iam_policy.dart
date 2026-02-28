import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_gateway_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for BeyondCorp SecurityGateway. Each of these resources serves a different use case:
///
/// * `gcp.beyondcorp.SecurityGatewayIamPolicy`: Authoritative. Sets the IAM policy for the securitygateway and replaces any existing policy already attached.
/// * `gcp.beyondcorp.SecurityGatewayIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the securitygateway are preserved.
/// * `gcp.beyondcorp.SecurityGatewayIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the securitygateway are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.beyondcorp.SecurityGatewayIamPolicy`: Retrieves the IAM policy for the securitygateway
///
/// > **Note:** `gcp.beyondcorp.SecurityGatewayIamPolicy` **cannot** be used in conjunction with `gcp.beyondcorp.SecurityGatewayIamBinding` and `gcp.beyondcorp.SecurityGatewayIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.beyondcorp.SecurityGatewayIamBinding` resources **can be** used in conjunction with `gcp.beyondcorp.SecurityGatewayIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.beyondcorp.SecurityGatewayIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/beyondcorp.securityGatewayUser",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.beyondcorp.SecurityGatewayIamPolicy("policy", {
///     project: example.project,
///     location: example.location,
///     securityGatewayId: example.securityGatewayId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/beyondcorp.securityGatewayUser",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.beyondcorp.SecurityGatewayIamPolicy("policy",
///     project=example["project"],
///     location=example["location"],
///     security_gateway_id=example["securityGatewayId"],
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
///                 Role = "roles/beyondcorp.securityGatewayUser",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Beyondcorp.SecurityGatewayIamPolicy("policy", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         SecurityGatewayId = example.SecurityGatewayId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/beyondcorp.securityGatewayUser",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = beyondcorp.NewSecurityGatewayIamPolicy(ctx, "policy", &beyondcorp.SecurityGatewayIamPolicyArgs{
/// 			Project:           pulumi.Any(example.Project),
/// 			Location:          pulumi.Any(example.Location),
/// 			SecurityGatewayId: pulumi.Any(example.SecurityGatewayId),
/// 			PolicyData:        pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayIamPolicy;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayIamPolicyArgs;
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
///                 .role("roles/beyondcorp.securityGatewayUser")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new SecurityGatewayIamPolicy("policy", SecurityGatewayIamPolicyArgs.builder()
///             .project(example.project())
///             .location(example.location())
///             .securityGatewayId(example.securityGatewayId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:beyondcorp:SecurityGatewayIamPolicy
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       securityGatewayId: ${example.securityGatewayId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/beyondcorp.securityGatewayUser
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
///         role: "roles/beyondcorp.securityGatewayUser",
///         members: ["user:jane@example.com"],
///         condition: {
///             title: "expires_after_2019_12_31",
///             description: "Expiring at midnight of 2019-12-31",
///             expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     }],
/// });
/// const policy = new gcp.beyondcorp.SecurityGatewayIamPolicy("policy", {
///     project: example.project,
///     location: example.location,
///     securityGatewayId: example.securityGatewayId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/beyondcorp.securityGatewayUser",
///     "members": ["user:jane@example.com"],
///     "condition": {
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// }])
/// policy = gcp.beyondcorp.SecurityGatewayIamPolicy("policy",
///     project=example["project"],
///     location=example["location"],
///     security_gateway_id=example["securityGatewayId"],
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
///                 Role = "roles/beyondcorp.securityGatewayUser",
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
///     var policy = new Gcp.Beyondcorp.SecurityGatewayIamPolicy("policy", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         SecurityGatewayId = example.SecurityGatewayId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/beyondcorp.securityGatewayUser",
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
/// 		_, err = beyondcorp.NewSecurityGatewayIamPolicy(ctx, "policy", &beyondcorp.SecurityGatewayIamPolicyArgs{
/// 			Project:           pulumi.Any(example.Project),
/// 			Location:          pulumi.Any(example.Location),
/// 			SecurityGatewayId: pulumi.Any(example.SecurityGatewayId),
/// 			PolicyData:        pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayIamPolicy;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayIamPolicyArgs;
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
///                 .role("roles/beyondcorp.securityGatewayUser")
///                 .members("user:jane@example.com")
///                 .condition(GetIAMPolicyBindingConditionArgs.builder()
///                     .title("expires_after_2019_12_31")
///                     .description("Expiring at midnight of 2019-12-31")
///                     .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                     .build())
///                 .build())
///             .build());
///
///         var policy = new SecurityGatewayIamPolicy("policy", SecurityGatewayIamPolicyArgs.builder()
///             .project(example.project())
///             .location(example.location())
///             .securityGatewayId(example.securityGatewayId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:beyondcorp:SecurityGatewayIamPolicy
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       securityGatewayId: ${example.securityGatewayId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/beyondcorp.securityGatewayUser
///             members:
///               - user:jane@example.com
///             condition:
///               title: expires_after_2019_12_31
///               description: Expiring at midnight of 2019-12-31
///               expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.beyondcorp.SecurityGatewayIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.beyondcorp.SecurityGatewayIamBinding("binding", {
///     project: example.project,
///     location: example.location,
///     securityGatewayId: example.securityGatewayId,
///     role: "roles/beyondcorp.securityGatewayUser",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.beyondcorp.SecurityGatewayIamBinding("binding",
///     project=example["project"],
///     location=example["location"],
///     security_gateway_id=example["securityGatewayId"],
///     role="roles/beyondcorp.securityGatewayUser",
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
///     var binding = new Gcp.Beyondcorp.SecurityGatewayIamBinding("binding", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         SecurityGatewayId = example.SecurityGatewayId,
///         Role = "roles/beyondcorp.securityGatewayUser",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := beyondcorp.NewSecurityGatewayIamBinding(ctx, "binding", &beyondcorp.SecurityGatewayIamBindingArgs{
/// 			Project:           pulumi.Any(example.Project),
/// 			Location:          pulumi.Any(example.Location),
/// 			SecurityGatewayId: pulumi.Any(example.SecurityGatewayId),
/// 			Role:              pulumi.String("roles/beyondcorp.securityGatewayUser"),
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
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayIamBinding;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayIamBindingArgs;
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
///         var binding = new SecurityGatewayIamBinding("binding", SecurityGatewayIamBindingArgs.builder()
///             .project(example.project())
///             .location(example.location())
///             .securityGatewayId(example.securityGatewayId())
///             .role("roles/beyondcorp.securityGatewayUser")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:beyondcorp:SecurityGatewayIamBinding
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       securityGatewayId: ${example.securityGatewayId}
///       role: roles/beyondcorp.securityGatewayUser
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
/// const binding = new gcp.beyondcorp.SecurityGatewayIamBinding("binding", {
///     project: example.project,
///     location: example.location,
///     securityGatewayId: example.securityGatewayId,
///     role: "roles/beyondcorp.securityGatewayUser",
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
/// binding = gcp.beyondcorp.SecurityGatewayIamBinding("binding",
///     project=example["project"],
///     location=example["location"],
///     security_gateway_id=example["securityGatewayId"],
///     role="roles/beyondcorp.securityGatewayUser",
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
///     var binding = new Gcp.Beyondcorp.SecurityGatewayIamBinding("binding", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         SecurityGatewayId = example.SecurityGatewayId,
///         Role = "roles/beyondcorp.securityGatewayUser",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Beyondcorp.Inputs.SecurityGatewayIamBindingConditionArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := beyondcorp.NewSecurityGatewayIamBinding(ctx, "binding", &beyondcorp.SecurityGatewayIamBindingArgs{
/// 			Project:           pulumi.Any(example.Project),
/// 			Location:          pulumi.Any(example.Location),
/// 			SecurityGatewayId: pulumi.Any(example.SecurityGatewayId),
/// 			Role:              pulumi.String("roles/beyondcorp.securityGatewayUser"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &beyondcorp.SecurityGatewayIamBindingConditionArgs{
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
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayIamBinding;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayIamBindingArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayIamBindingConditionArgs;
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
///         var binding = new SecurityGatewayIamBinding("binding", SecurityGatewayIamBindingArgs.builder()
///             .project(example.project())
///             .location(example.location())
///             .securityGatewayId(example.securityGatewayId())
///             .role("roles/beyondcorp.securityGatewayUser")
///             .members("user:jane@example.com")
///             .condition(SecurityGatewayIamBindingConditionArgs.builder()
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
///     type: gcp:beyondcorp:SecurityGatewayIamBinding
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       securityGatewayId: ${example.securityGatewayId}
///       role: roles/beyondcorp.securityGatewayUser
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.beyondcorp.SecurityGatewayIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.beyondcorp.SecurityGatewayIamMember("member", {
///     project: example.project,
///     location: example.location,
///     securityGatewayId: example.securityGatewayId,
///     role: "roles/beyondcorp.securityGatewayUser",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.beyondcorp.SecurityGatewayIamMember("member",
///     project=example["project"],
///     location=example["location"],
///     security_gateway_id=example["securityGatewayId"],
///     role="roles/beyondcorp.securityGatewayUser",
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
///     var member = new Gcp.Beyondcorp.SecurityGatewayIamMember("member", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         SecurityGatewayId = example.SecurityGatewayId,
///         Role = "roles/beyondcorp.securityGatewayUser",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := beyondcorp.NewSecurityGatewayIamMember(ctx, "member", &beyondcorp.SecurityGatewayIamMemberArgs{
/// 			Project:           pulumi.Any(example.Project),
/// 			Location:          pulumi.Any(example.Location),
/// 			SecurityGatewayId: pulumi.Any(example.SecurityGatewayId),
/// 			Role:              pulumi.String("roles/beyondcorp.securityGatewayUser"),
/// 			Member:            pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayIamMember;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayIamMemberArgs;
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
///         var member = new SecurityGatewayIamMember("member", SecurityGatewayIamMemberArgs.builder()
///             .project(example.project())
///             .location(example.location())
///             .securityGatewayId(example.securityGatewayId())
///             .role("roles/beyondcorp.securityGatewayUser")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:beyondcorp:SecurityGatewayIamMember
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       securityGatewayId: ${example.securityGatewayId}
///       role: roles/beyondcorp.securityGatewayUser
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
/// const member = new gcp.beyondcorp.SecurityGatewayIamMember("member", {
///     project: example.project,
///     location: example.location,
///     securityGatewayId: example.securityGatewayId,
///     role: "roles/beyondcorp.securityGatewayUser",
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
/// member = gcp.beyondcorp.SecurityGatewayIamMember("member",
///     project=example["project"],
///     location=example["location"],
///     security_gateway_id=example["securityGatewayId"],
///     role="roles/beyondcorp.securityGatewayUser",
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
///     var member = new Gcp.Beyondcorp.SecurityGatewayIamMember("member", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         SecurityGatewayId = example.SecurityGatewayId,
///         Role = "roles/beyondcorp.securityGatewayUser",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Beyondcorp.Inputs.SecurityGatewayIamMemberConditionArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := beyondcorp.NewSecurityGatewayIamMember(ctx, "member", &beyondcorp.SecurityGatewayIamMemberArgs{
/// 			Project:           pulumi.Any(example.Project),
/// 			Location:          pulumi.Any(example.Location),
/// 			SecurityGatewayId: pulumi.Any(example.SecurityGatewayId),
/// 			Role:              pulumi.String("roles/beyondcorp.securityGatewayUser"),
/// 			Member:            pulumi.String("user:jane@example.com"),
/// 			Condition: &beyondcorp.SecurityGatewayIamMemberConditionArgs{
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
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayIamMember;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayIamMemberArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayIamMemberConditionArgs;
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
///         var member = new SecurityGatewayIamMember("member", SecurityGatewayIamMemberArgs.builder()
///             .project(example.project())
///             .location(example.location())
///             .securityGatewayId(example.securityGatewayId())
///             .role("roles/beyondcorp.securityGatewayUser")
///             .member("user:jane@example.com")
///             .condition(SecurityGatewayIamMemberConditionArgs.builder()
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
///     type: gcp:beyondcorp:SecurityGatewayIamMember
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       securityGatewayId: ${example.securityGatewayId}
///       role: roles/beyondcorp.securityGatewayUser
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
/// # IAM policy for BeyondCorp SecurityGateway
///
/// Three different resources help you manage your IAM policy for BeyondCorp SecurityGateway. Each of these resources serves a different use case:
///
/// * `gcp.beyondcorp.SecurityGatewayIamPolicy`: Authoritative. Sets the IAM policy for the securitygateway and replaces any existing policy already attached.
/// * `gcp.beyondcorp.SecurityGatewayIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the securitygateway are preserved.
/// * `gcp.beyondcorp.SecurityGatewayIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the securitygateway are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.beyondcorp.SecurityGatewayIamPolicy`: Retrieves the IAM policy for the securitygateway
///
/// > **Note:** `gcp.beyondcorp.SecurityGatewayIamPolicy` **cannot** be used in conjunction with `gcp.beyondcorp.SecurityGatewayIamBinding` and `gcp.beyondcorp.SecurityGatewayIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.beyondcorp.SecurityGatewayIamBinding` resources **can be** used in conjunction with `gcp.beyondcorp.SecurityGatewayIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.beyondcorp.SecurityGatewayIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/beyondcorp.securityGatewayUser",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.beyondcorp.SecurityGatewayIamPolicy("policy", {
///     project: example.project,
///     location: example.location,
///     securityGatewayId: example.securityGatewayId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/beyondcorp.securityGatewayUser",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.beyondcorp.SecurityGatewayIamPolicy("policy",
///     project=example["project"],
///     location=example["location"],
///     security_gateway_id=example["securityGatewayId"],
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
///                 Role = "roles/beyondcorp.securityGatewayUser",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Beyondcorp.SecurityGatewayIamPolicy("policy", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         SecurityGatewayId = example.SecurityGatewayId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/beyondcorp.securityGatewayUser",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = beyondcorp.NewSecurityGatewayIamPolicy(ctx, "policy", &beyondcorp.SecurityGatewayIamPolicyArgs{
/// 			Project:           pulumi.Any(example.Project),
/// 			Location:          pulumi.Any(example.Location),
/// 			SecurityGatewayId: pulumi.Any(example.SecurityGatewayId),
/// 			PolicyData:        pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayIamPolicy;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayIamPolicyArgs;
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
///                 .role("roles/beyondcorp.securityGatewayUser")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new SecurityGatewayIamPolicy("policy", SecurityGatewayIamPolicyArgs.builder()
///             .project(example.project())
///             .location(example.location())
///             .securityGatewayId(example.securityGatewayId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:beyondcorp:SecurityGatewayIamPolicy
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       securityGatewayId: ${example.securityGatewayId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/beyondcorp.securityGatewayUser
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
///         role: "roles/beyondcorp.securityGatewayUser",
///         members: ["user:jane@example.com"],
///         condition: {
///             title: "expires_after_2019_12_31",
///             description: "Expiring at midnight of 2019-12-31",
///             expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     }],
/// });
/// const policy = new gcp.beyondcorp.SecurityGatewayIamPolicy("policy", {
///     project: example.project,
///     location: example.location,
///     securityGatewayId: example.securityGatewayId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/beyondcorp.securityGatewayUser",
///     "members": ["user:jane@example.com"],
///     "condition": {
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// }])
/// policy = gcp.beyondcorp.SecurityGatewayIamPolicy("policy",
///     project=example["project"],
///     location=example["location"],
///     security_gateway_id=example["securityGatewayId"],
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
///                 Role = "roles/beyondcorp.securityGatewayUser",
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
///     var policy = new Gcp.Beyondcorp.SecurityGatewayIamPolicy("policy", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         SecurityGatewayId = example.SecurityGatewayId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/beyondcorp.securityGatewayUser",
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
/// 		_, err = beyondcorp.NewSecurityGatewayIamPolicy(ctx, "policy", &beyondcorp.SecurityGatewayIamPolicyArgs{
/// 			Project:           pulumi.Any(example.Project),
/// 			Location:          pulumi.Any(example.Location),
/// 			SecurityGatewayId: pulumi.Any(example.SecurityGatewayId),
/// 			PolicyData:        pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayIamPolicy;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayIamPolicyArgs;
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
///                 .role("roles/beyondcorp.securityGatewayUser")
///                 .members("user:jane@example.com")
///                 .condition(GetIAMPolicyBindingConditionArgs.builder()
///                     .title("expires_after_2019_12_31")
///                     .description("Expiring at midnight of 2019-12-31")
///                     .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                     .build())
///                 .build())
///             .build());
///
///         var policy = new SecurityGatewayIamPolicy("policy", SecurityGatewayIamPolicyArgs.builder()
///             .project(example.project())
///             .location(example.location())
///             .securityGatewayId(example.securityGatewayId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:beyondcorp:SecurityGatewayIamPolicy
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       securityGatewayId: ${example.securityGatewayId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/beyondcorp.securityGatewayUser
///             members:
///               - user:jane@example.com
///             condition:
///               title: expires_after_2019_12_31
///               description: Expiring at midnight of 2019-12-31
///               expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.beyondcorp.SecurityGatewayIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.beyondcorp.SecurityGatewayIamBinding("binding", {
///     project: example.project,
///     location: example.location,
///     securityGatewayId: example.securityGatewayId,
///     role: "roles/beyondcorp.securityGatewayUser",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.beyondcorp.SecurityGatewayIamBinding("binding",
///     project=example["project"],
///     location=example["location"],
///     security_gateway_id=example["securityGatewayId"],
///     role="roles/beyondcorp.securityGatewayUser",
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
///     var binding = new Gcp.Beyondcorp.SecurityGatewayIamBinding("binding", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         SecurityGatewayId = example.SecurityGatewayId,
///         Role = "roles/beyondcorp.securityGatewayUser",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := beyondcorp.NewSecurityGatewayIamBinding(ctx, "binding", &beyondcorp.SecurityGatewayIamBindingArgs{
/// 			Project:           pulumi.Any(example.Project),
/// 			Location:          pulumi.Any(example.Location),
/// 			SecurityGatewayId: pulumi.Any(example.SecurityGatewayId),
/// 			Role:              pulumi.String("roles/beyondcorp.securityGatewayUser"),
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
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayIamBinding;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayIamBindingArgs;
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
///         var binding = new SecurityGatewayIamBinding("binding", SecurityGatewayIamBindingArgs.builder()
///             .project(example.project())
///             .location(example.location())
///             .securityGatewayId(example.securityGatewayId())
///             .role("roles/beyondcorp.securityGatewayUser")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:beyondcorp:SecurityGatewayIamBinding
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       securityGatewayId: ${example.securityGatewayId}
///       role: roles/beyondcorp.securityGatewayUser
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
/// const binding = new gcp.beyondcorp.SecurityGatewayIamBinding("binding", {
///     project: example.project,
///     location: example.location,
///     securityGatewayId: example.securityGatewayId,
///     role: "roles/beyondcorp.securityGatewayUser",
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
/// binding = gcp.beyondcorp.SecurityGatewayIamBinding("binding",
///     project=example["project"],
///     location=example["location"],
///     security_gateway_id=example["securityGatewayId"],
///     role="roles/beyondcorp.securityGatewayUser",
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
///     var binding = new Gcp.Beyondcorp.SecurityGatewayIamBinding("binding", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         SecurityGatewayId = example.SecurityGatewayId,
///         Role = "roles/beyondcorp.securityGatewayUser",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Beyondcorp.Inputs.SecurityGatewayIamBindingConditionArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := beyondcorp.NewSecurityGatewayIamBinding(ctx, "binding", &beyondcorp.SecurityGatewayIamBindingArgs{
/// 			Project:           pulumi.Any(example.Project),
/// 			Location:          pulumi.Any(example.Location),
/// 			SecurityGatewayId: pulumi.Any(example.SecurityGatewayId),
/// 			Role:              pulumi.String("roles/beyondcorp.securityGatewayUser"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &beyondcorp.SecurityGatewayIamBindingConditionArgs{
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
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayIamBinding;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayIamBindingArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayIamBindingConditionArgs;
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
///         var binding = new SecurityGatewayIamBinding("binding", SecurityGatewayIamBindingArgs.builder()
///             .project(example.project())
///             .location(example.location())
///             .securityGatewayId(example.securityGatewayId())
///             .role("roles/beyondcorp.securityGatewayUser")
///             .members("user:jane@example.com")
///             .condition(SecurityGatewayIamBindingConditionArgs.builder()
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
///     type: gcp:beyondcorp:SecurityGatewayIamBinding
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       securityGatewayId: ${example.securityGatewayId}
///       role: roles/beyondcorp.securityGatewayUser
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.beyondcorp.SecurityGatewayIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.beyondcorp.SecurityGatewayIamMember("member", {
///     project: example.project,
///     location: example.location,
///     securityGatewayId: example.securityGatewayId,
///     role: "roles/beyondcorp.securityGatewayUser",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.beyondcorp.SecurityGatewayIamMember("member",
///     project=example["project"],
///     location=example["location"],
///     security_gateway_id=example["securityGatewayId"],
///     role="roles/beyondcorp.securityGatewayUser",
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
///     var member = new Gcp.Beyondcorp.SecurityGatewayIamMember("member", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         SecurityGatewayId = example.SecurityGatewayId,
///         Role = "roles/beyondcorp.securityGatewayUser",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := beyondcorp.NewSecurityGatewayIamMember(ctx, "member", &beyondcorp.SecurityGatewayIamMemberArgs{
/// 			Project:           pulumi.Any(example.Project),
/// 			Location:          pulumi.Any(example.Location),
/// 			SecurityGatewayId: pulumi.Any(example.SecurityGatewayId),
/// 			Role:              pulumi.String("roles/beyondcorp.securityGatewayUser"),
/// 			Member:            pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayIamMember;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayIamMemberArgs;
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
///         var member = new SecurityGatewayIamMember("member", SecurityGatewayIamMemberArgs.builder()
///             .project(example.project())
///             .location(example.location())
///             .securityGatewayId(example.securityGatewayId())
///             .role("roles/beyondcorp.securityGatewayUser")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:beyondcorp:SecurityGatewayIamMember
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       securityGatewayId: ${example.securityGatewayId}
///       role: roles/beyondcorp.securityGatewayUser
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
/// const member = new gcp.beyondcorp.SecurityGatewayIamMember("member", {
///     project: example.project,
///     location: example.location,
///     securityGatewayId: example.securityGatewayId,
///     role: "roles/beyondcorp.securityGatewayUser",
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
/// member = gcp.beyondcorp.SecurityGatewayIamMember("member",
///     project=example["project"],
///     location=example["location"],
///     security_gateway_id=example["securityGatewayId"],
///     role="roles/beyondcorp.securityGatewayUser",
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
///     var member = new Gcp.Beyondcorp.SecurityGatewayIamMember("member", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         SecurityGatewayId = example.SecurityGatewayId,
///         Role = "roles/beyondcorp.securityGatewayUser",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Beyondcorp.Inputs.SecurityGatewayIamMemberConditionArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := beyondcorp.NewSecurityGatewayIamMember(ctx, "member", &beyondcorp.SecurityGatewayIamMemberArgs{
/// 			Project:           pulumi.Any(example.Project),
/// 			Location:          pulumi.Any(example.Location),
/// 			SecurityGatewayId: pulumi.Any(example.SecurityGatewayId),
/// 			Role:              pulumi.String("roles/beyondcorp.securityGatewayUser"),
/// 			Member:            pulumi.String("user:jane@example.com"),
/// 			Condition: &beyondcorp.SecurityGatewayIamMemberConditionArgs{
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
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayIamMember;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayIamMemberArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayIamMemberConditionArgs;
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
///         var member = new SecurityGatewayIamMember("member", SecurityGatewayIamMemberArgs.builder()
///             .project(example.project())
///             .location(example.location())
///             .securityGatewayId(example.securityGatewayId())
///             .role("roles/beyondcorp.securityGatewayUser")
///             .member("user:jane@example.com")
///             .condition(SecurityGatewayIamMemberConditionArgs.builder()
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
///     type: gcp:beyondcorp:SecurityGatewayIamMember
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       securityGatewayId: ${example.securityGatewayId}
///       role: roles/beyondcorp.securityGatewayUser
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
/// * projects/{{project}}/locations/{{location}}/securityGateways/{{security_gateway_id}}
///
/// * {{project}}/{{location}}/{{security_gateway_id}}
///
/// * {{location}}/{{security_gateway_id}}
///
/// * {{security_gateway_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// BeyondCorp securitygateway IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/securityGatewayIamPolicy:SecurityGatewayIamPolicy editor "projects/{{project}}/locations/{{location}}/securityGateways/{{security_gateway_id}} roles/beyondcorp.securityGatewayUser user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/securityGatewayIamPolicy:SecurityGatewayIamPolicy editor "projects/{{project}}/locations/{{location}}/securityGateways/{{security_gateway_id}} roles/beyondcorp.securityGatewayUser"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/securityGatewayIamPolicy:SecurityGatewayIamPolicy editor projects/{{project}}/locations/{{location}}/securityGateways/{{security_gateway_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class SecurityGatewayIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. Must be omitted or set to `global`. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;
  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> securityGatewayId;

  /// Creates a new [SecurityGatewayIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityGatewayIamPolicy]. {@macro pulumi_beyondcorp_security_gateway_iam_policy_security_gateway_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityGatewayIamPolicy(
    String name, {
    SecurityGatewayIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:beyondcorp/securityGatewayIamPolicy:SecurityGatewayIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.securityGatewayId = registerOutput<String>('securityGatewayId');
  }
}
