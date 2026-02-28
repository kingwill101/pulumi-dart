import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for API Gateway Gateway. Each of these resources serves a different use case:
///
/// * `gcp.apigateway.GatewayIamPolicy`: Authoritative. Sets the IAM policy for the gateway and replaces any existing policy already attached.
/// * `gcp.apigateway.GatewayIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the gateway are preserved.
/// * `gcp.apigateway.GatewayIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the gateway are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.apigateway.GatewayIamPolicy`: Retrieves the IAM policy for the gateway
///
/// > **Note:** `gcp.apigateway.GatewayIamPolicy` **cannot** be used in conjunction with `gcp.apigateway.GatewayIamBinding` and `gcp.apigateway.GatewayIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.apigateway.GatewayIamBinding` resources **can be** used in conjunction with `gcp.apigateway.GatewayIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.apigateway.GatewayIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/apigateway.viewer",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.apigateway.GatewayIamPolicy("policy", {
///     project: apiGw.project,
///     region: apiGw.region,
///     gateway: apiGw.gatewayId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/apigateway.viewer",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.apigateway.GatewayIamPolicy("policy",
///     project=api_gw["project"],
///     region=api_gw["region"],
///     gateway=api_gw["gatewayId"],
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
///                 Role = "roles/apigateway.viewer",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.ApiGateway.GatewayIamPolicy("policy", new()
///     {
///         Project = apiGw.Project,
///         Region = apiGw.Region,
///         Gateway = apiGw.GatewayId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigateway"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/apigateway.viewer",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewGatewayIamPolicy(ctx, "policy", &apigateway.GatewayIamPolicyArgs{
/// 			Project:    pulumi.Any(apiGw.Project),
/// 			Region:     pulumi.Any(apiGw.Region),
/// 			Gateway:    pulumi.Any(apiGw.GatewayId),
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
/// import com.pulumi.gcp.apigateway.GatewayIamPolicy;
/// import com.pulumi.gcp.apigateway.GatewayIamPolicyArgs;
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
///                 .role("roles/apigateway.viewer")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new GatewayIamPolicy("policy", GatewayIamPolicyArgs.builder()
///             .project(apiGw.project())
///             .region(apiGw.region())
///             .gateway(apiGw.gatewayId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:apigateway:GatewayIamPolicy
///     properties:
///       project: ${apiGw.project}
///       region: ${apiGw.region}
///       gateway: ${apiGw.gatewayId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/apigateway.viewer
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.apigateway.GatewayIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.apigateway.GatewayIamBinding("binding", {
///     project: apiGw.project,
///     region: apiGw.region,
///     gateway: apiGw.gatewayId,
///     role: "roles/apigateway.viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.apigateway.GatewayIamBinding("binding",
///     project=api_gw["project"],
///     region=api_gw["region"],
///     gateway=api_gw["gatewayId"],
///     role="roles/apigateway.viewer",
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
///     var binding = new Gcp.ApiGateway.GatewayIamBinding("binding", new()
///     {
///         Project = apiGw.Project,
///         Region = apiGw.Region,
///         Gateway = apiGw.GatewayId,
///         Role = "roles/apigateway.viewer",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.NewGatewayIamBinding(ctx, "binding", &apigateway.GatewayIamBindingArgs{
/// 			Project: pulumi.Any(apiGw.Project),
/// 			Region:  pulumi.Any(apiGw.Region),
/// 			Gateway: pulumi.Any(apiGw.GatewayId),
/// 			Role:    pulumi.String("roles/apigateway.viewer"),
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
/// import com.pulumi.gcp.apigateway.GatewayIamBinding;
/// import com.pulumi.gcp.apigateway.GatewayIamBindingArgs;
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
///         var binding = new GatewayIamBinding("binding", GatewayIamBindingArgs.builder()
///             .project(apiGw.project())
///             .region(apiGw.region())
///             .gateway(apiGw.gatewayId())
///             .role("roles/apigateway.viewer")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:apigateway:GatewayIamBinding
///     properties:
///       project: ${apiGw.project}
///       region: ${apiGw.region}
///       gateway: ${apiGw.gatewayId}
///       role: roles/apigateway.viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.apigateway.GatewayIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.apigateway.GatewayIamMember("member", {
///     project: apiGw.project,
///     region: apiGw.region,
///     gateway: apiGw.gatewayId,
///     role: "roles/apigateway.viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.apigateway.GatewayIamMember("member",
///     project=api_gw["project"],
///     region=api_gw["region"],
///     gateway=api_gw["gatewayId"],
///     role="roles/apigateway.viewer",
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
///     var member = new Gcp.ApiGateway.GatewayIamMember("member", new()
///     {
///         Project = apiGw.Project,
///         Region = apiGw.Region,
///         Gateway = apiGw.GatewayId,
///         Role = "roles/apigateway.viewer",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.NewGatewayIamMember(ctx, "member", &apigateway.GatewayIamMemberArgs{
/// 			Project: pulumi.Any(apiGw.Project),
/// 			Region:  pulumi.Any(apiGw.Region),
/// 			Gateway: pulumi.Any(apiGw.GatewayId),
/// 			Role:    pulumi.String("roles/apigateway.viewer"),
/// 			Member:  pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.apigateway.GatewayIamMember;
/// import com.pulumi.gcp.apigateway.GatewayIamMemberArgs;
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
///         var member = new GatewayIamMember("member", GatewayIamMemberArgs.builder()
///             .project(apiGw.project())
///             .region(apiGw.region())
///             .gateway(apiGw.gatewayId())
///             .role("roles/apigateway.viewer")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:apigateway:GatewayIamMember
///     properties:
///       project: ${apiGw.project}
///       region: ${apiGw.region}
///       gateway: ${apiGw.gatewayId}
///       role: roles/apigateway.viewer
///       member: user:jane@example.com
/// ```
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for API Gateway Gateway
///
/// Three different resources help you manage your IAM policy for API Gateway Gateway. Each of these resources serves a different use case:
///
/// * `gcp.apigateway.GatewayIamPolicy`: Authoritative. Sets the IAM policy for the gateway and replaces any existing policy already attached.
/// * `gcp.apigateway.GatewayIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the gateway are preserved.
/// * `gcp.apigateway.GatewayIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the gateway are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.apigateway.GatewayIamPolicy`: Retrieves the IAM policy for the gateway
///
/// > **Note:** `gcp.apigateway.GatewayIamPolicy` **cannot** be used in conjunction with `gcp.apigateway.GatewayIamBinding` and `gcp.apigateway.GatewayIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.apigateway.GatewayIamBinding` resources **can be** used in conjunction with `gcp.apigateway.GatewayIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.apigateway.GatewayIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/apigateway.viewer",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.apigateway.GatewayIamPolicy("policy", {
///     project: apiGw.project,
///     region: apiGw.region,
///     gateway: apiGw.gatewayId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/apigateway.viewer",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.apigateway.GatewayIamPolicy("policy",
///     project=api_gw["project"],
///     region=api_gw["region"],
///     gateway=api_gw["gatewayId"],
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
///                 Role = "roles/apigateway.viewer",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.ApiGateway.GatewayIamPolicy("policy", new()
///     {
///         Project = apiGw.Project,
///         Region = apiGw.Region,
///         Gateway = apiGw.GatewayId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigateway"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/apigateway.viewer",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewGatewayIamPolicy(ctx, "policy", &apigateway.GatewayIamPolicyArgs{
/// 			Project:    pulumi.Any(apiGw.Project),
/// 			Region:     pulumi.Any(apiGw.Region),
/// 			Gateway:    pulumi.Any(apiGw.GatewayId),
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
/// import com.pulumi.gcp.apigateway.GatewayIamPolicy;
/// import com.pulumi.gcp.apigateway.GatewayIamPolicyArgs;
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
///                 .role("roles/apigateway.viewer")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new GatewayIamPolicy("policy", GatewayIamPolicyArgs.builder()
///             .project(apiGw.project())
///             .region(apiGw.region())
///             .gateway(apiGw.gatewayId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:apigateway:GatewayIamPolicy
///     properties:
///       project: ${apiGw.project}
///       region: ${apiGw.region}
///       gateway: ${apiGw.gatewayId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/apigateway.viewer
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.apigateway.GatewayIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.apigateway.GatewayIamBinding("binding", {
///     project: apiGw.project,
///     region: apiGw.region,
///     gateway: apiGw.gatewayId,
///     role: "roles/apigateway.viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.apigateway.GatewayIamBinding("binding",
///     project=api_gw["project"],
///     region=api_gw["region"],
///     gateway=api_gw["gatewayId"],
///     role="roles/apigateway.viewer",
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
///     var binding = new Gcp.ApiGateway.GatewayIamBinding("binding", new()
///     {
///         Project = apiGw.Project,
///         Region = apiGw.Region,
///         Gateway = apiGw.GatewayId,
///         Role = "roles/apigateway.viewer",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.NewGatewayIamBinding(ctx, "binding", &apigateway.GatewayIamBindingArgs{
/// 			Project: pulumi.Any(apiGw.Project),
/// 			Region:  pulumi.Any(apiGw.Region),
/// 			Gateway: pulumi.Any(apiGw.GatewayId),
/// 			Role:    pulumi.String("roles/apigateway.viewer"),
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
/// import com.pulumi.gcp.apigateway.GatewayIamBinding;
/// import com.pulumi.gcp.apigateway.GatewayIamBindingArgs;
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
///         var binding = new GatewayIamBinding("binding", GatewayIamBindingArgs.builder()
///             .project(apiGw.project())
///             .region(apiGw.region())
///             .gateway(apiGw.gatewayId())
///             .role("roles/apigateway.viewer")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:apigateway:GatewayIamBinding
///     properties:
///       project: ${apiGw.project}
///       region: ${apiGw.region}
///       gateway: ${apiGw.gatewayId}
///       role: roles/apigateway.viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.apigateway.GatewayIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.apigateway.GatewayIamMember("member", {
///     project: apiGw.project,
///     region: apiGw.region,
///     gateway: apiGw.gatewayId,
///     role: "roles/apigateway.viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.apigateway.GatewayIamMember("member",
///     project=api_gw["project"],
///     region=api_gw["region"],
///     gateway=api_gw["gatewayId"],
///     role="roles/apigateway.viewer",
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
///     var member = new Gcp.ApiGateway.GatewayIamMember("member", new()
///     {
///         Project = apiGw.Project,
///         Region = apiGw.Region,
///         Gateway = apiGw.GatewayId,
///         Role = "roles/apigateway.viewer",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.NewGatewayIamMember(ctx, "member", &apigateway.GatewayIamMemberArgs{
/// 			Project: pulumi.Any(apiGw.Project),
/// 			Region:  pulumi.Any(apiGw.Region),
/// 			Gateway: pulumi.Any(apiGw.GatewayId),
/// 			Role:    pulumi.String("roles/apigateway.viewer"),
/// 			Member:  pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.apigateway.GatewayIamMember;
/// import com.pulumi.gcp.apigateway.GatewayIamMemberArgs;
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
///         var member = new GatewayIamMember("member", GatewayIamMemberArgs.builder()
///             .project(apiGw.project())
///             .region(apiGw.region())
///             .gateway(apiGw.gatewayId())
///             .role("roles/apigateway.viewer")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:apigateway:GatewayIamMember
///     properties:
///       project: ${apiGw.project}
///       region: ${apiGw.region}
///       gateway: ${apiGw.gatewayId}
///       role: roles/apigateway.viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{region}}/gateways/{{gateway}}
///
/// * {{project}}/{{region}}/{{gateway}}
///
/// * {{region}}/{{gateway}}
///
/// * {{gateway}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// API Gateway gateway IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:apigateway/gatewayIamPolicy:GatewayIamPolicy editor "projects/{{project}}/locations/{{region}}/gateways/{{gateway}} roles/apigateway.viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:apigateway/gatewayIamPolicy:GatewayIamPolicy editor "projects/{{project}}/locations/{{region}}/gateways/{{gateway}} roles/apigateway.viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:apigateway/gatewayIamPolicy:GatewayIamPolicy editor projects/{{project}}/locations/{{region}}/gateways/{{gateway}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class GatewayIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> gateway;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// The region of the gateway for the API.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [GatewayIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GatewayIamPolicy]. {@macro pulumi_apigateway_gateway_iam_policy_gateway_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GatewayIamPolicy(
    String name, {
    GatewayIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigateway/gatewayIamPolicy:GatewayIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.gateway = registerOutput<String>('gateway');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
  }
}
