import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_iambinding_args.dart';
import 'database_iambinding_condition.dart';

/// Three different resources help you manage your IAM policy for a Spanner database. Each of these resources serves a different use case:
///
/// * `gcp.spanner.DatabaseIAMPolicy`: Authoritative. Sets the IAM policy for the database and replaces any existing policy already attached.
///
/// > **Warning:** It's entirely possibly to lock yourself out of your database using `gcp.spanner.DatabaseIAMPolicy`. Any permissions granted by default will be removed unless you include them in your config.
///
/// * `gcp.spanner.DatabaseIAMBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the database are preserved.
/// * `gcp.spanner.DatabaseIAMMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the database are preserved.
///
/// > **Note:** `gcp.spanner.DatabaseIAMPolicy` **cannot** be used in conjunction with `gcp.spanner.DatabaseIAMBinding` and `gcp.spanner.DatabaseIAMMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.spanner.DatabaseIAMBinding` resources **can be** used in conjunction with `gcp.spanner.DatabaseIAMMember` resources **only if** they do not grant privilege to the same role.
///
/// ## gcp.spanner.DatabaseIAMPolicy
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
/// const database = new gcp.spanner.DatabaseIAMPolicy("database", {
///     instance: "your-instance-name",
///     database: "your-database-name",
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
/// database = gcp.spanner.DatabaseIAMPolicy("database",
///     instance="your-instance-name",
///     database="your-database-name",
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
///     var database = new Gcp.Spanner.DatabaseIAMPolicy("database", new()
///     {
///         Instance = "your-instance-name",
///         Database = "your-database-name",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
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
/// 		_, err = spanner.NewDatabaseIAMPolicy(ctx, "database", &spanner.DatabaseIAMPolicyArgs{
/// 			Instance:   pulumi.String("your-instance-name"),
/// 			Database:   pulumi.String("your-database-name"),
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
/// import com.pulumi.gcp.spanner.DatabaseIAMPolicy;
/// import com.pulumi.gcp.spanner.DatabaseIAMPolicyArgs;
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
///         var database = new DatabaseIAMPolicy("database", DatabaseIAMPolicyArgs.builder()
///             .instance("your-instance-name")
///             .database("your-database-name")
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   database:
///     type: gcp:spanner:DatabaseIAMPolicy
///     properties:
///       instance: your-instance-name
///       database: your-database-name
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
///             title: "My Role",
///             description: "Grant permissions on my_role",
///             expression: "(resource.type == \"spanner.googleapis.com/DatabaseRole\" && (resource.name.endsWith(\"/myrole\")))",
///         },
///     }],
/// });
/// const database = new gcp.spanner.DatabaseIAMPolicy("database", {
///     instance: "your-instance-name",
///     database: "your-database-name",
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
///         "title": "My Role",
///         "description": "Grant permissions on my_role",
///         "expression": "(resource.type == \"spanner.googleapis.com/DatabaseRole\" && (resource.name.endsWith(\"/myrole\")))",
///     },
/// }])
/// database = gcp.spanner.DatabaseIAMPolicy("database",
///     instance="your-instance-name",
///     database="your-database-name",
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
///                     Title = "My Role",
///                     Description = "Grant permissions on my_role",
///                     Expression = "(resource.type == \"spanner.googleapis.com/DatabaseRole\" && (resource.name.endsWith(\"/myrole\")))",
///                 },
///             },
///         },
///     });
///
///     var database = new Gcp.Spanner.DatabaseIAMPolicy("database", new()
///     {
///         Instance = "your-instance-name",
///         Database = "your-database-name",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
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
/// 						Title:       "My Role",
/// 						Description: pulumi.StringRef("Grant permissions on my_role"),
/// 						Expression:  "(resource.type == \"spanner.googleapis.com/DatabaseRole\" && (resource.name.endsWith(\"/myrole\")))",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = spanner.NewDatabaseIAMPolicy(ctx, "database", &spanner.DatabaseIAMPolicyArgs{
/// 			Instance:   pulumi.String("your-instance-name"),
/// 			Database:   pulumi.String("your-database-name"),
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
/// import com.pulumi.gcp.spanner.DatabaseIAMPolicy;
/// import com.pulumi.gcp.spanner.DatabaseIAMPolicyArgs;
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
///                     .title("My Role")
///                     .description("Grant permissions on my_role")
///                     .expression("(resource.type == \"spanner.googleapis.com/DatabaseRole\" && (resource.name.endsWith(\"/myrole\")))")
///                     .build())
///                 .build())
///             .build());
///
///         var database = new DatabaseIAMPolicy("database", DatabaseIAMPolicyArgs.builder()
///             .instance("your-instance-name")
///             .database("your-database-name")
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   database:
///     type: gcp:spanner:DatabaseIAMPolicy
///     properties:
///       instance: your-instance-name
///       database: your-database-name
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
///               title: My Role
///               description: Grant permissions on my_role
///               expression: (resource.type == "spanner.googleapis.com/DatabaseRole" && (resource.name.endsWith("/myrole")))
/// ```
///
///
/// ## gcp.spanner.DatabaseIAMBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const database = new gcp.spanner.DatabaseIAMBinding("database", {
///     instance: "your-instance-name",
///     database: "your-database-name",
///     role: "roles/compute.networkUser",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// database = gcp.spanner.DatabaseIAMBinding("database",
///     instance="your-instance-name",
///     database="your-database-name",
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
///     var database = new Gcp.Spanner.DatabaseIAMBinding("database", new()
///     {
///         Instance = "your-instance-name",
///         Database = "your-database-name",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := spanner.NewDatabaseIAMBinding(ctx, "database", &spanner.DatabaseIAMBindingArgs{
/// 			Instance: pulumi.String("your-instance-name"),
/// 			Database: pulumi.String("your-database-name"),
/// 			Role:     pulumi.String("roles/compute.networkUser"),
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
/// import com.pulumi.gcp.spanner.DatabaseIAMBinding;
/// import com.pulumi.gcp.spanner.DatabaseIAMBindingArgs;
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
///         var database = new DatabaseIAMBinding("database", DatabaseIAMBindingArgs.builder()
///             .instance("your-instance-name")
///             .database("your-database-name")
///             .role("roles/compute.networkUser")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   database:
///     type: gcp:spanner:DatabaseIAMBinding
///     properties:
///       instance: your-instance-name
///       database: your-database-name
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
/// const database = new gcp.spanner.DatabaseIAMBinding("database", {
///     instance: "your-instance-name",
///     database: "your-database-name",
///     role: "roles/compute.networkUser",
///     members: ["user:jane@example.com"],
///     condition: {
///         title: "My Role",
///         description: "Grant permissions on my_role",
///         expression: "(resource.type == \"spanner.googleapis.com/DatabaseRole\" && (resource.name.endsWith(\"/myrole\")))",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// database = gcp.spanner.DatabaseIAMBinding("database",
///     instance="your-instance-name",
///     database="your-database-name",
///     role="roles/compute.networkUser",
///     members=["user:jane@example.com"],
///     condition={
///         "title": "My Role",
///         "description": "Grant permissions on my_role",
///         "expression": "(resource.type == \"spanner.googleapis.com/DatabaseRole\" && (resource.name.endsWith(\"/myrole\")))",
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
///     var database = new Gcp.Spanner.DatabaseIAMBinding("database", new()
///     {
///         Instance = "your-instance-name",
///         Database = "your-database-name",
///         Role = "roles/compute.networkUser",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Spanner.Inputs.DatabaseIAMBindingConditionArgs
///         {
///             Title = "My Role",
///             Description = "Grant permissions on my_role",
///             Expression = "(resource.type == \"spanner.googleapis.com/DatabaseRole\" && (resource.name.endsWith(\"/myrole\")))",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := spanner.NewDatabaseIAMBinding(ctx, "database", &spanner.DatabaseIAMBindingArgs{
/// 			Instance: pulumi.String("your-instance-name"),
/// 			Database: pulumi.String("your-database-name"),
/// 			Role:     pulumi.String("roles/compute.networkUser"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &spanner.DatabaseIAMBindingConditionArgs{
/// 				Title:       pulumi.String("My Role"),
/// 				Description: pulumi.String("Grant permissions on my_role"),
/// 				Expression:  pulumi.String("(resource.type == \"spanner.googleapis.com/DatabaseRole\" && (resource.name.endsWith(\"/myrole\")))"),
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
/// import com.pulumi.gcp.spanner.DatabaseIAMBinding;
/// import com.pulumi.gcp.spanner.DatabaseIAMBindingArgs;
/// import com.pulumi.gcp.spanner.inputs.DatabaseIAMBindingConditionArgs;
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
///         var database = new DatabaseIAMBinding("database", DatabaseIAMBindingArgs.builder()
///             .instance("your-instance-name")
///             .database("your-database-name")
///             .role("roles/compute.networkUser")
///             .members("user:jane@example.com")
///             .condition(DatabaseIAMBindingConditionArgs.builder()
///                 .title("My Role")
///                 .description("Grant permissions on my_role")
///                 .expression("(resource.type == \"spanner.googleapis.com/DatabaseRole\" && (resource.name.endsWith(\"/myrole\")))")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   database:
///     type: gcp:spanner:DatabaseIAMBinding
///     properties:
///       instance: your-instance-name
///       database: your-database-name
///       role: roles/compute.networkUser
///       members:
///         - user:jane@example.com
///       condition:
///         title: My Role
///         description: Grant permissions on my_role
///         expression: (resource.type == "spanner.googleapis.com/DatabaseRole" && (resource.name.endsWith("/myrole")))
/// ```
///
///
/// ## gcp.spanner.DatabaseIAMMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const database = new gcp.spanner.DatabaseIAMMember("database", {
///     instance: "your-instance-name",
///     database: "your-database-name",
///     role: "roles/compute.networkUser",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// database = gcp.spanner.DatabaseIAMMember("database",
///     instance="your-instance-name",
///     database="your-database-name",
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
///     var database = new Gcp.Spanner.DatabaseIAMMember("database", new()
///     {
///         Instance = "your-instance-name",
///         Database = "your-database-name",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := spanner.NewDatabaseIAMMember(ctx, "database", &spanner.DatabaseIAMMemberArgs{
/// 			Instance: pulumi.String("your-instance-name"),
/// 			Database: pulumi.String("your-database-name"),
/// 			Role:     pulumi.String("roles/compute.networkUser"),
/// 			Member:   pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.spanner.DatabaseIAMMember;
/// import com.pulumi.gcp.spanner.DatabaseIAMMemberArgs;
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
///         var database = new DatabaseIAMMember("database", DatabaseIAMMemberArgs.builder()
///             .instance("your-instance-name")
///             .database("your-database-name")
///             .role("roles/compute.networkUser")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   database:
///     type: gcp:spanner:DatabaseIAMMember
///     properties:
///       instance: your-instance-name
///       database: your-database-name
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
/// const database = new gcp.spanner.DatabaseIAMMember("database", {
///     instance: "your-instance-name",
///     database: "your-database-name",
///     role: "roles/compute.networkUser",
///     member: "user:jane@example.com",
///     condition: {
///         title: "My Role",
///         description: "Grant permissions on my_role",
///         expression: "(resource.type == \"spanner.googleapis.com/DatabaseRole\" && (resource.name.endsWith(\"/myrole\")))",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// database = gcp.spanner.DatabaseIAMMember("database",
///     instance="your-instance-name",
///     database="your-database-name",
///     role="roles/compute.networkUser",
///     member="user:jane@example.com",
///     condition={
///         "title": "My Role",
///         "description": "Grant permissions on my_role",
///         "expression": "(resource.type == \"spanner.googleapis.com/DatabaseRole\" && (resource.name.endsWith(\"/myrole\")))",
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
///     var database = new Gcp.Spanner.DatabaseIAMMember("database", new()
///     {
///         Instance = "your-instance-name",
///         Database = "your-database-name",
///         Role = "roles/compute.networkUser",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Spanner.Inputs.DatabaseIAMMemberConditionArgs
///         {
///             Title = "My Role",
///             Description = "Grant permissions on my_role",
///             Expression = "(resource.type == \"spanner.googleapis.com/DatabaseRole\" && (resource.name.endsWith(\"/myrole\")))",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := spanner.NewDatabaseIAMMember(ctx, "database", &spanner.DatabaseIAMMemberArgs{
/// 			Instance: pulumi.String("your-instance-name"),
/// 			Database: pulumi.String("your-database-name"),
/// 			Role:     pulumi.String("roles/compute.networkUser"),
/// 			Member:   pulumi.String("user:jane@example.com"),
/// 			Condition: &spanner.DatabaseIAMMemberConditionArgs{
/// 				Title:       pulumi.String("My Role"),
/// 				Description: pulumi.String("Grant permissions on my_role"),
/// 				Expression:  pulumi.String("(resource.type == \"spanner.googleapis.com/DatabaseRole\" && (resource.name.endsWith(\"/myrole\")))"),
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
/// import com.pulumi.gcp.spanner.DatabaseIAMMember;
/// import com.pulumi.gcp.spanner.DatabaseIAMMemberArgs;
/// import com.pulumi.gcp.spanner.inputs.DatabaseIAMMemberConditionArgs;
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
///         var database = new DatabaseIAMMember("database", DatabaseIAMMemberArgs.builder()
///             .instance("your-instance-name")
///             .database("your-database-name")
///             .role("roles/compute.networkUser")
///             .member("user:jane@example.com")
///             .condition(DatabaseIAMMemberConditionArgs.builder()
///                 .title("My Role")
///                 .description("Grant permissions on my_role")
///                 .expression("(resource.type == \"spanner.googleapis.com/DatabaseRole\" && (resource.name.endsWith(\"/myrole\")))")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   database:
///     type: gcp:spanner:DatabaseIAMMember
///     properties:
///       instance: your-instance-name
///       database: your-database-name
///       role: roles/compute.networkUser
///       member: user:jane@example.com
///       condition:
///         title: My Role
///         description: Grant permissions on my_role
///         expression: (resource.type == "spanner.googleapis.com/DatabaseRole" && (resource.name.endsWith("/myrole")))
/// ```
///
///
/// ## gcp.spanner.DatabaseIAMBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const database = new gcp.spanner.DatabaseIAMBinding("database", {
///     instance: "your-instance-name",
///     database: "your-database-name",
///     role: "roles/compute.networkUser",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// database = gcp.spanner.DatabaseIAMBinding("database",
///     instance="your-instance-name",
///     database="your-database-name",
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
///     var database = new Gcp.Spanner.DatabaseIAMBinding("database", new()
///     {
///         Instance = "your-instance-name",
///         Database = "your-database-name",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := spanner.NewDatabaseIAMBinding(ctx, "database", &spanner.DatabaseIAMBindingArgs{
/// 			Instance: pulumi.String("your-instance-name"),
/// 			Database: pulumi.String("your-database-name"),
/// 			Role:     pulumi.String("roles/compute.networkUser"),
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
/// import com.pulumi.gcp.spanner.DatabaseIAMBinding;
/// import com.pulumi.gcp.spanner.DatabaseIAMBindingArgs;
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
///         var database = new DatabaseIAMBinding("database", DatabaseIAMBindingArgs.builder()
///             .instance("your-instance-name")
///             .database("your-database-name")
///             .role("roles/compute.networkUser")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   database:
///     type: gcp:spanner:DatabaseIAMBinding
///     properties:
///       instance: your-instance-name
///       database: your-database-name
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
/// const database = new gcp.spanner.DatabaseIAMBinding("database", {
///     instance: "your-instance-name",
///     database: "your-database-name",
///     role: "roles/compute.networkUser",
///     members: ["user:jane@example.com"],
///     condition: {
///         title: "My Role",
///         description: "Grant permissions on my_role",
///         expression: "(resource.type == \"spanner.googleapis.com/DatabaseRole\" && (resource.name.endsWith(\"/myrole\")))",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// database = gcp.spanner.DatabaseIAMBinding("database",
///     instance="your-instance-name",
///     database="your-database-name",
///     role="roles/compute.networkUser",
///     members=["user:jane@example.com"],
///     condition={
///         "title": "My Role",
///         "description": "Grant permissions on my_role",
///         "expression": "(resource.type == \"spanner.googleapis.com/DatabaseRole\" && (resource.name.endsWith(\"/myrole\")))",
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
///     var database = new Gcp.Spanner.DatabaseIAMBinding("database", new()
///     {
///         Instance = "your-instance-name",
///         Database = "your-database-name",
///         Role = "roles/compute.networkUser",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Spanner.Inputs.DatabaseIAMBindingConditionArgs
///         {
///             Title = "My Role",
///             Description = "Grant permissions on my_role",
///             Expression = "(resource.type == \"spanner.googleapis.com/DatabaseRole\" && (resource.name.endsWith(\"/myrole\")))",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := spanner.NewDatabaseIAMBinding(ctx, "database", &spanner.DatabaseIAMBindingArgs{
/// 			Instance: pulumi.String("your-instance-name"),
/// 			Database: pulumi.String("your-database-name"),
/// 			Role:     pulumi.String("roles/compute.networkUser"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &spanner.DatabaseIAMBindingConditionArgs{
/// 				Title:       pulumi.String("My Role"),
/// 				Description: pulumi.String("Grant permissions on my_role"),
/// 				Expression:  pulumi.String("(resource.type == \"spanner.googleapis.com/DatabaseRole\" && (resource.name.endsWith(\"/myrole\")))"),
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
/// import com.pulumi.gcp.spanner.DatabaseIAMBinding;
/// import com.pulumi.gcp.spanner.DatabaseIAMBindingArgs;
/// import com.pulumi.gcp.spanner.inputs.DatabaseIAMBindingConditionArgs;
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
///         var database = new DatabaseIAMBinding("database", DatabaseIAMBindingArgs.builder()
///             .instance("your-instance-name")
///             .database("your-database-name")
///             .role("roles/compute.networkUser")
///             .members("user:jane@example.com")
///             .condition(DatabaseIAMBindingConditionArgs.builder()
///                 .title("My Role")
///                 .description("Grant permissions on my_role")
///                 .expression("(resource.type == \"spanner.googleapis.com/DatabaseRole\" && (resource.name.endsWith(\"/myrole\")))")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   database:
///     type: gcp:spanner:DatabaseIAMBinding
///     properties:
///       instance: your-instance-name
///       database: your-database-name
///       role: roles/compute.networkUser
///       members:
///         - user:jane@example.com
///       condition:
///         title: My Role
///         description: Grant permissions on my_role
///         expression: (resource.type == "spanner.googleapis.com/DatabaseRole" && (resource.name.endsWith("/myrole")))
/// ```
///
///
/// ## gcp.spanner.DatabaseIAMMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const database = new gcp.spanner.DatabaseIAMMember("database", {
///     instance: "your-instance-name",
///     database: "your-database-name",
///     role: "roles/compute.networkUser",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// database = gcp.spanner.DatabaseIAMMember("database",
///     instance="your-instance-name",
///     database="your-database-name",
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
///     var database = new Gcp.Spanner.DatabaseIAMMember("database", new()
///     {
///         Instance = "your-instance-name",
///         Database = "your-database-name",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := spanner.NewDatabaseIAMMember(ctx, "database", &spanner.DatabaseIAMMemberArgs{
/// 			Instance: pulumi.String("your-instance-name"),
/// 			Database: pulumi.String("your-database-name"),
/// 			Role:     pulumi.String("roles/compute.networkUser"),
/// 			Member:   pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.spanner.DatabaseIAMMember;
/// import com.pulumi.gcp.spanner.DatabaseIAMMemberArgs;
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
///         var database = new DatabaseIAMMember("database", DatabaseIAMMemberArgs.builder()
///             .instance("your-instance-name")
///             .database("your-database-name")
///             .role("roles/compute.networkUser")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   database:
///     type: gcp:spanner:DatabaseIAMMember
///     properties:
///       instance: your-instance-name
///       database: your-database-name
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
/// const database = new gcp.spanner.DatabaseIAMMember("database", {
///     instance: "your-instance-name",
///     database: "your-database-name",
///     role: "roles/compute.networkUser",
///     member: "user:jane@example.com",
///     condition: {
///         title: "My Role",
///         description: "Grant permissions on my_role",
///         expression: "(resource.type == \"spanner.googleapis.com/DatabaseRole\" && (resource.name.endsWith(\"/myrole\")))",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// database = gcp.spanner.DatabaseIAMMember("database",
///     instance="your-instance-name",
///     database="your-database-name",
///     role="roles/compute.networkUser",
///     member="user:jane@example.com",
///     condition={
///         "title": "My Role",
///         "description": "Grant permissions on my_role",
///         "expression": "(resource.type == \"spanner.googleapis.com/DatabaseRole\" && (resource.name.endsWith(\"/myrole\")))",
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
///     var database = new Gcp.Spanner.DatabaseIAMMember("database", new()
///     {
///         Instance = "your-instance-name",
///         Database = "your-database-name",
///         Role = "roles/compute.networkUser",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Spanner.Inputs.DatabaseIAMMemberConditionArgs
///         {
///             Title = "My Role",
///             Description = "Grant permissions on my_role",
///             Expression = "(resource.type == \"spanner.googleapis.com/DatabaseRole\" && (resource.name.endsWith(\"/myrole\")))",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := spanner.NewDatabaseIAMMember(ctx, "database", &spanner.DatabaseIAMMemberArgs{
/// 			Instance: pulumi.String("your-instance-name"),
/// 			Database: pulumi.String("your-database-name"),
/// 			Role:     pulumi.String("roles/compute.networkUser"),
/// 			Member:   pulumi.String("user:jane@example.com"),
/// 			Condition: &spanner.DatabaseIAMMemberConditionArgs{
/// 				Title:       pulumi.String("My Role"),
/// 				Description: pulumi.String("Grant permissions on my_role"),
/// 				Expression:  pulumi.String("(resource.type == \"spanner.googleapis.com/DatabaseRole\" && (resource.name.endsWith(\"/myrole\")))"),
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
/// import com.pulumi.gcp.spanner.DatabaseIAMMember;
/// import com.pulumi.gcp.spanner.DatabaseIAMMemberArgs;
/// import com.pulumi.gcp.spanner.inputs.DatabaseIAMMemberConditionArgs;
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
///         var database = new DatabaseIAMMember("database", DatabaseIAMMemberArgs.builder()
///             .instance("your-instance-name")
///             .database("your-database-name")
///             .role("roles/compute.networkUser")
///             .member("user:jane@example.com")
///             .condition(DatabaseIAMMemberConditionArgs.builder()
///                 .title("My Role")
///                 .description("Grant permissions on my_role")
///                 .expression("(resource.type == \"spanner.googleapis.com/DatabaseRole\" && (resource.name.endsWith(\"/myrole\")))")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   database:
///     type: gcp:spanner:DatabaseIAMMember
///     properties:
///       instance: your-instance-name
///       database: your-database-name
///       role: roles/compute.networkUser
///       member: user:jane@example.com
///       condition:
///         title: My Role
///         description: Grant permissions on my_role
///         expression: (resource.type == "spanner.googleapis.com/DatabaseRole" && (resource.name.endsWith("/myrole")))
/// ```
///
///
/// ## Import
///
/// ### Importing IAM policies
///
/// IAM policy imports use the identifier of the Spanner Database resource in question. For example:
///
/// * `{{project}}/{{instance}}/{{database}}`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import IAM policies:
///
/// tf
///
/// import {
///
/// id = {{project}}/{{instance}}/{{database}}
///
/// to = google_spanner_database_iam_policy.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:spanner/databaseIAMBinding:DatabaseIAMBinding default {{project}}/{{instance}}/{{database}}
/// ```
class DatabaseIAMBinding extends pulumi.CustomResource {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  late final pulumi.Output<DatabaseIAMBindingCondition?> condition;

  /// The name of the Spanner database.
  late final pulumi.Output<String> database;

  /// (Computed) The etag of the database's IAM policy.
  late final pulumi.Output<String> etag;

  /// The name of the Spanner instance the database belongs to.
  late final pulumi.Output<String> instance;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final pulumi.Output<List<String>> members;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The role that should be applied. Only one
  /// `gcp.spanner.DatabaseIAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [DatabaseIAMBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseIAMBinding]. {@macro pulumi_spanner_database_iambinding_database_iambinding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseIAMBinding(
    String name, {
    DatabaseIAMBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:spanner/databaseIAMBinding:DatabaseIAMBinding',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.condition = registerOutput<DatabaseIAMBindingCondition?>('condition');
    this.database = registerOutput<String>('database');
    this.etag = registerOutput<String>('etag');
    this.instance = registerOutput<String>('instance');
    this.members = registerOutput<List<String>>('members');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
