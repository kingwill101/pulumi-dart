import 'package:pulumi/pulumi.dart' as pulumi;
import 'iampolicy_args.dart';

/// Four different resources help you manage your IAM policy for a organization. Each of these resources serves a different use case:
///
/// * `gcp.organizations.IAMPolicy`: Authoritative. Sets the IAM policy for the organization and replaces any existing policy already attached.
/// * `gcp.organizations.IAMBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the organization are preserved.
/// * `gcp.organizations.IAMMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the organization are preserved.
/// * `gcp.organizations.IamAuditConfig`: Authoritative for a given service. Updates the IAM policy to enable audit logging for the given service.
///
///
/// > **Note:** `gcp.organizations.IAMPolicy` **cannot** be used in conjunction with `gcp.organizations.IAMBinding`, `gcp.organizations.IAMMember`, or `gcp.organizations.IamAuditConfig` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.organizations.IAMBinding` resources **can be** used in conjunction with `gcp.organizations.IAMMember` resources **only if** they do not grant privilege to the same role.
///
/// ## gcp.organizations.IAMPolicy
///
/// !> **Warning:** New organizations have several default policies which will,
/// without extreme caution, be **overwritten** by use of this resource.
/// The safest alternative is to use multiple `gcp.organizations.IAMBinding`
/// resources. This resource makes it easy to remove your own access to
/// an organization, which will require a call to Google Support to have
/// fixed, and can take multiple days to resolve.
///
///
/// In general, this resource should only be used with organizations
/// fully managed by this provider.I f you do use this resource,
/// the best way to be sure that you are not making dangerous changes is to start
/// by **importing** your existing policy, and examining the diff very closely.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/editor",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const organization = new gcp.organizations.IAMPolicy("organization", {
///     orgId: "1234567890",
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/editor",
///     "members": ["user:jane@example.com"],
/// }])
/// organization = gcp.organizations.IAMPolicy("organization",
///     org_id="1234567890",
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
///                 Role = "roles/editor",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var organization = new Gcp.Organizations.IAMPolicy("organization", new()
///     {
///         OrgId = "1234567890",
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/editor",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.NewIAMPolicy(ctx, "organization", &organizations.IAMPolicyArgs{
/// 			OrgId:      pulumi.String("1234567890"),
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
/// import com.pulumi.gcp.organizations.IAMPolicy;
/// import com.pulumi.gcp.organizations.IAMPolicyArgs;
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
///                 .role("roles/editor")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var organization = new IAMPolicy("organization", IAMPolicyArgs.builder()
///             .orgId("1234567890")
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   organization:
///     type: gcp:organizations:IAMPolicy
///     properties:
///       orgId: '1234567890'
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/editor
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
///         role: "roles/editor",
///         members: ["user:jane@example.com"],
///         condition: {
///             title: "expires_after_2019_12_31",
///             description: "Expiring at midnight of 2019-12-31",
///             expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     }],
/// });
/// const organization = new gcp.organizations.IAMPolicy("organization", {
///     orgId: "1234567890",
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/editor",
///     "members": ["user:jane@example.com"],
///     "condition": {
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// }])
/// organization = gcp.organizations.IAMPolicy("organization",
///     org_id="1234567890",
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
///                 Role = "roles/editor",
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
///     var organization = new Gcp.Organizations.IAMPolicy("organization", new()
///     {
///         OrgId = "1234567890",
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/editor",
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
/// 		_, err = organizations.NewIAMPolicy(ctx, "organization", &organizations.IAMPolicyArgs{
/// 			OrgId:      pulumi.String("1234567890"),
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
/// import com.pulumi.gcp.organizations.IAMPolicy;
/// import com.pulumi.gcp.organizations.IAMPolicyArgs;
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
///                 .role("roles/editor")
///                 .members("user:jane@example.com")
///                 .condition(GetIAMPolicyBindingConditionArgs.builder()
///                     .title("expires_after_2019_12_31")
///                     .description("Expiring at midnight of 2019-12-31")
///                     .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                     .build())
///                 .build())
///             .build());
///
///         var organization = new IAMPolicy("organization", IAMPolicyArgs.builder()
///             .orgId("1234567890")
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   organization:
///     type: gcp:organizations:IAMPolicy
///     properties:
///       orgId: '1234567890'
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/editor
///             members:
///               - user:jane@example.com
///             condition:
///               title: expires_after_2019_12_31
///               description: Expiring at midnight of 2019-12-31
///               expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
///
/// ## gcp.organizations.IAMBinding
///
/// > **Note:** If `role` is set to `roles/owner` and you don't specify a user or service account you have access to in `members`, you can lock yourself out of your organization.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const organization = new gcp.organizations.IAMBinding("organization", {
///     orgId: "1234567890",
///     role: "roles/editor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// organization = gcp.organizations.IAMBinding("organization",
///     org_id="1234567890",
///     role="roles/editor",
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
///     var organization = new Gcp.Organizations.IAMBinding("organization", new()
///     {
///         OrgId = "1234567890",
///         Role = "roles/editor",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.NewIAMBinding(ctx, "organization", &organizations.IAMBindingArgs{
/// 			OrgId: pulumi.String("1234567890"),
/// 			Role:  pulumi.String("roles/editor"),
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
/// import com.pulumi.gcp.organizations.IAMBinding;
/// import com.pulumi.gcp.organizations.IAMBindingArgs;
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
///         var organization = new IAMBinding("organization", IAMBindingArgs.builder()
///             .orgId("1234567890")
///             .role("roles/editor")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   organization:
///     type: gcp:organizations:IAMBinding
///     properties:
///       orgId: '1234567890'
///       role: roles/editor
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
/// const organization = new gcp.organizations.IAMBinding("organization", {
///     orgId: "1234567890",
///     role: "roles/editor",
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
/// organization = gcp.organizations.IAMBinding("organization",
///     org_id="1234567890",
///     role="roles/editor",
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
///     var organization = new Gcp.Organizations.IAMBinding("organization", new()
///     {
///         OrgId = "1234567890",
///         Role = "roles/editor",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Organizations.Inputs.IAMBindingConditionArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.NewIAMBinding(ctx, "organization", &organizations.IAMBindingArgs{
/// 			OrgId: pulumi.String("1234567890"),
/// 			Role:  pulumi.String("roles/editor"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &organizations.IAMBindingConditionArgs{
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
/// import com.pulumi.gcp.organizations.IAMBinding;
/// import com.pulumi.gcp.organizations.IAMBindingArgs;
/// import com.pulumi.gcp.organizations.inputs.IAMBindingConditionArgs;
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
///         var organization = new IAMBinding("organization", IAMBindingArgs.builder()
///             .orgId("1234567890")
///             .role("roles/editor")
///             .members("user:jane@example.com")
///             .condition(IAMBindingConditionArgs.builder()
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
///   organization:
///     type: gcp:organizations:IAMBinding
///     properties:
///       orgId: '1234567890'
///       role: roles/editor
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
///
/// ## gcp.organizations.IAMMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const organization = new gcp.organizations.IAMMember("organization", {
///     orgId: "1234567890",
///     role: "roles/editor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// organization = gcp.organizations.IAMMember("organization",
///     org_id="1234567890",
///     role="roles/editor",
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
///     var organization = new Gcp.Organizations.IAMMember("organization", new()
///     {
///         OrgId = "1234567890",
///         Role = "roles/editor",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.NewIAMMember(ctx, "organization", &organizations.IAMMemberArgs{
/// 			OrgId:  pulumi.String("1234567890"),
/// 			Role:   pulumi.String("roles/editor"),
/// 			Member: pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.organizations.IAMMember;
/// import com.pulumi.gcp.organizations.IAMMemberArgs;
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
///         var organization = new IAMMember("organization", IAMMemberArgs.builder()
///             .orgId("1234567890")
///             .role("roles/editor")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   organization:
///     type: gcp:organizations:IAMMember
///     properties:
///       orgId: '1234567890'
///       role: roles/editor
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
/// const organization = new gcp.organizations.IAMMember("organization", {
///     orgId: "1234567890",
///     role: "roles/editor",
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
/// organization = gcp.organizations.IAMMember("organization",
///     org_id="1234567890",
///     role="roles/editor",
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
///     var organization = new Gcp.Organizations.IAMMember("organization", new()
///     {
///         OrgId = "1234567890",
///         Role = "roles/editor",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Organizations.Inputs.IAMMemberConditionArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.NewIAMMember(ctx, "organization", &organizations.IAMMemberArgs{
/// 			OrgId:  pulumi.String("1234567890"),
/// 			Role:   pulumi.String("roles/editor"),
/// 			Member: pulumi.String("user:jane@example.com"),
/// 			Condition: &organizations.IAMMemberConditionArgs{
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
/// import com.pulumi.gcp.organizations.IAMMember;
/// import com.pulumi.gcp.organizations.IAMMemberArgs;
/// import com.pulumi.gcp.organizations.inputs.IAMMemberConditionArgs;
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
///         var organization = new IAMMember("organization", IAMMemberArgs.builder()
///             .orgId("1234567890")
///             .role("roles/editor")
///             .member("user:jane@example.com")
///             .condition(IAMMemberConditionArgs.builder()
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
///   organization:
///     type: gcp:organizations:IAMMember
///     properties:
///       orgId: '1234567890'
///       role: roles/editor
///       member: user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
///
/// ## gcp.organizations.IamAuditConfig
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const organization = new gcp.organizations.IamAuditConfig("organization", {
///     orgId: "1234567890",
///     service: "allServices",
///     auditLogConfigs: [
///         {
///             logType: "ADMIN_READ",
///         },
///         {
///             logType: "DATA_READ",
///             exemptedMembers: ["user:joebloggs@example.com"],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// organization = gcp.organizations.IamAuditConfig("organization",
///     org_id="1234567890",
///     service="allServices",
///     audit_log_configs=[
///         {
///             "log_type": "ADMIN_READ",
///         },
///         {
///             "log_type": "DATA_READ",
///             "exempted_members": ["user:joebloggs@example.com"],
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var organization = new Gcp.Organizations.IamAuditConfig("organization", new()
///     {
///         OrgId = "1234567890",
///         Service = "allServices",
///         AuditLogConfigs = new[]
///         {
///             new Gcp.Organizations.Inputs.IamAuditConfigAuditLogConfigArgs
///             {
///                 LogType = "ADMIN_READ",
///             },
///             new Gcp.Organizations.Inputs.IamAuditConfigAuditLogConfigArgs
///             {
///                 LogType = "DATA_READ",
///                 ExemptedMembers = new[]
///                 {
///                     "user:joebloggs@example.com",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.NewIamAuditConfig(ctx, "organization", &organizations.IamAuditConfigArgs{
/// 			OrgId:   pulumi.String("1234567890"),
/// 			Service: pulumi.String("allServices"),
/// 			AuditLogConfigs: organizations.IamAuditConfigAuditLogConfigArray{
/// 				&organizations.IamAuditConfigAuditLogConfigArgs{
/// 					LogType: pulumi.String("ADMIN_READ"),
/// 				},
/// 				&organizations.IamAuditConfigAuditLogConfigArgs{
/// 					LogType: pulumi.String("DATA_READ"),
/// 					ExemptedMembers: pulumi.StringArray{
/// 						pulumi.String("user:joebloggs@example.com"),
/// 					},
/// 				},
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
/// import com.pulumi.gcp.organizations.IamAuditConfig;
/// import com.pulumi.gcp.organizations.IamAuditConfigArgs;
/// import com.pulumi.gcp.organizations.inputs.IamAuditConfigAuditLogConfigArgs;
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
///         var organization = new IamAuditConfig("organization", IamAuditConfigArgs.builder()
///             .orgId("1234567890")
///             .service("allServices")
///             .auditLogConfigs(
///                 IamAuditConfigAuditLogConfigArgs.builder()
///                     .logType("ADMIN_READ")
///                     .build(),
///                 IamAuditConfigAuditLogConfigArgs.builder()
///                     .logType("DATA_READ")
///                     .exemptedMembers("user:joebloggs@example.com")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   organization:
///     type: gcp:organizations:IamAuditConfig
///     properties:
///       orgId: '1234567890'
///       service: allServices
///       auditLogConfigs:
///         - logType: ADMIN_READ
///         - logType: DATA_READ
///           exemptedMembers:
///             - user:joebloggs@example.com
/// ```
///
///
/// ## gcp.organizations.IAMBinding
///
/// > **Note:** If `role` is set to `roles/owner` and you don't specify a user or service account you have access to in `members`, you can lock yourself out of your organization.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const organization = new gcp.organizations.IAMBinding("organization", {
///     orgId: "1234567890",
///     role: "roles/editor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// organization = gcp.organizations.IAMBinding("organization",
///     org_id="1234567890",
///     role="roles/editor",
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
///     var organization = new Gcp.Organizations.IAMBinding("organization", new()
///     {
///         OrgId = "1234567890",
///         Role = "roles/editor",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.NewIAMBinding(ctx, "organization", &organizations.IAMBindingArgs{
/// 			OrgId: pulumi.String("1234567890"),
/// 			Role:  pulumi.String("roles/editor"),
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
/// import com.pulumi.gcp.organizations.IAMBinding;
/// import com.pulumi.gcp.organizations.IAMBindingArgs;
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
///         var organization = new IAMBinding("organization", IAMBindingArgs.builder()
///             .orgId("1234567890")
///             .role("roles/editor")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   organization:
///     type: gcp:organizations:IAMBinding
///     properties:
///       orgId: '1234567890'
///       role: roles/editor
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
/// const organization = new gcp.organizations.IAMBinding("organization", {
///     orgId: "1234567890",
///     role: "roles/editor",
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
/// organization = gcp.organizations.IAMBinding("organization",
///     org_id="1234567890",
///     role="roles/editor",
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
///     var organization = new Gcp.Organizations.IAMBinding("organization", new()
///     {
///         OrgId = "1234567890",
///         Role = "roles/editor",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Organizations.Inputs.IAMBindingConditionArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.NewIAMBinding(ctx, "organization", &organizations.IAMBindingArgs{
/// 			OrgId: pulumi.String("1234567890"),
/// 			Role:  pulumi.String("roles/editor"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &organizations.IAMBindingConditionArgs{
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
/// import com.pulumi.gcp.organizations.IAMBinding;
/// import com.pulumi.gcp.organizations.IAMBindingArgs;
/// import com.pulumi.gcp.organizations.inputs.IAMBindingConditionArgs;
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
///         var organization = new IAMBinding("organization", IAMBindingArgs.builder()
///             .orgId("1234567890")
///             .role("roles/editor")
///             .members("user:jane@example.com")
///             .condition(IAMBindingConditionArgs.builder()
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
///   organization:
///     type: gcp:organizations:IAMBinding
///     properties:
///       orgId: '1234567890'
///       role: roles/editor
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
///
/// ## gcp.organizations.IAMMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const organization = new gcp.organizations.IAMMember("organization", {
///     orgId: "1234567890",
///     role: "roles/editor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// organization = gcp.organizations.IAMMember("organization",
///     org_id="1234567890",
///     role="roles/editor",
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
///     var organization = new Gcp.Organizations.IAMMember("organization", new()
///     {
///         OrgId = "1234567890",
///         Role = "roles/editor",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.NewIAMMember(ctx, "organization", &organizations.IAMMemberArgs{
/// 			OrgId:  pulumi.String("1234567890"),
/// 			Role:   pulumi.String("roles/editor"),
/// 			Member: pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.organizations.IAMMember;
/// import com.pulumi.gcp.organizations.IAMMemberArgs;
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
///         var organization = new IAMMember("organization", IAMMemberArgs.builder()
///             .orgId("1234567890")
///             .role("roles/editor")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   organization:
///     type: gcp:organizations:IAMMember
///     properties:
///       orgId: '1234567890'
///       role: roles/editor
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
/// const organization = new gcp.organizations.IAMMember("organization", {
///     orgId: "1234567890",
///     role: "roles/editor",
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
/// organization = gcp.organizations.IAMMember("organization",
///     org_id="1234567890",
///     role="roles/editor",
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
///     var organization = new Gcp.Organizations.IAMMember("organization", new()
///     {
///         OrgId = "1234567890",
///         Role = "roles/editor",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Organizations.Inputs.IAMMemberConditionArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.NewIAMMember(ctx, "organization", &organizations.IAMMemberArgs{
/// 			OrgId:  pulumi.String("1234567890"),
/// 			Role:   pulumi.String("roles/editor"),
/// 			Member: pulumi.String("user:jane@example.com"),
/// 			Condition: &organizations.IAMMemberConditionArgs{
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
/// import com.pulumi.gcp.organizations.IAMMember;
/// import com.pulumi.gcp.organizations.IAMMemberArgs;
/// import com.pulumi.gcp.organizations.inputs.IAMMemberConditionArgs;
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
///         var organization = new IAMMember("organization", IAMMemberArgs.builder()
///             .orgId("1234567890")
///             .role("roles/editor")
///             .member("user:jane@example.com")
///             .condition(IAMMemberConditionArgs.builder()
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
///   organization:
///     type: gcp:organizations:IAMMember
///     properties:
///       orgId: '1234567890'
///       role: roles/editor
///       member: user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
///
/// ## gcp.organizations.IamAuditConfig
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const organization = new gcp.organizations.IamAuditConfig("organization", {
///     orgId: "1234567890",
///     service: "allServices",
///     auditLogConfigs: [
///         {
///             logType: "ADMIN_READ",
///         },
///         {
///             logType: "DATA_READ",
///             exemptedMembers: ["user:joebloggs@example.com"],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// organization = gcp.organizations.IamAuditConfig("organization",
///     org_id="1234567890",
///     service="allServices",
///     audit_log_configs=[
///         {
///             "log_type": "ADMIN_READ",
///         },
///         {
///             "log_type": "DATA_READ",
///             "exempted_members": ["user:joebloggs@example.com"],
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var organization = new Gcp.Organizations.IamAuditConfig("organization", new()
///     {
///         OrgId = "1234567890",
///         Service = "allServices",
///         AuditLogConfigs = new[]
///         {
///             new Gcp.Organizations.Inputs.IamAuditConfigAuditLogConfigArgs
///             {
///                 LogType = "ADMIN_READ",
///             },
///             new Gcp.Organizations.Inputs.IamAuditConfigAuditLogConfigArgs
///             {
///                 LogType = "DATA_READ",
///                 ExemptedMembers = new[]
///                 {
///                     "user:joebloggs@example.com",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.NewIamAuditConfig(ctx, "organization", &organizations.IamAuditConfigArgs{
/// 			OrgId:   pulumi.String("1234567890"),
/// 			Service: pulumi.String("allServices"),
/// 			AuditLogConfigs: organizations.IamAuditConfigAuditLogConfigArray{
/// 				&organizations.IamAuditConfigAuditLogConfigArgs{
/// 					LogType: pulumi.String("ADMIN_READ"),
/// 				},
/// 				&organizations.IamAuditConfigAuditLogConfigArgs{
/// 					LogType: pulumi.String("DATA_READ"),
/// 					ExemptedMembers: pulumi.StringArray{
/// 						pulumi.String("user:joebloggs@example.com"),
/// 					},
/// 				},
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
/// import com.pulumi.gcp.organizations.IamAuditConfig;
/// import com.pulumi.gcp.organizations.IamAuditConfigArgs;
/// import com.pulumi.gcp.organizations.inputs.IamAuditConfigAuditLogConfigArgs;
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
///         var organization = new IamAuditConfig("organization", IamAuditConfigArgs.builder()
///             .orgId("1234567890")
///             .service("allServices")
///             .auditLogConfigs(
///                 IamAuditConfigAuditLogConfigArgs.builder()
///                     .logType("ADMIN_READ")
///                     .build(),
///                 IamAuditConfigAuditLogConfigArgs.builder()
///                     .logType("DATA_READ")
///                     .exemptedMembers("user:joebloggs@example.com")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   organization:
///     type: gcp:organizations:IamAuditConfig
///     properties:
///       orgId: '1234567890'
///       service: allServices
///       auditLogConfigs:
///         - logType: ADMIN_READ
///         - logType: DATA_READ
///           exemptedMembers:
///             - user:joebloggs@example.com
/// ```
///
///
/// ## Import
///
/// ### Importing Audit Configs
///
/// An audit config can be imported into a `google_organization_iam_audit_config` resource using the resource's `org_id` and the `service`, e.g:
///
/// * `"{{org_id}} foo.googleapis.com"`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import audit configs:
///
/// tf
///
/// import {
///
/// id = "{{org_id}} foo.googleapis.com"
///
/// to = google_organization_iam_audit_config.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:organizations/iAMPolicy:IAMPolicy default "{{org_id}} foo.googleapis.com"
/// ```
class IAMPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the organization's IAM policy.
  late final pulumi.Output<String> etag;

  /// The organization id of the target organization.
  late final pulumi.Output<String> orgId;

  /// The `gcp.organizations.getIAMPolicy` data source that represents
  /// the IAM policy that will be applied to the organization. The policy will be
  /// merged with any existing policy applied to the organization.
  ///
  /// Changing this updates the policy.
  ///
  /// Deleting this removes all policies from the organization, locking out users without
  /// organization-level access.
  late final pulumi.Output<String> policyData;

  /// Creates a new [IAMPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IAMPolicy]. {@macro pulumi_organizations_i_ampolicy_iampolicy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IAMPolicy(
    String name, {
    IAMPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:organizations/iAMPolicy:IAMPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.orgId = registerOutput<String>('orgId');
    this.policyData = registerOutput<String>('policyData');
  }
}
