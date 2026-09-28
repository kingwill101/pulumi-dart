import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_args.dart';
import 'get_application_result.dart';
import 'get_entitlements_args.dart';
import 'get_entitlements_result.dart';

/// Looks up an existing AWS Account Access Application. Lookup is by Application ARN or by IAM Identity Center instance ARN (one Application per instance).
///
/// ## Example Usage
///
/// ### By Application ARN
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.accountaccess.getApplication({
///     arn: "arn:aws:account-access:us-east-1:123456789012:application/aam-0123456789abcdef",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.accountaccess.get_application(arn="arn:aws:account-access:us-east-1:123456789012:application/aam-0123456789abcdef")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.AccountAccess.GetApplication.Invoke(new()
///     {
///         Arn = "arn:aws:account-access:us-east-1:123456789012:application/aam-0123456789abcdef",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/accountaccess"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := accountaccess.LookupApplication(ctx, &accountaccess.LookupApplicationArgs{
/// 			Arn: pulumi.StringRef("arn:aws:account-access:us-east-1:123456789012:application/aam-0123456789abcdef"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_accountaccess_getapplication" "example" {
///   arn = "arn:aws:account-access:us-east-1:123456789012:application/aam-0123456789abcdef"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.accountaccess.AccountaccessFunctions;
/// import com.pulumi.aws.accountaccess.inputs.GetApplicationArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = AccountaccessFunctions.getApplication(GetApplicationArgs.builder()
///             .arn("arn:aws:account-access:us-east-1:123456789012:application/aam-0123456789abcdef")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:accountaccess:getApplication
///       arguments:
///         arn: arn:aws:account-access:us-east-1:123456789012:application/aam-0123456789abcdef
/// ```
///
///
/// ### By Identity Center Instance
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getInstances({});
/// const exampleGetApplication = example.then(example => aws.accountaccess.getApplication({
///     identityCenterInstanceArn: example.arns?.[0],
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_get_application = aws.accountaccess.get_application(identity_center_instance_arn=example.arns[0])
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
///     var exampleGetApplication = Aws.AccountAccess.GetApplication.Invoke(new()
///     {
///         IdentityCenterInstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/accountaccess"
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
/// 		_, err = accountaccess.LookupApplication(ctx, &accountaccess.LookupApplicationArgs{
/// 			IdentityCenterInstanceArn: pulumi.StringRef(example.Arns[0]),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_ssoadmin_getinstances" "example" {
/// }
/// data "aws_accountaccess_getapplication" "exampleGetApplication" {
///   identity_center_instance_arn = data.aws_ssoadmin_getinstances.example.arns[0]
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
/// import com.pulumi.aws.accountaccess.AccountaccessFunctions;
/// import com.pulumi.aws.accountaccess.inputs.GetApplicationArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var exampleGetApplication = AccountaccessFunctions.getApplication(GetApplicationArgs.builder()
///             .identityCenterInstanceArn(example.arns()[0])
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
///   exampleGetApplication:
///     fn::invoke:
///       function: aws:accountaccess:getApplication
///       arguments:
///         identityCenterInstanceArn: ${example.arns[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_accountaccess_get_application_get_application_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationResult> getApplication(
  GetApplicationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:accountaccess/getApplication:getApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationResult.fromMap(result);
}

pulumi.Output<GetApplicationResult> getApplicationOutput(
  GetApplicationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:accountaccess/getApplication:getApplication',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApplicationResult.fromMap);
}

/// Lists AWS Account Access Entitlements for a given Application.
///
/// ## Example Usage
///
/// ### Filter by Principal
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.accountaccess.getEntitlements({
///     filter: {
///         principalRole: {
///             principal: {
///                 identityCenter: {
///                     userId: "11111111-2222-3333-4444-555555555555",
///                 },
///             },
///         },
///     },
///     applicationArn: exampleAwsAccountaccessApplication.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.accountaccess.get_entitlements(filter={
///         "principal_role": {
///             "principal": {
///                 "identity_center": {
///                     "user_id": "11111111-2222-3333-4444-555555555555",
///                 },
///             },
///         },
///     },
///     application_arn=example_aws_accountaccess_application["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.AccountAccess.GetEntitlements.Invoke(new()
///     {
///         Filter = new Aws.AccountAccess.Inputs.GetEntitlementsFilterInputArgs
///         {
///             PrincipalRole = new Aws.AccountAccess.Inputs.GetEntitlementsFilterPrincipalRoleInputArgs
///             {
///                 Principal = new Aws.AccountAccess.Inputs.GetEntitlementsFilterPrincipalRolePrincipalInputArgs
///                 {
///                     IdentityCenter = new Aws.AccountAccess.Inputs.GetEntitlementsFilterPrincipalRolePrincipalIdentityCenterInputArgs
///                     {
///                         UserId = "11111111-2222-3333-4444-555555555555",
///                     },
///                 },
///             },
///         },
///         ApplicationArn = exampleAwsAccountaccessApplication.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/accountaccess"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := accountaccess.GetEntitlements(ctx, &accountaccess.GetEntitlementsArgs{
/// 			Filter: accountaccess.GetEntitlementsFilter{
/// 				PrincipalRole: accountaccess.GetEntitlementsFilterPrincipalRole{
/// 					Principal: accountaccess.GetEntitlementsFilterPrincipalRolePrincipal{
/// 						IdentityCenter: accountaccess.GetEntitlementsFilterPrincipalRolePrincipalIdentityCenter{
/// 							UserId: pulumi.StringRef("11111111-2222-3333-4444-555555555555"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ApplicationArn: exampleAwsAccountaccessApplication.Arn,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_accountaccess_getentitlements" "example" {
///   filter = {
///     principal_role = {
///       principal = {
///         identity_center = {
///           user_id = "11111111-2222-3333-4444-555555555555"
///         }
///       }
///     }
///   }
///   application_arn = exampleAwsAccountaccessApplication.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.accountaccess.AccountaccessFunctions;
/// import com.pulumi.aws.accountaccess.inputs.GetEntitlementsArgs;
/// import com.pulumi.aws.accountaccess.inputs.GetEntitlementsFilterArgs;
/// import com.pulumi.aws.accountaccess.inputs.GetEntitlementsFilterPrincipalRoleArgs;
/// import com.pulumi.aws.accountaccess.inputs.GetEntitlementsFilterPrincipalRolePrincipalArgs;
/// import com.pulumi.aws.accountaccess.inputs.GetEntitlementsFilterPrincipalRolePrincipalIdentityCenterArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = AccountaccessFunctions.getEntitlements(GetEntitlementsArgs.builder()
///             .filter(GetEntitlementsFilterArgs.builder()
///                 .principalRole(GetEntitlementsFilterPrincipalRoleArgs.builder()
///                     .principal(GetEntitlementsFilterPrincipalRolePrincipalArgs.builder()
///                         .identityCenter(GetEntitlementsFilterPrincipalRolePrincipalIdentityCenterArgs.builder()
///                             .userId("11111111-2222-3333-4444-555555555555")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .applicationArn(exampleAwsAccountaccessApplication.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:accountaccess:getEntitlements
///       arguments:
///         filter:
///           principalRole:
///             principal:
///               identityCenter:
///                 userId: 11111111-2222-3333-4444-555555555555
///         applicationArn: ${exampleAwsAccountaccessApplication.arn}
/// ```
///
///
/// ### Filter by Target Account
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.accountaccess.getEntitlements({
///     filter: {
///         principalRole: {
///             accountId: "123456789012",
///         },
///     },
///     applicationArn: exampleAwsAccountaccessApplication.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.accountaccess.get_entitlements(filter={
///         "principal_role": {
///             "account_id": "123456789012",
///         },
///     },
///     application_arn=example_aws_accountaccess_application["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.AccountAccess.GetEntitlements.Invoke(new()
///     {
///         Filter = new Aws.AccountAccess.Inputs.GetEntitlementsFilterInputArgs
///         {
///             PrincipalRole = new Aws.AccountAccess.Inputs.GetEntitlementsFilterPrincipalRoleInputArgs
///             {
///                 AccountId = "123456789012",
///             },
///         },
///         ApplicationArn = exampleAwsAccountaccessApplication.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/accountaccess"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := accountaccess.GetEntitlements(ctx, &accountaccess.GetEntitlementsArgs{
/// 			Filter: accountaccess.GetEntitlementsFilter{
/// 				PrincipalRole: accountaccess.GetEntitlementsFilterPrincipalRole{
/// 					AccountId: pulumi.StringRef("123456789012"),
/// 				},
/// 			},
/// 			ApplicationArn: exampleAwsAccountaccessApplication.Arn,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_accountaccess_getentitlements" "example" {
///   filter = {
///     principal_role = {
///       account_id = "123456789012"
///     }
///   }
///   application_arn = exampleAwsAccountaccessApplication.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.accountaccess.AccountaccessFunctions;
/// import com.pulumi.aws.accountaccess.inputs.GetEntitlementsArgs;
/// import com.pulumi.aws.accountaccess.inputs.GetEntitlementsFilterArgs;
/// import com.pulumi.aws.accountaccess.inputs.GetEntitlementsFilterPrincipalRoleArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = AccountaccessFunctions.getEntitlements(GetEntitlementsArgs.builder()
///             .filter(GetEntitlementsFilterArgs.builder()
///                 .principalRole(GetEntitlementsFilterPrincipalRoleArgs.builder()
///                     .accountId("123456789012")
///                     .build())
///                 .build())
///             .applicationArn(exampleAwsAccountaccessApplication.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:accountaccess:getEntitlements
///       arguments:
///         filter:
///           principalRole:
///             accountId: '123456789012'
///         applicationArn: ${exampleAwsAccountaccessApplication.arn}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_accountaccess_get_entitlements_get_entitlements_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntitlementsResult> getEntitlements(
  GetEntitlementsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:accountaccess/getEntitlements:getEntitlements',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntitlementsResult.fromMap(result);
}

pulumi.Output<GetEntitlementsResult> getEntitlementsOutput(
  GetEntitlementsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:accountaccess/getEntitlements:getEntitlements',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEntitlementsResult.fromMap);
}
