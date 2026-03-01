import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_pool_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Compute Engine StoragePool. Each of these resources serves a different use case:
///
/// * `gcp.compute.StoragePoolIamPolicy`: Authoritative. Sets the IAM policy for the storagepool and replaces any existing policy already attached.
/// * `gcp.compute.StoragePoolIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the storagepool are preserved.
/// * `gcp.compute.StoragePoolIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the storagepool are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.compute.StoragePoolIamPolicy`: Retrieves the IAM policy for the storagepool
///
/// > **Note:** `gcp.compute.StoragePoolIamPolicy` **cannot** be used in conjunction with `gcp.compute.StoragePoolIamBinding` and `gcp.compute.StoragePoolIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.compute.StoragePoolIamBinding` resources **can be** used in conjunction with `gcp.compute.StoragePoolIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.compute.StoragePoolIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/compute.viewer",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.compute.StoragePoolIamPolicy("policy", {
///     project: test_storage_pool_basic.project,
///     zone: test_storage_pool_basic.zone,
///     name: test_storage_pool_basic.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/compute.viewer",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.compute.StoragePoolIamPolicy("policy",
///     project=test_storage_pool_basic["project"],
///     zone=test_storage_pool_basic["zone"],
///     name=test_storage_pool_basic["name"],
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
///                 Role = "roles/compute.viewer",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Compute.StoragePoolIamPolicy("policy", new()
///     {
///         Project = test_storage_pool_basic.Project,
///         Zone = test_storage_pool_basic.Zone,
///         Name = test_storage_pool_basic.Name,
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
/// 					Role: "roles/compute.viewer",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewStoragePoolIamPolicy(ctx, "policy", &compute.StoragePoolIamPolicyArgs{
/// 			Project:    pulumi.Any(test_storage_pool_basic.Project),
/// 			Zone:       pulumi.Any(test_storage_pool_basic.Zone),
/// 			Name:       pulumi.Any(test_storage_pool_basic.Name),
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
/// import com.pulumi.gcp.compute.StoragePoolIamPolicy;
/// import com.pulumi.gcp.compute.StoragePoolIamPolicyArgs;
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
///                 .role("roles/compute.viewer")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new StoragePoolIamPolicy("policy", StoragePoolIamPolicyArgs.builder()
///             .project(test_storage_pool_basic.project())
///             .zone(test_storage_pool_basic.zone())
///             .name(test_storage_pool_basic.name())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:StoragePoolIamPolicy
///     properties:
///       project: ${["test-storage-pool-basic"].project}
///       zone: ${["test-storage-pool-basic"].zone}
///       name: ${["test-storage-pool-basic"].name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/compute.viewer
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
///         role: "roles/compute.viewer",
///         members: ["user:jane@example.com"],
///         condition: {
///             title: "expires_after_2019_12_31",
///             description: "Expiring at midnight of 2019-12-31",
///             expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     }],
/// });
/// const policy = new gcp.compute.StoragePoolIamPolicy("policy", {
///     project: test_storage_pool_basic.project,
///     zone: test_storage_pool_basic.zone,
///     name: test_storage_pool_basic.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/compute.viewer",
///     "members": ["user:jane@example.com"],
///     "condition": {
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// }])
/// policy = gcp.compute.StoragePoolIamPolicy("policy",
///     project=test_storage_pool_basic["project"],
///     zone=test_storage_pool_basic["zone"],
///     name=test_storage_pool_basic["name"],
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
///                 Role = "roles/compute.viewer",
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
///     var policy = new Gcp.Compute.StoragePoolIamPolicy("policy", new()
///     {
///         Project = test_storage_pool_basic.Project,
///         Zone = test_storage_pool_basic.Zone,
///         Name = test_storage_pool_basic.Name,
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
/// 					Role: "roles/compute.viewer",
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
/// 		_, err = compute.NewStoragePoolIamPolicy(ctx, "policy", &compute.StoragePoolIamPolicyArgs{
/// 			Project:    pulumi.Any(test_storage_pool_basic.Project),
/// 			Zone:       pulumi.Any(test_storage_pool_basic.Zone),
/// 			Name:       pulumi.Any(test_storage_pool_basic.Name),
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
/// import com.pulumi.gcp.compute.StoragePoolIamPolicy;
/// import com.pulumi.gcp.compute.StoragePoolIamPolicyArgs;
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
///                 .role("roles/compute.viewer")
///                 .members("user:jane@example.com")
///                 .condition(GetIAMPolicyBindingConditionArgs.builder()
///                     .title("expires_after_2019_12_31")
///                     .description("Expiring at midnight of 2019-12-31")
///                     .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                     .build())
///                 .build())
///             .build());
///
///         var policy = new StoragePoolIamPolicy("policy", StoragePoolIamPolicyArgs.builder()
///             .project(test_storage_pool_basic.project())
///             .zone(test_storage_pool_basic.zone())
///             .name(test_storage_pool_basic.name())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:StoragePoolIamPolicy
///     properties:
///       project: ${["test-storage-pool-basic"].project}
///       zone: ${["test-storage-pool-basic"].zone}
///       name: ${["test-storage-pool-basic"].name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/compute.viewer
///             members:
///               - user:jane@example.com
///             condition:
///               title: expires_after_2019_12_31
///               description: Expiring at midnight of 2019-12-31
///               expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.compute.StoragePoolIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.StoragePoolIamBinding("binding", {
///     project: test_storage_pool_basic.project,
///     zone: test_storage_pool_basic.zone,
///     name: test_storage_pool_basic.name,
///     role: "roles/compute.viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.StoragePoolIamBinding("binding",
///     project=test_storage_pool_basic["project"],
///     zone=test_storage_pool_basic["zone"],
///     name=test_storage_pool_basic["name"],
///     role="roles/compute.viewer",
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
///     var binding = new Gcp.Compute.StoragePoolIamBinding("binding", new()
///     {
///         Project = test_storage_pool_basic.Project,
///         Zone = test_storage_pool_basic.Zone,
///         Name = test_storage_pool_basic.Name,
///         Role = "roles/compute.viewer",
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
/// 		_, err := compute.NewStoragePoolIamBinding(ctx, "binding", &compute.StoragePoolIamBindingArgs{
/// 			Project: pulumi.Any(test_storage_pool_basic.Project),
/// 			Zone:    pulumi.Any(test_storage_pool_basic.Zone),
/// 			Name:    pulumi.Any(test_storage_pool_basic.Name),
/// 			Role:    pulumi.String("roles/compute.viewer"),
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
/// import com.pulumi.gcp.compute.StoragePoolIamBinding;
/// import com.pulumi.gcp.compute.StoragePoolIamBindingArgs;
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
///         var binding = new StoragePoolIamBinding("binding", StoragePoolIamBindingArgs.builder()
///             .project(test_storage_pool_basic.project())
///             .zone(test_storage_pool_basic.zone())
///             .name(test_storage_pool_basic.name())
///             .role("roles/compute.viewer")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:compute:StoragePoolIamBinding
///     properties:
///       project: ${["test-storage-pool-basic"].project}
///       zone: ${["test-storage-pool-basic"].zone}
///       name: ${["test-storage-pool-basic"].name}
///       role: roles/compute.viewer
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
/// const binding = new gcp.compute.StoragePoolIamBinding("binding", {
///     project: test_storage_pool_basic.project,
///     zone: test_storage_pool_basic.zone,
///     name: test_storage_pool_basic.name,
///     role: "roles/compute.viewer",
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
/// binding = gcp.compute.StoragePoolIamBinding("binding",
///     project=test_storage_pool_basic["project"],
///     zone=test_storage_pool_basic["zone"],
///     name=test_storage_pool_basic["name"],
///     role="roles/compute.viewer",
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
///     var binding = new Gcp.Compute.StoragePoolIamBinding("binding", new()
///     {
///         Project = test_storage_pool_basic.Project,
///         Zone = test_storage_pool_basic.Zone,
///         Name = test_storage_pool_basic.Name,
///         Role = "roles/compute.viewer",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Compute.Inputs.StoragePoolIamBindingConditionArgs
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
/// 		_, err := compute.NewStoragePoolIamBinding(ctx, "binding", &compute.StoragePoolIamBindingArgs{
/// 			Project: pulumi.Any(test_storage_pool_basic.Project),
/// 			Zone:    pulumi.Any(test_storage_pool_basic.Zone),
/// 			Name:    pulumi.Any(test_storage_pool_basic.Name),
/// 			Role:    pulumi.String("roles/compute.viewer"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &compute.StoragePoolIamBindingConditionArgs{
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
/// import com.pulumi.gcp.compute.StoragePoolIamBinding;
/// import com.pulumi.gcp.compute.StoragePoolIamBindingArgs;
/// import com.pulumi.gcp.compute.inputs.StoragePoolIamBindingConditionArgs;
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
///         var binding = new StoragePoolIamBinding("binding", StoragePoolIamBindingArgs.builder()
///             .project(test_storage_pool_basic.project())
///             .zone(test_storage_pool_basic.zone())
///             .name(test_storage_pool_basic.name())
///             .role("roles/compute.viewer")
///             .members("user:jane@example.com")
///             .condition(StoragePoolIamBindingConditionArgs.builder()
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
///     type: gcp:compute:StoragePoolIamBinding
///     properties:
///       project: ${["test-storage-pool-basic"].project}
///       zone: ${["test-storage-pool-basic"].zone}
///       name: ${["test-storage-pool-basic"].name}
///       role: roles/compute.viewer
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.compute.StoragePoolIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.StoragePoolIamMember("member", {
///     project: test_storage_pool_basic.project,
///     zone: test_storage_pool_basic.zone,
///     name: test_storage_pool_basic.name,
///     role: "roles/compute.viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.StoragePoolIamMember("member",
///     project=test_storage_pool_basic["project"],
///     zone=test_storage_pool_basic["zone"],
///     name=test_storage_pool_basic["name"],
///     role="roles/compute.viewer",
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
///     var member = new Gcp.Compute.StoragePoolIamMember("member", new()
///     {
///         Project = test_storage_pool_basic.Project,
///         Zone = test_storage_pool_basic.Zone,
///         Name = test_storage_pool_basic.Name,
///         Role = "roles/compute.viewer",
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
/// 		_, err := compute.NewStoragePoolIamMember(ctx, "member", &compute.StoragePoolIamMemberArgs{
/// 			Project: pulumi.Any(test_storage_pool_basic.Project),
/// 			Zone:    pulumi.Any(test_storage_pool_basic.Zone),
/// 			Name:    pulumi.Any(test_storage_pool_basic.Name),
/// 			Role:    pulumi.String("roles/compute.viewer"),
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
/// import com.pulumi.gcp.compute.StoragePoolIamMember;
/// import com.pulumi.gcp.compute.StoragePoolIamMemberArgs;
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
///         var member = new StoragePoolIamMember("member", StoragePoolIamMemberArgs.builder()
///             .project(test_storage_pool_basic.project())
///             .zone(test_storage_pool_basic.zone())
///             .name(test_storage_pool_basic.name())
///             .role("roles/compute.viewer")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:compute:StoragePoolIamMember
///     properties:
///       project: ${["test-storage-pool-basic"].project}
///       zone: ${["test-storage-pool-basic"].zone}
///       name: ${["test-storage-pool-basic"].name}
///       role: roles/compute.viewer
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
/// const member = new gcp.compute.StoragePoolIamMember("member", {
///     project: test_storage_pool_basic.project,
///     zone: test_storage_pool_basic.zone,
///     name: test_storage_pool_basic.name,
///     role: "roles/compute.viewer",
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
/// member = gcp.compute.StoragePoolIamMember("member",
///     project=test_storage_pool_basic["project"],
///     zone=test_storage_pool_basic["zone"],
///     name=test_storage_pool_basic["name"],
///     role="roles/compute.viewer",
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
///     var member = new Gcp.Compute.StoragePoolIamMember("member", new()
///     {
///         Project = test_storage_pool_basic.Project,
///         Zone = test_storage_pool_basic.Zone,
///         Name = test_storage_pool_basic.Name,
///         Role = "roles/compute.viewer",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Compute.Inputs.StoragePoolIamMemberConditionArgs
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
/// 		_, err := compute.NewStoragePoolIamMember(ctx, "member", &compute.StoragePoolIamMemberArgs{
/// 			Project: pulumi.Any(test_storage_pool_basic.Project),
/// 			Zone:    pulumi.Any(test_storage_pool_basic.Zone),
/// 			Name:    pulumi.Any(test_storage_pool_basic.Name),
/// 			Role:    pulumi.String("roles/compute.viewer"),
/// 			Member:  pulumi.String("user:jane@example.com"),
/// 			Condition: &compute.StoragePoolIamMemberConditionArgs{
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
/// import com.pulumi.gcp.compute.StoragePoolIamMember;
/// import com.pulumi.gcp.compute.StoragePoolIamMemberArgs;
/// import com.pulumi.gcp.compute.inputs.StoragePoolIamMemberConditionArgs;
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
///         var member = new StoragePoolIamMember("member", StoragePoolIamMemberArgs.builder()
///             .project(test_storage_pool_basic.project())
///             .zone(test_storage_pool_basic.zone())
///             .name(test_storage_pool_basic.name())
///             .role("roles/compute.viewer")
///             .member("user:jane@example.com")
///             .condition(StoragePoolIamMemberConditionArgs.builder()
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
///     type: gcp:compute:StoragePoolIamMember
///     properties:
///       project: ${["test-storage-pool-basic"].project}
///       zone: ${["test-storage-pool-basic"].zone}
///       name: ${["test-storage-pool-basic"].name}
///       role: roles/compute.viewer
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
/// # IAM policy for Compute Engine StoragePool
///
/// Three different resources help you manage your IAM policy for Compute Engine StoragePool. Each of these resources serves a different use case:
///
/// * `gcp.compute.StoragePoolIamPolicy`: Authoritative. Sets the IAM policy for the storagepool and replaces any existing policy already attached.
/// * `gcp.compute.StoragePoolIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the storagepool are preserved.
/// * `gcp.compute.StoragePoolIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the storagepool are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.compute.StoragePoolIamPolicy`: Retrieves the IAM policy for the storagepool
///
/// > **Note:** `gcp.compute.StoragePoolIamPolicy` **cannot** be used in conjunction with `gcp.compute.StoragePoolIamBinding` and `gcp.compute.StoragePoolIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.compute.StoragePoolIamBinding` resources **can be** used in conjunction with `gcp.compute.StoragePoolIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.compute.StoragePoolIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/compute.viewer",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.compute.StoragePoolIamPolicy("policy", {
///     project: test_storage_pool_basic.project,
///     zone: test_storage_pool_basic.zone,
///     name: test_storage_pool_basic.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/compute.viewer",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.compute.StoragePoolIamPolicy("policy",
///     project=test_storage_pool_basic["project"],
///     zone=test_storage_pool_basic["zone"],
///     name=test_storage_pool_basic["name"],
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
///                 Role = "roles/compute.viewer",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Compute.StoragePoolIamPolicy("policy", new()
///     {
///         Project = test_storage_pool_basic.Project,
///         Zone = test_storage_pool_basic.Zone,
///         Name = test_storage_pool_basic.Name,
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
/// 					Role: "roles/compute.viewer",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewStoragePoolIamPolicy(ctx, "policy", &compute.StoragePoolIamPolicyArgs{
/// 			Project:    pulumi.Any(test_storage_pool_basic.Project),
/// 			Zone:       pulumi.Any(test_storage_pool_basic.Zone),
/// 			Name:       pulumi.Any(test_storage_pool_basic.Name),
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
/// import com.pulumi.gcp.compute.StoragePoolIamPolicy;
/// import com.pulumi.gcp.compute.StoragePoolIamPolicyArgs;
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
///                 .role("roles/compute.viewer")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new StoragePoolIamPolicy("policy", StoragePoolIamPolicyArgs.builder()
///             .project(test_storage_pool_basic.project())
///             .zone(test_storage_pool_basic.zone())
///             .name(test_storage_pool_basic.name())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:StoragePoolIamPolicy
///     properties:
///       project: ${["test-storage-pool-basic"].project}
///       zone: ${["test-storage-pool-basic"].zone}
///       name: ${["test-storage-pool-basic"].name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/compute.viewer
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
///         role: "roles/compute.viewer",
///         members: ["user:jane@example.com"],
///         condition: {
///             title: "expires_after_2019_12_31",
///             description: "Expiring at midnight of 2019-12-31",
///             expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     }],
/// });
/// const policy = new gcp.compute.StoragePoolIamPolicy("policy", {
///     project: test_storage_pool_basic.project,
///     zone: test_storage_pool_basic.zone,
///     name: test_storage_pool_basic.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/compute.viewer",
///     "members": ["user:jane@example.com"],
///     "condition": {
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// }])
/// policy = gcp.compute.StoragePoolIamPolicy("policy",
///     project=test_storage_pool_basic["project"],
///     zone=test_storage_pool_basic["zone"],
///     name=test_storage_pool_basic["name"],
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
///                 Role = "roles/compute.viewer",
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
///     var policy = new Gcp.Compute.StoragePoolIamPolicy("policy", new()
///     {
///         Project = test_storage_pool_basic.Project,
///         Zone = test_storage_pool_basic.Zone,
///         Name = test_storage_pool_basic.Name,
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
/// 					Role: "roles/compute.viewer",
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
/// 		_, err = compute.NewStoragePoolIamPolicy(ctx, "policy", &compute.StoragePoolIamPolicyArgs{
/// 			Project:    pulumi.Any(test_storage_pool_basic.Project),
/// 			Zone:       pulumi.Any(test_storage_pool_basic.Zone),
/// 			Name:       pulumi.Any(test_storage_pool_basic.Name),
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
/// import com.pulumi.gcp.compute.StoragePoolIamPolicy;
/// import com.pulumi.gcp.compute.StoragePoolIamPolicyArgs;
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
///                 .role("roles/compute.viewer")
///                 .members("user:jane@example.com")
///                 .condition(GetIAMPolicyBindingConditionArgs.builder()
///                     .title("expires_after_2019_12_31")
///                     .description("Expiring at midnight of 2019-12-31")
///                     .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                     .build())
///                 .build())
///             .build());
///
///         var policy = new StoragePoolIamPolicy("policy", StoragePoolIamPolicyArgs.builder()
///             .project(test_storage_pool_basic.project())
///             .zone(test_storage_pool_basic.zone())
///             .name(test_storage_pool_basic.name())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:StoragePoolIamPolicy
///     properties:
///       project: ${["test-storage-pool-basic"].project}
///       zone: ${["test-storage-pool-basic"].zone}
///       name: ${["test-storage-pool-basic"].name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/compute.viewer
///             members:
///               - user:jane@example.com
///             condition:
///               title: expires_after_2019_12_31
///               description: Expiring at midnight of 2019-12-31
///               expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.compute.StoragePoolIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.compute.StoragePoolIamBinding("binding", {
///     project: test_storage_pool_basic.project,
///     zone: test_storage_pool_basic.zone,
///     name: test_storage_pool_basic.name,
///     role: "roles/compute.viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.compute.StoragePoolIamBinding("binding",
///     project=test_storage_pool_basic["project"],
///     zone=test_storage_pool_basic["zone"],
///     name=test_storage_pool_basic["name"],
///     role="roles/compute.viewer",
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
///     var binding = new Gcp.Compute.StoragePoolIamBinding("binding", new()
///     {
///         Project = test_storage_pool_basic.Project,
///         Zone = test_storage_pool_basic.Zone,
///         Name = test_storage_pool_basic.Name,
///         Role = "roles/compute.viewer",
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
/// 		_, err := compute.NewStoragePoolIamBinding(ctx, "binding", &compute.StoragePoolIamBindingArgs{
/// 			Project: pulumi.Any(test_storage_pool_basic.Project),
/// 			Zone:    pulumi.Any(test_storage_pool_basic.Zone),
/// 			Name:    pulumi.Any(test_storage_pool_basic.Name),
/// 			Role:    pulumi.String("roles/compute.viewer"),
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
/// import com.pulumi.gcp.compute.StoragePoolIamBinding;
/// import com.pulumi.gcp.compute.StoragePoolIamBindingArgs;
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
///         var binding = new StoragePoolIamBinding("binding", StoragePoolIamBindingArgs.builder()
///             .project(test_storage_pool_basic.project())
///             .zone(test_storage_pool_basic.zone())
///             .name(test_storage_pool_basic.name())
///             .role("roles/compute.viewer")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:compute:StoragePoolIamBinding
///     properties:
///       project: ${["test-storage-pool-basic"].project}
///       zone: ${["test-storage-pool-basic"].zone}
///       name: ${["test-storage-pool-basic"].name}
///       role: roles/compute.viewer
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
/// const binding = new gcp.compute.StoragePoolIamBinding("binding", {
///     project: test_storage_pool_basic.project,
///     zone: test_storage_pool_basic.zone,
///     name: test_storage_pool_basic.name,
///     role: "roles/compute.viewer",
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
/// binding = gcp.compute.StoragePoolIamBinding("binding",
///     project=test_storage_pool_basic["project"],
///     zone=test_storage_pool_basic["zone"],
///     name=test_storage_pool_basic["name"],
///     role="roles/compute.viewer",
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
///     var binding = new Gcp.Compute.StoragePoolIamBinding("binding", new()
///     {
///         Project = test_storage_pool_basic.Project,
///         Zone = test_storage_pool_basic.Zone,
///         Name = test_storage_pool_basic.Name,
///         Role = "roles/compute.viewer",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Compute.Inputs.StoragePoolIamBindingConditionArgs
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
/// 		_, err := compute.NewStoragePoolIamBinding(ctx, "binding", &compute.StoragePoolIamBindingArgs{
/// 			Project: pulumi.Any(test_storage_pool_basic.Project),
/// 			Zone:    pulumi.Any(test_storage_pool_basic.Zone),
/// 			Name:    pulumi.Any(test_storage_pool_basic.Name),
/// 			Role:    pulumi.String("roles/compute.viewer"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &compute.StoragePoolIamBindingConditionArgs{
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
/// import com.pulumi.gcp.compute.StoragePoolIamBinding;
/// import com.pulumi.gcp.compute.StoragePoolIamBindingArgs;
/// import com.pulumi.gcp.compute.inputs.StoragePoolIamBindingConditionArgs;
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
///         var binding = new StoragePoolIamBinding("binding", StoragePoolIamBindingArgs.builder()
///             .project(test_storage_pool_basic.project())
///             .zone(test_storage_pool_basic.zone())
///             .name(test_storage_pool_basic.name())
///             .role("roles/compute.viewer")
///             .members("user:jane@example.com")
///             .condition(StoragePoolIamBindingConditionArgs.builder()
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
///     type: gcp:compute:StoragePoolIamBinding
///     properties:
///       project: ${["test-storage-pool-basic"].project}
///       zone: ${["test-storage-pool-basic"].zone}
///       name: ${["test-storage-pool-basic"].name}
///       role: roles/compute.viewer
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
/// ## gcp.compute.StoragePoolIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.compute.StoragePoolIamMember("member", {
///     project: test_storage_pool_basic.project,
///     zone: test_storage_pool_basic.zone,
///     name: test_storage_pool_basic.name,
///     role: "roles/compute.viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.compute.StoragePoolIamMember("member",
///     project=test_storage_pool_basic["project"],
///     zone=test_storage_pool_basic["zone"],
///     name=test_storage_pool_basic["name"],
///     role="roles/compute.viewer",
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
///     var member = new Gcp.Compute.StoragePoolIamMember("member", new()
///     {
///         Project = test_storage_pool_basic.Project,
///         Zone = test_storage_pool_basic.Zone,
///         Name = test_storage_pool_basic.Name,
///         Role = "roles/compute.viewer",
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
/// 		_, err := compute.NewStoragePoolIamMember(ctx, "member", &compute.StoragePoolIamMemberArgs{
/// 			Project: pulumi.Any(test_storage_pool_basic.Project),
/// 			Zone:    pulumi.Any(test_storage_pool_basic.Zone),
/// 			Name:    pulumi.Any(test_storage_pool_basic.Name),
/// 			Role:    pulumi.String("roles/compute.viewer"),
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
/// import com.pulumi.gcp.compute.StoragePoolIamMember;
/// import com.pulumi.gcp.compute.StoragePoolIamMemberArgs;
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
///         var member = new StoragePoolIamMember("member", StoragePoolIamMemberArgs.builder()
///             .project(test_storage_pool_basic.project())
///             .zone(test_storage_pool_basic.zone())
///             .name(test_storage_pool_basic.name())
///             .role("roles/compute.viewer")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:compute:StoragePoolIamMember
///     properties:
///       project: ${["test-storage-pool-basic"].project}
///       zone: ${["test-storage-pool-basic"].zone}
///       name: ${["test-storage-pool-basic"].name}
///       role: roles/compute.viewer
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
/// const member = new gcp.compute.StoragePoolIamMember("member", {
///     project: test_storage_pool_basic.project,
///     zone: test_storage_pool_basic.zone,
///     name: test_storage_pool_basic.name,
///     role: "roles/compute.viewer",
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
/// member = gcp.compute.StoragePoolIamMember("member",
///     project=test_storage_pool_basic["project"],
///     zone=test_storage_pool_basic["zone"],
///     name=test_storage_pool_basic["name"],
///     role="roles/compute.viewer",
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
///     var member = new Gcp.Compute.StoragePoolIamMember("member", new()
///     {
///         Project = test_storage_pool_basic.Project,
///         Zone = test_storage_pool_basic.Zone,
///         Name = test_storage_pool_basic.Name,
///         Role = "roles/compute.viewer",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Compute.Inputs.StoragePoolIamMemberConditionArgs
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
/// 		_, err := compute.NewStoragePoolIamMember(ctx, "member", &compute.StoragePoolIamMemberArgs{
/// 			Project: pulumi.Any(test_storage_pool_basic.Project),
/// 			Zone:    pulumi.Any(test_storage_pool_basic.Zone),
/// 			Name:    pulumi.Any(test_storage_pool_basic.Name),
/// 			Role:    pulumi.String("roles/compute.viewer"),
/// 			Member:  pulumi.String("user:jane@example.com"),
/// 			Condition: &compute.StoragePoolIamMemberConditionArgs{
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
/// import com.pulumi.gcp.compute.StoragePoolIamMember;
/// import com.pulumi.gcp.compute.StoragePoolIamMemberArgs;
/// import com.pulumi.gcp.compute.inputs.StoragePoolIamMemberConditionArgs;
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
///         var member = new StoragePoolIamMember("member", StoragePoolIamMemberArgs.builder()
///             .project(test_storage_pool_basic.project())
///             .zone(test_storage_pool_basic.zone())
///             .name(test_storage_pool_basic.name())
///             .role("roles/compute.viewer")
///             .member("user:jane@example.com")
///             .condition(StoragePoolIamMemberConditionArgs.builder()
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
///     type: gcp:compute:StoragePoolIamMember
///     properties:
///       project: ${["test-storage-pool-basic"].project}
///       zone: ${["test-storage-pool-basic"].zone}
///       name: ${["test-storage-pool-basic"].name}
///       role: roles/compute.viewer
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
/// * projects/{{project}}/zones/{{zone}}/storagePools/{{name}}
///
/// * {{project}}/{{zone}}/{{name}}
///
/// * {{zone}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Compute Engine storagepool IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/storagePoolIamPolicy:StoragePoolIamPolicy editor "projects/{{project}}/zones/{{zone}}/storagePools/{{storage_pool}} roles/compute.viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/storagePoolIamPolicy:StoragePoolIamPolicy editor "projects/{{project}}/zones/{{zone}}/storagePools/{{storage_pool}} roles/compute.viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/storagePoolIamPolicy:StoragePoolIamPolicy editor projects/{{project}}/zones/{{zone}}/storagePools/{{storage_pool}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class StoragePoolIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> name;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// A reference to the zone where the storage pool resides. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no zone is provided in the parent identifier and no
  /// zone is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> zone;

  /// Creates a new [StoragePoolIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StoragePoolIamPolicy]. {@macro pulumi_compute_storage_pool_iam_policy_storage_pool_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StoragePoolIamPolicy(
    String name, {
    StoragePoolIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/storagePoolIamPolicy:StoragePoolIamPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.zone = registerOutput<String>('zone');
  }
}
