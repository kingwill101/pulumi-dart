import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_iam_policy_args.dart';

/// Three different resources help you manage IAM policies on bigtable tables. Each of these resources serves a different use case:
///
/// * `gcp.bigtable.TableIamPolicy`: Authoritative. Sets the IAM policy for the tables and replaces any existing policy already attached.
/// * `gcp.bigtable.TableIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the table are preserved.
/// * `gcp.bigtable.TableIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the table are preserved.
///
/// > **Note:** `gcp.bigtable.TableIamPolicy` **cannot** be used in conjunction with `gcp.bigtable.TableIamBinding` and `gcp.bigtable.TableIamMember` or they will fight over what your policy should be. In addition, be careful not to accidentally unset ownership of the table as `gcp.bigtable.TableIamPolicy` replaces the entire policy.
///
/// > **Note:** `gcp.bigtable.TableIamBinding` resources **can be** used in conjunction with `gcp.bigtable.TableIamMember` resources **only if** they do not grant privilege to the same role.
///
/// ## gcp.bigtable.TableIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/bigtable.user",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const editor = new gcp.bigtable.TableIamPolicy("editor", {
///     project: "your-project",
///     instanceName: "your-bigtable-instance",
///     table: "your-bigtable-table",
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/bigtable.user",
///     "members": ["user:jane@example.com"],
/// }])
/// editor = gcp.bigtable.TableIamPolicy("editor",
///     project="your-project",
///     instance_name="your-bigtable-instance",
///     table="your-bigtable-table",
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
///                 Role = "roles/bigtable.user",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var editor = new Gcp.BigTable.TableIamPolicy("editor", new()
///     {
///         Project = "your-project",
///         InstanceName = "your-bigtable-instance",
///         Table = "your-bigtable-table",
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/bigtable.user",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigtable.NewTableIamPolicy(ctx, "editor", &bigtable.TableIamPolicyArgs{
/// 			Project:      pulumi.String("your-project"),
/// 			InstanceName: pulumi.String("your-bigtable-instance"),
/// 			Table:        pulumi.String("your-bigtable-table"),
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
/// import com.pulumi.gcp.bigtable.TableIamPolicy;
/// import com.pulumi.gcp.bigtable.TableIamPolicyArgs;
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
///                 .role("roles/bigtable.user")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var editor = new TableIamPolicy("editor", TableIamPolicyArgs.builder()
///             .project("your-project")
///             .instanceName("your-bigtable-instance")
///             .table("your-bigtable-table")
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:bigtable:TableIamPolicy
///     properties:
///       project: your-project
///       instanceName: your-bigtable-instance
///       table: your-bigtable-table
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/bigtable.user
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.bigtable.TableIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.bigtable.TableIamBinding("editor", {
///     table: "your-bigtable-table",
///     instanceName: "your-bigtable-instance",
///     role: "roles/bigtable.user",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.bigtable.TableIamBinding("editor",
///     table="your-bigtable-table",
///     instance_name="your-bigtable-instance",
///     role="roles/bigtable.user",
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
///     var editor = new Gcp.BigTable.TableIamBinding("editor", new()
///     {
///         Table = "your-bigtable-table",
///         InstanceName = "your-bigtable-instance",
///         Role = "roles/bigtable.user",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigtable.NewTableIamBinding(ctx, "editor", &bigtable.TableIamBindingArgs{
/// 			Table:        pulumi.String("your-bigtable-table"),
/// 			InstanceName: pulumi.String("your-bigtable-instance"),
/// 			Role:         pulumi.String("roles/bigtable.user"),
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
/// import com.pulumi.gcp.bigtable.TableIamBinding;
/// import com.pulumi.gcp.bigtable.TableIamBindingArgs;
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
///         var editor = new TableIamBinding("editor", TableIamBindingArgs.builder()
///             .table("your-bigtable-table")
///             .instanceName("your-bigtable-instance")
///             .role("roles/bigtable.user")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:bigtable:TableIamBinding
///     properties:
///       table: your-bigtable-table
///       instanceName: your-bigtable-instance
///       role: roles/bigtable.user
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.bigtable.TableIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.bigtable.TableIamMember("editor", {
///     table: "your-bigtable-table",
///     instanceName: "your-bigtable-instance",
///     role: "roles/bigtable.user",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.bigtable.TableIamMember("editor",
///     table="your-bigtable-table",
///     instance_name="your-bigtable-instance",
///     role="roles/bigtable.user",
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
///     var editor = new Gcp.BigTable.TableIamMember("editor", new()
///     {
///         Table = "your-bigtable-table",
///         InstanceName = "your-bigtable-instance",
///         Role = "roles/bigtable.user",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigtable.NewTableIamMember(ctx, "editor", &bigtable.TableIamMemberArgs{
/// 			Table:        pulumi.String("your-bigtable-table"),
/// 			InstanceName: pulumi.String("your-bigtable-instance"),
/// 			Role:         pulumi.String("roles/bigtable.user"),
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
/// import com.pulumi.gcp.bigtable.TableIamMember;
/// import com.pulumi.gcp.bigtable.TableIamMemberArgs;
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
///         var editor = new TableIamMember("editor", TableIamMemberArgs.builder()
///             .table("your-bigtable-table")
///             .instanceName("your-bigtable-instance")
///             .role("roles/bigtable.user")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:bigtable:TableIamMember
///     properties:
///       table: your-bigtable-table
///       instanceName: your-bigtable-instance
///       role: roles/bigtable.user
///       member: user:jane@example.com
/// ```
///
///
/// ## gcp.bigtable.TableIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/bigtable.user",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const editor = new gcp.bigtable.TableIamPolicy("editor", {
///     project: "your-project",
///     instanceName: "your-bigtable-instance",
///     table: "your-bigtable-table",
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/bigtable.user",
///     "members": ["user:jane@example.com"],
/// }])
/// editor = gcp.bigtable.TableIamPolicy("editor",
///     project="your-project",
///     instance_name="your-bigtable-instance",
///     table="your-bigtable-table",
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
///                 Role = "roles/bigtable.user",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var editor = new Gcp.BigTable.TableIamPolicy("editor", new()
///     {
///         Project = "your-project",
///         InstanceName = "your-bigtable-instance",
///         Table = "your-bigtable-table",
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/bigtable.user",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigtable.NewTableIamPolicy(ctx, "editor", &bigtable.TableIamPolicyArgs{
/// 			Project:      pulumi.String("your-project"),
/// 			InstanceName: pulumi.String("your-bigtable-instance"),
/// 			Table:        pulumi.String("your-bigtable-table"),
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
/// import com.pulumi.gcp.bigtable.TableIamPolicy;
/// import com.pulumi.gcp.bigtable.TableIamPolicyArgs;
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
///                 .role("roles/bigtable.user")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var editor = new TableIamPolicy("editor", TableIamPolicyArgs.builder()
///             .project("your-project")
///             .instanceName("your-bigtable-instance")
///             .table("your-bigtable-table")
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:bigtable:TableIamPolicy
///     properties:
///       project: your-project
///       instanceName: your-bigtable-instance
///       table: your-bigtable-table
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/bigtable.user
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.bigtable.TableIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.bigtable.TableIamBinding("editor", {
///     table: "your-bigtable-table",
///     instanceName: "your-bigtable-instance",
///     role: "roles/bigtable.user",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.bigtable.TableIamBinding("editor",
///     table="your-bigtable-table",
///     instance_name="your-bigtable-instance",
///     role="roles/bigtable.user",
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
///     var editor = new Gcp.BigTable.TableIamBinding("editor", new()
///     {
///         Table = "your-bigtable-table",
///         InstanceName = "your-bigtable-instance",
///         Role = "roles/bigtable.user",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigtable.NewTableIamBinding(ctx, "editor", &bigtable.TableIamBindingArgs{
/// 			Table:        pulumi.String("your-bigtable-table"),
/// 			InstanceName: pulumi.String("your-bigtable-instance"),
/// 			Role:         pulumi.String("roles/bigtable.user"),
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
/// import com.pulumi.gcp.bigtable.TableIamBinding;
/// import com.pulumi.gcp.bigtable.TableIamBindingArgs;
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
///         var editor = new TableIamBinding("editor", TableIamBindingArgs.builder()
///             .table("your-bigtable-table")
///             .instanceName("your-bigtable-instance")
///             .role("roles/bigtable.user")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:bigtable:TableIamBinding
///     properties:
///       table: your-bigtable-table
///       instanceName: your-bigtable-instance
///       role: roles/bigtable.user
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.bigtable.TableIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.bigtable.TableIamMember("editor", {
///     table: "your-bigtable-table",
///     instanceName: "your-bigtable-instance",
///     role: "roles/bigtable.user",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.bigtable.TableIamMember("editor",
///     table="your-bigtable-table",
///     instance_name="your-bigtable-instance",
///     role="roles/bigtable.user",
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
///     var editor = new Gcp.BigTable.TableIamMember("editor", new()
///     {
///         Table = "your-bigtable-table",
///         InstanceName = "your-bigtable-instance",
///         Role = "roles/bigtable.user",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigtable.NewTableIamMember(ctx, "editor", &bigtable.TableIamMemberArgs{
/// 			Table:        pulumi.String("your-bigtable-table"),
/// 			InstanceName: pulumi.String("your-bigtable-instance"),
/// 			Role:         pulumi.String("roles/bigtable.user"),
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
/// import com.pulumi.gcp.bigtable.TableIamMember;
/// import com.pulumi.gcp.bigtable.TableIamMemberArgs;
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
///         var editor = new TableIamMember("editor", TableIamMemberArgs.builder()
///             .table("your-bigtable-table")
///             .instanceName("your-bigtable-instance")
///             .role("roles/bigtable.user")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:bigtable:TableIamMember
///     properties:
///       table: your-bigtable-table
///       instanceName: your-bigtable-instance
///       role: roles/bigtable.user
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// ### Importing IAM policies
///
/// IAM policy imports use the `table` identifier of the Bigtable Table resource only. For example:
///
/// * `"projects/{project}/instances/{instance}/tables/{table}"`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import IAM policies:
///
/// tf
///
/// import {
///
/// id = "projects/{project}/instances/{instance}/tables/{table}"
///
/// to = google_bigtable_table_iam_policy.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:bigtable/tableIamPolicy:TableIamPolicy default projects/{project}/instances/{instance}/tables/{table}
/// ```
class TableIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the tables's IAM policy.
  late final pulumi.Output<String> etag;

  /// The name or relative resource id of the instance that owns the table.
  late final pulumi.Output<String> instanceName;

  /// The policy data generated by a `gcp.organizations.getIAMPolicy` data source.
  ///
  /// - - -
  late final pulumi.Output<String> policyData;

  /// The project in which the table belongs. If it
  /// is not provided, this provider will use the provider default.
  late final pulumi.Output<String> project;

  /// The name or relative resource id of the table to manage IAM policies for.
  ///
  /// For `gcp.bigtable.TableIamMember` or `gcp.bigtable.TableIamBinding`:
  late final pulumi.Output<String> table;

  /// Creates a new [TableIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TableIamPolicy]. {@macro pulumi_bigtable_table_iam_policy_table_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TableIamPolicy(
    String name, {
    TableIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:bigtable/tableIamPolicy:TableIamPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.etag = registerOutput<String>('etag');
    this.instanceName = registerOutput<String>('instanceName');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.table = registerOutput<String>('table');
  }
}
