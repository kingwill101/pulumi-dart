import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Secure Source Manager Repository. Each of these resources serves a different use case:
///
/// * `gcp.securesourcemanager.RepositoryIamPolicy`: Authoritative. Sets the IAM policy for the repository and replaces any existing policy already attached.
/// * `gcp.securesourcemanager.RepositoryIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the repository are preserved.
/// * `gcp.securesourcemanager.RepositoryIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the repository are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.securesourcemanager.RepositoryIamPolicy`: Retrieves the IAM policy for the repository
///
/// > **Note:** `gcp.securesourcemanager.RepositoryIamPolicy` **cannot** be used in conjunction with `gcp.securesourcemanager.RepositoryIamBinding` and `gcp.securesourcemanager.RepositoryIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.securesourcemanager.RepositoryIamBinding` resources **can be** used in conjunction with `gcp.securesourcemanager.RepositoryIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.securesourcemanager.RepositoryIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/securesourcemanager.repoAdmin",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.securesourcemanager.RepositoryIamPolicy("policy", {
///     project: _default.project,
///     location: _default.location,
///     repositoryId: _default.repositoryId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/securesourcemanager.repoAdmin",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.securesourcemanager.RepositoryIamPolicy("policy",
///     project=default["project"],
///     location=default["location"],
///     repository_id=default["repositoryId"],
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
///                 Role = "roles/securesourcemanager.repoAdmin",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.SecureSourceManager.RepositoryIamPolicy("policy", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         RepositoryId = @default.RepositoryId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/securesourcemanager.repoAdmin",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securesourcemanager.NewRepositoryIamPolicy(ctx, "policy", &securesourcemanager.RepositoryIamPolicyArgs{
/// 			Project:      pulumi.Any(_default.Project),
/// 			Location:     pulumi.Any(_default.Location),
/// 			RepositoryId: pulumi.Any(_default.RepositoryId),
/// 			PolicyData:   pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamPolicy;
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamPolicyArgs;
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
///                 .role("roles/securesourcemanager.repoAdmin")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new RepositoryIamPolicy("policy", RepositoryIamPolicyArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .repositoryId(default_.repositoryId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:securesourcemanager:RepositoryIamPolicy
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       repositoryId: ${default.repositoryId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/securesourcemanager.repoAdmin
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.securesourcemanager.RepositoryIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.securesourcemanager.RepositoryIamBinding("binding", {
///     project: _default.project,
///     location: _default.location,
///     repositoryId: _default.repositoryId,
///     role: "roles/securesourcemanager.repoAdmin",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.securesourcemanager.RepositoryIamBinding("binding",
///     project=default["project"],
///     location=default["location"],
///     repository_id=default["repositoryId"],
///     role="roles/securesourcemanager.repoAdmin",
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
///     var binding = new Gcp.SecureSourceManager.RepositoryIamBinding("binding", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         RepositoryId = @default.RepositoryId,
///         Role = "roles/securesourcemanager.repoAdmin",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securesourcemanager.NewRepositoryIamBinding(ctx, "binding", &securesourcemanager.RepositoryIamBindingArgs{
/// 			Project:      pulumi.Any(_default.Project),
/// 			Location:     pulumi.Any(_default.Location),
/// 			RepositoryId: pulumi.Any(_default.RepositoryId),
/// 			Role:         pulumi.String("roles/securesourcemanager.repoAdmin"),
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
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamBinding;
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamBindingArgs;
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
///         var binding = new RepositoryIamBinding("binding", RepositoryIamBindingArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .repositoryId(default_.repositoryId())
///             .role("roles/securesourcemanager.repoAdmin")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:securesourcemanager:RepositoryIamBinding
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       repositoryId: ${default.repositoryId}
///       role: roles/securesourcemanager.repoAdmin
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.securesourcemanager.RepositoryIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.securesourcemanager.RepositoryIamMember("member", {
///     project: _default.project,
///     location: _default.location,
///     repositoryId: _default.repositoryId,
///     role: "roles/securesourcemanager.repoAdmin",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.securesourcemanager.RepositoryIamMember("member",
///     project=default["project"],
///     location=default["location"],
///     repository_id=default["repositoryId"],
///     role="roles/securesourcemanager.repoAdmin",
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
///     var member = new Gcp.SecureSourceManager.RepositoryIamMember("member", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         RepositoryId = @default.RepositoryId,
///         Role = "roles/securesourcemanager.repoAdmin",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securesourcemanager.NewRepositoryIamMember(ctx, "member", &securesourcemanager.RepositoryIamMemberArgs{
/// 			Project:      pulumi.Any(_default.Project),
/// 			Location:     pulumi.Any(_default.Location),
/// 			RepositoryId: pulumi.Any(_default.RepositoryId),
/// 			Role:         pulumi.String("roles/securesourcemanager.repoAdmin"),
/// 			Member:       pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamMember;
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamMemberArgs;
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
///         var member = new RepositoryIamMember("member", RepositoryIamMemberArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .repositoryId(default_.repositoryId())
///             .role("roles/securesourcemanager.repoAdmin")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:securesourcemanager:RepositoryIamMember
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       repositoryId: ${default.repositoryId}
///       role: roles/securesourcemanager.repoAdmin
///       member: user:jane@example.com
/// ```
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Secure Source Manager Repository
///
/// Three different resources help you manage your IAM policy for Secure Source Manager Repository. Each of these resources serves a different use case:
///
/// * `gcp.securesourcemanager.RepositoryIamPolicy`: Authoritative. Sets the IAM policy for the repository and replaces any existing policy already attached.
/// * `gcp.securesourcemanager.RepositoryIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the repository are preserved.
/// * `gcp.securesourcemanager.RepositoryIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the repository are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.securesourcemanager.RepositoryIamPolicy`: Retrieves the IAM policy for the repository
///
/// > **Note:** `gcp.securesourcemanager.RepositoryIamPolicy` **cannot** be used in conjunction with `gcp.securesourcemanager.RepositoryIamBinding` and `gcp.securesourcemanager.RepositoryIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.securesourcemanager.RepositoryIamBinding` resources **can be** used in conjunction with `gcp.securesourcemanager.RepositoryIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.securesourcemanager.RepositoryIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/securesourcemanager.repoAdmin",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.securesourcemanager.RepositoryIamPolicy("policy", {
///     project: _default.project,
///     location: _default.location,
///     repositoryId: _default.repositoryId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/securesourcemanager.repoAdmin",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.securesourcemanager.RepositoryIamPolicy("policy",
///     project=default["project"],
///     location=default["location"],
///     repository_id=default["repositoryId"],
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
///                 Role = "roles/securesourcemanager.repoAdmin",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.SecureSourceManager.RepositoryIamPolicy("policy", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         RepositoryId = @default.RepositoryId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/securesourcemanager.repoAdmin",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securesourcemanager.NewRepositoryIamPolicy(ctx, "policy", &securesourcemanager.RepositoryIamPolicyArgs{
/// 			Project:      pulumi.Any(_default.Project),
/// 			Location:     pulumi.Any(_default.Location),
/// 			RepositoryId: pulumi.Any(_default.RepositoryId),
/// 			PolicyData:   pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamPolicy;
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamPolicyArgs;
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
///                 .role("roles/securesourcemanager.repoAdmin")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new RepositoryIamPolicy("policy", RepositoryIamPolicyArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .repositoryId(default_.repositoryId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:securesourcemanager:RepositoryIamPolicy
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       repositoryId: ${default.repositoryId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/securesourcemanager.repoAdmin
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.securesourcemanager.RepositoryIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.securesourcemanager.RepositoryIamBinding("binding", {
///     project: _default.project,
///     location: _default.location,
///     repositoryId: _default.repositoryId,
///     role: "roles/securesourcemanager.repoAdmin",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.securesourcemanager.RepositoryIamBinding("binding",
///     project=default["project"],
///     location=default["location"],
///     repository_id=default["repositoryId"],
///     role="roles/securesourcemanager.repoAdmin",
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
///     var binding = new Gcp.SecureSourceManager.RepositoryIamBinding("binding", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         RepositoryId = @default.RepositoryId,
///         Role = "roles/securesourcemanager.repoAdmin",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securesourcemanager.NewRepositoryIamBinding(ctx, "binding", &securesourcemanager.RepositoryIamBindingArgs{
/// 			Project:      pulumi.Any(_default.Project),
/// 			Location:     pulumi.Any(_default.Location),
/// 			RepositoryId: pulumi.Any(_default.RepositoryId),
/// 			Role:         pulumi.String("roles/securesourcemanager.repoAdmin"),
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
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamBinding;
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamBindingArgs;
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
///         var binding = new RepositoryIamBinding("binding", RepositoryIamBindingArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .repositoryId(default_.repositoryId())
///             .role("roles/securesourcemanager.repoAdmin")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:securesourcemanager:RepositoryIamBinding
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       repositoryId: ${default.repositoryId}
///       role: roles/securesourcemanager.repoAdmin
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.securesourcemanager.RepositoryIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.securesourcemanager.RepositoryIamMember("member", {
///     project: _default.project,
///     location: _default.location,
///     repositoryId: _default.repositoryId,
///     role: "roles/securesourcemanager.repoAdmin",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.securesourcemanager.RepositoryIamMember("member",
///     project=default["project"],
///     location=default["location"],
///     repository_id=default["repositoryId"],
///     role="roles/securesourcemanager.repoAdmin",
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
///     var member = new Gcp.SecureSourceManager.RepositoryIamMember("member", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         RepositoryId = @default.RepositoryId,
///         Role = "roles/securesourcemanager.repoAdmin",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securesourcemanager.NewRepositoryIamMember(ctx, "member", &securesourcemanager.RepositoryIamMemberArgs{
/// 			Project:      pulumi.Any(_default.Project),
/// 			Location:     pulumi.Any(_default.Location),
/// 			RepositoryId: pulumi.Any(_default.RepositoryId),
/// 			Role:         pulumi.String("roles/securesourcemanager.repoAdmin"),
/// 			Member:       pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamMember;
/// import com.pulumi.gcp.securesourcemanager.RepositoryIamMemberArgs;
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
///         var member = new RepositoryIamMember("member", RepositoryIamMemberArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .repositoryId(default_.repositoryId())
///             .role("roles/securesourcemanager.repoAdmin")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:securesourcemanager:RepositoryIamMember
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       repositoryId: ${default.repositoryId}
///       role: roles/securesourcemanager.repoAdmin
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}
///
/// * {{project}}/{{location}}/{{repository_id}}
///
/// * {{location}}/{{repository_id}}
///
/// * {{repository_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Secure Source Manager repository IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/repositoryIamPolicy:RepositoryIamPolicy editor "projects/{{project}}/locations/{{location}}/repositories/{{repository_id}} roles/securesourcemanager.repoAdmin user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/repositoryIamPolicy:RepositoryIamPolicy editor "projects/{{project}}/locations/{{location}}/repositories/{{repository_id}} roles/securesourcemanager.repoAdmin"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/repositoryIamPolicy:RepositoryIamPolicy editor projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class RepositoryIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// The location for the Repository.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
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
  late final pulumi.Output<String> repositoryId;

  /// Creates a new [RepositoryIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RepositoryIamPolicy]. {@macro pulumi_securesourcemanager_repository_iam_policy_repository_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RepositoryIamPolicy(
    String name, {
    RepositoryIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securesourcemanager/repositoryIamPolicy:RepositoryIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.repositoryId = registerOutput<String>('repositoryId');
  }
}
