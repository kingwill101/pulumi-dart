import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_args.dart';
import 'get_application_assignments_args.dart';
import 'get_application_assignments_result.dart';
import 'get_application_providers_args.dart';
import 'get_application_providers_result.dart';
import 'get_application_result.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';
import 'get_permission_set_args.dart';
import 'get_permission_set_result.dart';
import 'get_permission_sets_args.dart';
import 'get_permission_sets_result.dart';
import 'get_principal_application_assignments_args.dart';
import 'get_principal_application_assignments_result.dart';

/// Data source for managing an AWS SSO Admin Application.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getApplication({
///     applicationArn: "arn:aws:sso::123456789012:application/ssoins-1234/apl-5678",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_application(application_arn="arn:aws:sso::123456789012:application/ssoins-1234/apl-5678")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SsoAdmin.GetApplication.Invoke(new()
///     {
///         ApplicationArn = "arn:aws:sso::123456789012:application/ssoins-1234/apl-5678",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssoadmin.LookupApplication(ctx, &ssoadmin.LookupApplicationArgs{
/// 			ApplicationArn: "arn:aws:sso::123456789012:application/ssoins-1234/apl-5678",
/// 		}, nil)
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
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetApplicationArgs;
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
///         final var example = SsoadminFunctions.getApplication(GetApplicationArgs.builder()
///             .applicationArn("arn:aws:sso::123456789012:application/ssoins-1234/apl-5678")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getApplication
///       arguments:
///         applicationArn: arn:aws:sso::123456789012:application/ssoins-1234/apl-5678
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ssoadmin_get_application_get_application_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationResult> getApplication(
  GetApplicationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssoadmin/getApplication:getApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationResult.fromMap(result);
}

/// Data source for managing AWS SSO Admin Application Assignments.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getApplicationAssignments({
///     applicationArn: exampleAwsSsoadminApplication.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_application_assignments(application_arn=example_aws_ssoadmin_application["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SsoAdmin.GetApplicationAssignments.Invoke(new()
///     {
///         ApplicationArn = exampleAwsSsoadminApplication.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssoadmin.GetApplicationAssignments(ctx, &ssoadmin.GetApplicationAssignmentsArgs{
/// 			ApplicationArn: exampleAwsSsoadminApplication.Arn,
/// 		}, nil)
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
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetApplicationAssignmentsArgs;
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
///         final var example = SsoadminFunctions.getApplicationAssignments(GetApplicationAssignmentsArgs.builder()
///             .applicationArn(exampleAwsSsoadminApplication.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getApplicationAssignments
///       arguments:
///         applicationArn: ${exampleAwsSsoadminApplication.arn}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ssoadmin_get_application_assignments_get_application_assignments_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationAssignmentsResult> getApplicationAssignments(
  GetApplicationAssignmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssoadmin/getApplicationAssignments:getApplicationAssignments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationAssignmentsResult.fromMap(result);
}

/// Data source for managing AWS SSO Admin Application Providers.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getApplicationProviders({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_application_providers()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SsoAdmin.GetApplicationProviders.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssoadmin.GetApplicationProviders(ctx, &ssoadmin.GetApplicationProvidersArgs{}, nil)
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
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetApplicationProvidersArgs;
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
///         final var example = SsoadminFunctions.getApplicationProviders(GetApplicationProvidersArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getApplicationProviders
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ssoadmin_get_application_providers_get_application_providers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationProvidersResult> getApplicationProviders(
  GetApplicationProvidersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssoadmin/getApplicationProviders:getApplicationProviders',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationProvidersResult.fromMap(result);
}

/// Use this data source to get ARNs and Identity Store IDs of Single Sign-On (SSO) Instances.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getInstances({});
/// export const arn = example.then(example => example.arns?.[0]);
/// export const identityStoreId = example.then(example => example.identityStoreIds?.[0]);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// pulumi.export("arn", example.arns[0])
/// pulumi.export("identityStoreId", example.identity_store_ids[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SsoAdmin.GetInstances.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["arn"] = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
///         ["identityStoreId"] = example.Apply(getInstancesResult => getInstancesResult.IdentityStoreIds[0]),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ssoadmin.GetInstances(ctx, &ssoadmin.GetInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("arn", example.Arns[0])
/// 		ctx.Export("identityStoreId", example.IdentityStoreIds[0])
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
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetInstancesArgs;
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
///         final var example = SsoadminFunctions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         ctx.export("arn", example.arns()[0]);
///         ctx.export("identityStoreId", example.identityStoreIds()[0]);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getInstances
///       arguments: {}
/// outputs:
///   arn: ${example.arns[0]}
///   identityStoreId: ${example.identityStoreIds[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ssoadmin_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssoadmin/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}

/// Use this data source to get a Single Sign-On (SSO) Permission Set.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getInstances({});
/// const exampleGetPermissionSet = example.then(example => aws.ssoadmin.getPermissionSet({
///     instanceArn: example.arns?.[0],
///     name: "Example",
/// }));
/// export const arn = exampleGetPermissionSet.then(exampleGetPermissionSet => exampleGetPermissionSet.arn);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_get_permission_set = aws.ssoadmin.get_permission_set(instance_arn=example.arns[0],
///     name="Example")
/// pulumi.export("arn", example_get_permission_set.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SsoAdmin.GetInstances.Invoke();
///
///     var exampleGetPermissionSet = Aws.SsoAdmin.GetPermissionSet.Invoke(new()
///     {
///         InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
///         Name = "Example",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["arn"] = exampleGetPermissionSet.Apply(getPermissionSetResult => getPermissionSetResult.Arn),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ssoadmin.GetInstances(ctx, &ssoadmin.GetInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetPermissionSet, err := ssoadmin.LookupPermissionSet(ctx, &ssoadmin.LookupPermissionSetArgs{
/// 			InstanceArn: example.Arns[0],
/// 			Name:        pulumi.StringRef("Example"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("arn", exampleGetPermissionSet.Arn)
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
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetInstancesArgs;
/// import com.pulumi.aws.ssoadmin.inputs.GetPermissionSetArgs;
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
///         final var example = SsoadminFunctions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         final var exampleGetPermissionSet = SsoadminFunctions.getPermissionSet(GetPermissionSetArgs.builder()
///             .instanceArn(example.arns()[0])
///             .name("Example")
///             .build());
///
///         ctx.export("arn", exampleGetPermissionSet.arn());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getInstances
///       arguments: {}
///   exampleGetPermissionSet:
///     fn::invoke:
///       function: aws:ssoadmin:getPermissionSet
///       arguments:
///         instanceArn: ${example.arns[0]}
///         name: Example
/// outputs:
///   arn: ${exampleGetPermissionSet.arn}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ssoadmin_get_permission_set_get_permission_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPermissionSetResult> getPermissionSet(
  GetPermissionSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssoadmin/getPermissionSet:getPermissionSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPermissionSetResult.fromMap(result);
}

/// Data source returning the ARN of all AWS SSO Admin Permission Sets.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getInstances({});
/// const exampleGetPermissionSets = example.then(example => aws.ssoadmin.getPermissionSets({
///     instanceArn: example.arns?.[0],
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_get_permission_sets = aws.ssoadmin.get_permission_sets(instance_arn=example.arns[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SsoAdmin.GetInstances.Invoke();
///
///     var exampleGetPermissionSets = Aws.SsoAdmin.GetPermissionSets.Invoke(new()
///     {
///         InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ssoadmin.GetInstances(ctx, &ssoadmin.GetInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ssoadmin.GetPermissionSets(ctx, &ssoadmin.GetPermissionSetsArgs{
/// 			InstanceArn: example.Arns[0],
/// 		}, nil)
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
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetInstancesArgs;
/// import com.pulumi.aws.ssoadmin.inputs.GetPermissionSetsArgs;
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
///         final var example = SsoadminFunctions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         final var exampleGetPermissionSets = SsoadminFunctions.getPermissionSets(GetPermissionSetsArgs.builder()
///             .instanceArn(example.arns()[0])
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getInstances
///       arguments: {}
///   exampleGetPermissionSets:
///     fn::invoke:
///       function: aws:ssoadmin:getPermissionSets
///       arguments:
///         instanceArn: ${example.arns[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ssoadmin_get_permission_sets_get_permission_sets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPermissionSetsResult> getPermissionSets(
  GetPermissionSetsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssoadmin/getPermissionSets:getPermissionSets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPermissionSetsResult.fromMap(result);
}

/// Data source for viewing AWS SSO Admin Principal Application Assignments.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getPrincipalApplicationAssignments({
///     instanceArn: test.arns[0],
///     principalId: testAwsIdentitystoreUser.userId,
///     principalType: "USER",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_principal_application_assignments(instance_arn=test["arns"][0],
///     principal_id=test_aws_identitystore_user["userId"],
///     principal_type="USER")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SsoAdmin.GetPrincipalApplicationAssignments.Invoke(new()
///     {
///         InstanceArn = test.Arns[0],
///         PrincipalId = testAwsIdentitystoreUser.UserId,
///         PrincipalType = "USER",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssoadmin.GetPrincipalApplicationAssignments(ctx, &ssoadmin.GetPrincipalApplicationAssignmentsArgs{
/// 			InstanceArn:   test.Arns[0],
/// 			PrincipalId:   testAwsIdentitystoreUser.UserId,
/// 			PrincipalType: "USER",
/// 		}, nil)
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
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetPrincipalApplicationAssignmentsArgs;
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
///         final var example = SsoadminFunctions.getPrincipalApplicationAssignments(GetPrincipalApplicationAssignmentsArgs.builder()
///             .instanceArn(test.arns()[0])
///             .principalId(testAwsIdentitystoreUser.userId())
///             .principalType("USER")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getPrincipalApplicationAssignments
///       arguments:
///         instanceArn: ${test.arns[0]}
///         principalId: ${testAwsIdentitystoreUser.userId}
///         principalType: USER
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ssoadmin_get_principal_application_assignments_get_principal_application_assignments_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrincipalApplicationAssignmentsResult> getPrincipalApplicationAssignments(
  GetPrincipalApplicationAssignmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssoadmin/getPrincipalApplicationAssignments:getPrincipalApplicationAssignments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrincipalApplicationAssignmentsResult.fromMap(result);
}
