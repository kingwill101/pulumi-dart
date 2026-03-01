import 'package:pulumi/pulumi.dart' as pulumi;
import 'iceberg_catalog_iam_member_args.dart';
import 'iceberg_catalog_iam_member_condition.dart';

/// Three different resources help you manage your IAM policy for Biglake IcebergCatalog. Each of these resources serves a different use case:
///
/// * `gcp.biglake.IcebergCatalogIamPolicy`: Authoritative. Sets the IAM policy for the icebergcatalog and replaces any existing policy already attached.
/// * `gcp.biglake.IcebergCatalogIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the icebergcatalog are preserved.
/// * `gcp.biglake.IcebergCatalogIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the icebergcatalog are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.biglake.IcebergCatalogIamPolicy`: Retrieves the IAM policy for the icebergcatalog
///
/// > **Note:** `gcp.biglake.IcebergCatalogIamPolicy` **cannot** be used in conjunction with `gcp.biglake.IcebergCatalogIamBinding` and `gcp.biglake.IcebergCatalogIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.biglake.IcebergCatalogIamBinding` resources **can be** used in conjunction with `gcp.biglake.IcebergCatalogIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.biglake.IcebergCatalogIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/biglake.editor",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.biglake.IcebergCatalogIamPolicy("policy", {
///     project: myIcebergCatalog.project,
///     name: myIcebergCatalog.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/biglake.editor",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.biglake.IcebergCatalogIamPolicy("policy",
///     project=my_iceberg_catalog["project"],
///     name=my_iceberg_catalog["name"],
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
///                 Role = "roles/biglake.editor",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.BigLake.IcebergCatalogIamPolicy("policy", new()
///     {
///         Project = myIcebergCatalog.Project,
///         Name = myIcebergCatalog.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/biglake.editor",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = biglake.NewIcebergCatalogIamPolicy(ctx, "policy", &biglake.IcebergCatalogIamPolicyArgs{
/// 			Project:    pulumi.Any(myIcebergCatalog.Project),
/// 			Name:       pulumi.Any(myIcebergCatalog.Name),
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
/// import com.pulumi.gcp.biglake.IcebergCatalogIamPolicy;
/// import com.pulumi.gcp.biglake.IcebergCatalogIamPolicyArgs;
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
///                 .role("roles/biglake.editor")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new IcebergCatalogIamPolicy("policy", IcebergCatalogIamPolicyArgs.builder()
///             .project(myIcebergCatalog.project())
///             .name(myIcebergCatalog.name())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:biglake:IcebergCatalogIamPolicy
///     properties:
///       project: ${myIcebergCatalog.project}
///       name: ${myIcebergCatalog.name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/biglake.editor
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.biglake.IcebergCatalogIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.biglake.IcebergCatalogIamBinding("binding", {
///     project: myIcebergCatalog.project,
///     name: myIcebergCatalog.name,
///     role: "roles/biglake.editor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.biglake.IcebergCatalogIamBinding("binding",
///     project=my_iceberg_catalog["project"],
///     name=my_iceberg_catalog["name"],
///     role="roles/biglake.editor",
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
///     var binding = new Gcp.BigLake.IcebergCatalogIamBinding("binding", new()
///     {
///         Project = myIcebergCatalog.Project,
///         Name = myIcebergCatalog.Name,
///         Role = "roles/biglake.editor",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := biglake.NewIcebergCatalogIamBinding(ctx, "binding", &biglake.IcebergCatalogIamBindingArgs{
/// 			Project: pulumi.Any(myIcebergCatalog.Project),
/// 			Name:    pulumi.Any(myIcebergCatalog.Name),
/// 			Role:    pulumi.String("roles/biglake.editor"),
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
/// import com.pulumi.gcp.biglake.IcebergCatalogIamBinding;
/// import com.pulumi.gcp.biglake.IcebergCatalogIamBindingArgs;
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
///         var binding = new IcebergCatalogIamBinding("binding", IcebergCatalogIamBindingArgs.builder()
///             .project(myIcebergCatalog.project())
///             .name(myIcebergCatalog.name())
///             .role("roles/biglake.editor")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:biglake:IcebergCatalogIamBinding
///     properties:
///       project: ${myIcebergCatalog.project}
///       name: ${myIcebergCatalog.name}
///       role: roles/biglake.editor
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.biglake.IcebergCatalogIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.biglake.IcebergCatalogIamMember("member", {
///     project: myIcebergCatalog.project,
///     name: myIcebergCatalog.name,
///     role: "roles/biglake.editor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.biglake.IcebergCatalogIamMember("member",
///     project=my_iceberg_catalog["project"],
///     name=my_iceberg_catalog["name"],
///     role="roles/biglake.editor",
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
///     var member = new Gcp.BigLake.IcebergCatalogIamMember("member", new()
///     {
///         Project = myIcebergCatalog.Project,
///         Name = myIcebergCatalog.Name,
///         Role = "roles/biglake.editor",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := biglake.NewIcebergCatalogIamMember(ctx, "member", &biglake.IcebergCatalogIamMemberArgs{
/// 			Project: pulumi.Any(myIcebergCatalog.Project),
/// 			Name:    pulumi.Any(myIcebergCatalog.Name),
/// 			Role:    pulumi.String("roles/biglake.editor"),
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
/// import com.pulumi.gcp.biglake.IcebergCatalogIamMember;
/// import com.pulumi.gcp.biglake.IcebergCatalogIamMemberArgs;
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
///         var member = new IcebergCatalogIamMember("member", IcebergCatalogIamMemberArgs.builder()
///             .project(myIcebergCatalog.project())
///             .name(myIcebergCatalog.name())
///             .role("roles/biglake.editor")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:biglake:IcebergCatalogIamMember
///     properties:
///       project: ${myIcebergCatalog.project}
///       name: ${myIcebergCatalog.name}
///       role: roles/biglake.editor
///       member: user:jane@example.com
/// ```
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Biglake IcebergCatalog
///
/// Three different resources help you manage your IAM policy for Biglake IcebergCatalog. Each of these resources serves a different use case:
///
/// * `gcp.biglake.IcebergCatalogIamPolicy`: Authoritative. Sets the IAM policy for the icebergcatalog and replaces any existing policy already attached.
/// * `gcp.biglake.IcebergCatalogIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the icebergcatalog are preserved.
/// * `gcp.biglake.IcebergCatalogIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the icebergcatalog are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.biglake.IcebergCatalogIamPolicy`: Retrieves the IAM policy for the icebergcatalog
///
/// > **Note:** `gcp.biglake.IcebergCatalogIamPolicy` **cannot** be used in conjunction with `gcp.biglake.IcebergCatalogIamBinding` and `gcp.biglake.IcebergCatalogIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.biglake.IcebergCatalogIamBinding` resources **can be** used in conjunction with `gcp.biglake.IcebergCatalogIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.biglake.IcebergCatalogIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/biglake.editor",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.biglake.IcebergCatalogIamPolicy("policy", {
///     project: myIcebergCatalog.project,
///     name: myIcebergCatalog.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/biglake.editor",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.biglake.IcebergCatalogIamPolicy("policy",
///     project=my_iceberg_catalog["project"],
///     name=my_iceberg_catalog["name"],
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
///                 Role = "roles/biglake.editor",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.BigLake.IcebergCatalogIamPolicy("policy", new()
///     {
///         Project = myIcebergCatalog.Project,
///         Name = myIcebergCatalog.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/biglake.editor",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = biglake.NewIcebergCatalogIamPolicy(ctx, "policy", &biglake.IcebergCatalogIamPolicyArgs{
/// 			Project:    pulumi.Any(myIcebergCatalog.Project),
/// 			Name:       pulumi.Any(myIcebergCatalog.Name),
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
/// import com.pulumi.gcp.biglake.IcebergCatalogIamPolicy;
/// import com.pulumi.gcp.biglake.IcebergCatalogIamPolicyArgs;
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
///                 .role("roles/biglake.editor")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new IcebergCatalogIamPolicy("policy", IcebergCatalogIamPolicyArgs.builder()
///             .project(myIcebergCatalog.project())
///             .name(myIcebergCatalog.name())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:biglake:IcebergCatalogIamPolicy
///     properties:
///       project: ${myIcebergCatalog.project}
///       name: ${myIcebergCatalog.name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/biglake.editor
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.biglake.IcebergCatalogIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.biglake.IcebergCatalogIamBinding("binding", {
///     project: myIcebergCatalog.project,
///     name: myIcebergCatalog.name,
///     role: "roles/biglake.editor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.biglake.IcebergCatalogIamBinding("binding",
///     project=my_iceberg_catalog["project"],
///     name=my_iceberg_catalog["name"],
///     role="roles/biglake.editor",
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
///     var binding = new Gcp.BigLake.IcebergCatalogIamBinding("binding", new()
///     {
///         Project = myIcebergCatalog.Project,
///         Name = myIcebergCatalog.Name,
///         Role = "roles/biglake.editor",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := biglake.NewIcebergCatalogIamBinding(ctx, "binding", &biglake.IcebergCatalogIamBindingArgs{
/// 			Project: pulumi.Any(myIcebergCatalog.Project),
/// 			Name:    pulumi.Any(myIcebergCatalog.Name),
/// 			Role:    pulumi.String("roles/biglake.editor"),
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
/// import com.pulumi.gcp.biglake.IcebergCatalogIamBinding;
/// import com.pulumi.gcp.biglake.IcebergCatalogIamBindingArgs;
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
///         var binding = new IcebergCatalogIamBinding("binding", IcebergCatalogIamBindingArgs.builder()
///             .project(myIcebergCatalog.project())
///             .name(myIcebergCatalog.name())
///             .role("roles/biglake.editor")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:biglake:IcebergCatalogIamBinding
///     properties:
///       project: ${myIcebergCatalog.project}
///       name: ${myIcebergCatalog.name}
///       role: roles/biglake.editor
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.biglake.IcebergCatalogIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.biglake.IcebergCatalogIamMember("member", {
///     project: myIcebergCatalog.project,
///     name: myIcebergCatalog.name,
///     role: "roles/biglake.editor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.biglake.IcebergCatalogIamMember("member",
///     project=my_iceberg_catalog["project"],
///     name=my_iceberg_catalog["name"],
///     role="roles/biglake.editor",
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
///     var member = new Gcp.BigLake.IcebergCatalogIamMember("member", new()
///     {
///         Project = myIcebergCatalog.Project,
///         Name = myIcebergCatalog.Name,
///         Role = "roles/biglake.editor",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := biglake.NewIcebergCatalogIamMember(ctx, "member", &biglake.IcebergCatalogIamMemberArgs{
/// 			Project: pulumi.Any(myIcebergCatalog.Project),
/// 			Name:    pulumi.Any(myIcebergCatalog.Name),
/// 			Role:    pulumi.String("roles/biglake.editor"),
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
/// import com.pulumi.gcp.biglake.IcebergCatalogIamMember;
/// import com.pulumi.gcp.biglake.IcebergCatalogIamMemberArgs;
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
///         var member = new IcebergCatalogIamMember("member", IcebergCatalogIamMemberArgs.builder()
///             .project(myIcebergCatalog.project())
///             .name(myIcebergCatalog.name())
///             .role("roles/biglake.editor")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:biglake:IcebergCatalogIamMember
///     properties:
///       project: ${myIcebergCatalog.project}
///       name: ${myIcebergCatalog.name}
///       role: roles/biglake.editor
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/catalogs/{{name}}
///
/// * {{project}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Biglake icebergcatalog IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:biglake/icebergCatalogIamMember:IcebergCatalogIamMember editor "projects/{{project}}/catalogs/{{iceberg_catalog}} roles/biglake.editor user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:biglake/icebergCatalogIamMember:IcebergCatalogIamMember editor "projects/{{project}}/catalogs/{{iceberg_catalog}} roles/biglake.editor"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:biglake/icebergCatalogIamMember:IcebergCatalogIamMember editor projects/{{project}}/catalogs/{{iceberg_catalog}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class IcebergCatalogIamMember extends pulumi.CustomResource {
  late final pulumi.Output<IcebergCatalogIamMemberCondition?> condition;

  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// Identities that will be granted the privilege in `role`.
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
  late final pulumi.Output<String> member;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// The role that should be applied. Only one
  /// `gcp.biglake.IcebergCatalogIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [IcebergCatalogIamMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IcebergCatalogIamMember]. {@macro pulumi_biglake_iceberg_catalog_iam_member_iceberg_catalog_iam_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IcebergCatalogIamMember(
    String name, {
    IcebergCatalogIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:biglake/icebergCatalogIamMember:IcebergCatalogIamMember',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.condition = registerOutput<IcebergCatalogIamMemberCondition?>(
      'condition',
    );
    this.etag = registerOutput<String>('etag');
    this.member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
