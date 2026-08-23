import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_keys_args.dart';
import 'get_access_keys_result.dart';
import 'get_account_alias_result.dart';
import 'get_group_args.dart';
import 'get_group_result.dart';
import 'get_instance_profile_args.dart';
import 'get_instance_profile_result.dart';
import 'get_instance_profiles_args.dart';
import 'get_instance_profiles_result.dart';
import 'get_open_id_connect_provider_args.dart';
import 'get_open_id_connect_provider_result.dart';
import 'get_outbound_web_identity_federation_result.dart';
import 'get_policy_args.dart';
import 'get_policy_document_args.dart';
import 'get_policy_document_result.dart';
import 'get_policy_result.dart';
import 'get_principal_policy_simulation_args.dart';
import 'get_principal_policy_simulation_iam_result.dart';
import 'get_role_args.dart';
import 'get_role_policies_args.dart';
import 'get_role_policies_result.dart';
import 'get_role_policy_attachments_args.dart';
import 'get_role_policy_attachments_result.dart';
import 'get_role_result.dart';
import 'get_roles_args.dart';
import 'get_roles_result.dart';
import 'get_saml_provider_args.dart';
import 'get_saml_provider_result.dart';
import 'get_server_certificate_args.dart';
import 'get_server_certificate_result.dart';
import 'get_session_context_args.dart';
import 'get_session_context_result.dart';
import 'get_user_args.dart';
import 'get_user_result.dart';
import 'get_user_ssh_key_args.dart';
import 'get_user_ssh_key_result.dart';
import 'get_users_args.dart';
import 'get_users_result.dart';

/// This data source can be used to fetch information about IAM access keys of a
/// specific IAM user.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getAccessKeys({
///     user: "an_example_user_name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_access_keys(user="an_example_user_name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Iam.GetAccessKeys.Invoke(new()
///     {
///         User = "an_example_user_name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.GetAccessKeys(ctx, &iam.GetAccessKeysArgs{
/// 			User: "an_example_user_name",
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
/// data "aws_iam_getaccesskeys" "example" {
///   user = "an_example_user_name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetAccessKeysArgs;
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
///         final var example = IamFunctions.getAccessKeys(GetAccessKeysArgs.builder()
///             .user("an_example_user_name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getAccessKeys
///       arguments:
///         user: an_example_user_name
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_get_access_keys_get_access_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessKeysResult> getAccessKeys(
  GetAccessKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getAccessKeys:getAccessKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessKeysResult.fromMap(result);
}

/// The IAM Account Alias data source allows access to the account alias
/// for the effective account in which this provider is working.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.iam.getAccountAlias({});
/// export const accountAlias = current.then(current => current.accountAlias);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.iam.get_account_alias()
/// pulumi.export("accountAlias", current.account_alias)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.Iam.GetAccountAlias.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["accountAlias"] = current.Apply(getAccountAliasResult => getAccountAliasResult.AccountAlias),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := iam.LookupAccountAlias(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("accountAlias", current.AccountAlias)
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
/// data "aws_iam_getaccountalias" "current" {
/// }
///
/// output "accountAlias" {
///   value = data.aws_iam_getaccountalias.current.account_alias
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
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
///         final var current = IamFunctions.getAccountAlias(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         ctx.export("accountAlias", current.accountAlias());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: aws:iam:getAccountAlias
///       arguments: {}
/// outputs:
///   accountAlias: ${current.accountAlias}
/// ```
/// [options] Invoke options controlling this call.
Future<GetAccountAliasResult> getAccountAlias(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getAccountAlias:getAccountAlias',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountAliasResult.fromMap(result);
}

/// This data source can be used to fetch information about a specific
/// IAM group. By using this data source, you can reference IAM group
/// properties without having to hard code ARNs as input.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getGroup({
///     groupName: "an_example_group_name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_group(group_name="an_example_group_name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Iam.GetGroup.Invoke(new()
///     {
///         GroupName = "an_example_group_name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.LookupGroup(ctx, &iam.LookupGroupArgs{
/// 			GroupName: "an_example_group_name",
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
/// data "aws_iam_getgroup" "example" {
///   group_name = "an_example_group_name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetGroupArgs;
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
///         final var example = IamFunctions.getGroup(GetGroupArgs.builder()
///             .groupName("an_example_group_name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getGroup
///       arguments:
///         groupName: an_example_group_name
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_get_group_get_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupResult> getGroup(
  GetGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getGroup:getGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupResult.fromMap(result);
}

/// This data source can be used to fetch information about a specific
/// IAM instance profile. By using this data source, you can reference IAM
/// instance profile properties without having to hard code ARNs as input.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getInstanceProfile({
///     name: "an_example_instance_profile_name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_instance_profile(name="an_example_instance_profile_name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Iam.GetInstanceProfile.Invoke(new()
///     {
///         Name = "an_example_instance_profile_name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.LookupInstanceProfile(ctx, &iam.LookupInstanceProfileArgs{
/// 			Name: "an_example_instance_profile_name",
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
/// data "aws_iam_getinstanceprofile" "example" {
///   name = "an_example_instance_profile_name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetInstanceProfileArgs;
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
///         final var example = IamFunctions.getInstanceProfile(GetInstanceProfileArgs.builder()
///             .name("an_example_instance_profile_name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getInstanceProfile
///       arguments:
///         name: an_example_instance_profile_name
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_get_instance_profile_get_instance_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceProfileResult> getInstanceProfile(
  GetInstanceProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getInstanceProfile:getInstanceProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceProfileResult.fromMap(result);
}

/// This data source can be used to fetch information about all
/// IAM instance profiles under a role. By using this data source, you can reference IAM
/// instance profile properties without having to hard code ARNs as input.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getInstanceProfiles({
///     roleName: "an_example_iam_role_name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_instance_profiles(role_name="an_example_iam_role_name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Iam.GetInstanceProfiles.Invoke(new()
///     {
///         RoleName = "an_example_iam_role_name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.GetInstanceProfiles(ctx, &iam.GetInstanceProfilesArgs{
/// 			RoleName: "an_example_iam_role_name",
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
/// data "aws_iam_getinstanceprofiles" "example" {
///   role_name = "an_example_iam_role_name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetInstanceProfilesArgs;
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
///         final var example = IamFunctions.getInstanceProfiles(GetInstanceProfilesArgs.builder()
///             .roleName("an_example_iam_role_name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getInstanceProfiles
///       arguments:
///         roleName: an_example_iam_role_name
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_get_instance_profiles_get_instance_profiles_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceProfilesResult> getInstanceProfiles(
  GetInstanceProfilesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getInstanceProfiles:getInstanceProfiles',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceProfilesResult.fromMap(result);
}

/// This data source can be used to fetch information about a specific
/// IAM OpenID Connect provider. By using this data source, you can retrieve the
/// the resource information by either its `arn` or `url`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getOpenIdConnectProvider({
///     arn: "arn:aws:iam::123456789012:oidc-provider/accounts.google.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_open_id_connect_provider(arn="arn:aws:iam::123456789012:oidc-provider/accounts.google.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Iam.GetOpenIdConnectProvider.Invoke(new()
///     {
///         Arn = "arn:aws:iam::123456789012:oidc-provider/accounts.google.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.LookupOpenIdConnectProvider(ctx, &iam.LookupOpenIdConnectProviderArgs{
/// 			Arn: pulumi.StringRef("arn:aws:iam::123456789012:oidc-provider/accounts.google.com"),
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
/// data "aws_iam_getopenidconnectprovider" "example" {
///   arn = "arn:aws:iam::123456789012:oidc-provider/accounts.google.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetOpenIdConnectProviderArgs;
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
///         final var example = IamFunctions.getOpenIdConnectProvider(GetOpenIdConnectProviderArgs.builder()
///             .arn("arn:aws:iam::123456789012:oidc-provider/accounts.google.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getOpenIdConnectProvider
///       arguments:
///         arn: arn:aws:iam::123456789012:oidc-provider/accounts.google.com
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getOpenIdConnectProvider({
///     url: "https://accounts.google.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_open_id_connect_provider(url="https://accounts.google.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Iam.GetOpenIdConnectProvider.Invoke(new()
///     {
///         Url = "https://accounts.google.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.LookupOpenIdConnectProvider(ctx, &iam.LookupOpenIdConnectProviderArgs{
/// 			Url: pulumi.StringRef("https://accounts.google.com"),
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
/// data "aws_iam_getopenidconnectprovider" "example" {
///   url = "https://accounts.google.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetOpenIdConnectProviderArgs;
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
///         final var example = IamFunctions.getOpenIdConnectProvider(GetOpenIdConnectProviderArgs.builder()
///             .url("https://accounts.google.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getOpenIdConnectProvider
///       arguments:
///         url: https://accounts.google.com
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_get_open_id_connect_provider_get_open_id_connect_provider_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOpenIdConnectProviderResult> getOpenIdConnectProvider(
  GetOpenIdConnectProviderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getOpenIdConnectProvider:getOpenIdConnectProvider',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOpenIdConnectProviderResult.fromMap(result);
}

/// Use this data source to retrieve information about an AWS IAM (Identity & Access Management) Outbound Web Identity Federation.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getOutboundWebIdentityFederation({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_outbound_web_identity_federation()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Iam.GetOutboundWebIdentityFederation.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.LookupOutboundWebIdentityFederation(ctx, map[string]interface{}{}, nil)
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
/// data "aws_iam_getoutboundwebidentityfederation" "example" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
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
///         final var example = IamFunctions.getOutboundWebIdentityFederation(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getOutboundWebIdentityFederation
///       arguments: {}
/// ```
/// [options] Invoke options controlling this call.
Future<GetOutboundWebIdentityFederationResult> getOutboundWebIdentityFederation(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getOutboundWebIdentityFederation:getOutboundWebIdentityFederation',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOutboundWebIdentityFederationResult.fromMap(result);
}

/// This data source can be used to fetch information about a specific
/// IAM policy.
///
/// ## Example Usage
///
/// ### By ARN
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getPolicy({
///     arn: "arn:aws:iam::123456789012:policy/UsersManageOwnCredentials",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_policy(arn="arn:aws:iam::123456789012:policy/UsersManageOwnCredentials")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Iam.GetPolicy.Invoke(new()
///     {
///         Arn = "arn:aws:iam::123456789012:policy/UsersManageOwnCredentials",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.LookupPolicy(ctx, &iam.LookupPolicyArgs{
/// 			Arn: pulumi.StringRef("arn:aws:iam::123456789012:policy/UsersManageOwnCredentials"),
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
/// data "aws_iam_getpolicy" "example" {
///   arn = "arn:aws:iam::123456789012:policy/UsersManageOwnCredentials"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyArgs;
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
///         final var example = IamFunctions.getPolicy(GetPolicyArgs.builder()
///             .arn("arn:aws:iam::123456789012:policy/UsersManageOwnCredentials")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicy
///       arguments:
///         arn: arn:aws:iam::123456789012:policy/UsersManageOwnCredentials
/// ```
///
///
/// ### By Name
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getPolicy({
///     name: "test_policy",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_policy(name="test_policy")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Iam.GetPolicy.Invoke(new()
///     {
///         Name = "test_policy",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.LookupPolicy(ctx, &iam.LookupPolicyArgs{
/// 			Name: pulumi.StringRef("test_policy"),
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
/// data "aws_iam_getpolicy" "example" {
///   name = "test_policy"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyArgs;
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
///         final var example = IamFunctions.getPolicy(GetPolicyArgs.builder()
///             .name("test_policy")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicy
///       arguments:
///         name: test_policy
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_get_policy_get_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyResult> getPolicy(
  GetPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getPolicy:getPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyResult.fromMap(result);
}

/// Generates an IAM policy document in JSON format for use with resources that expect policy documents such as `aws.iam.Policy`.
///
/// Using this data source to generate policy documents is *optional*. It is also valid to use literal JSON strings in your configuration or to use the `file` interpolation function to read a raw JSON policy document from a file.
///
/// ## Example Usage
///
/// ### Basic Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getPolicyDocument({
///     statements: [
///         {
///             sid: "1",
///             actions: [
///                 "s3:ListAllMyBuckets",
///                 "s3:GetBucketLocation",
///             ],
///             resources: ["arn:aws:s3:::*"],
///         },
///         {
///             actions: ["s3:ListBucket"],
///             resources: [`arn:aws:s3:::${s3BucketName}`],
///             conditions: [{
///                 test: "StringLike",
///                 variable: "s3:prefix",
///                 values: [
///                     "",
///                     "home/",
///                     "home/&{aws:username}/",
///                 ],
///             }],
///         },
///         {
///             actions: ["s3:*"],
///             resources: [
///                 `arn:aws:s3:::${s3BucketName}/home/&{aws:username}`,
///                 `arn:aws:s3:::${s3BucketName}/home/&{aws:username}/*`,
///             ],
///         },
///     ],
/// });
/// const examplePolicy = new aws.iam.Policy("example", {
///     name: "example_policy",
///     path: "/",
///     policy: example.then(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_policy_document(statements=[
///     {
///         "sid": "1",
///         "actions": [
///             "s3:ListAllMyBuckets",
///             "s3:GetBucketLocation",
///         ],
///         "resources": ["arn:aws:s3:::*"],
///     },
///     {
///         "actions": ["s3:ListBucket"],
///         "resources": [f"arn:aws:s3:::{s3_bucket_name}"],
///         "conditions": [{
///             "test": "StringLike",
///             "variable": "s3:prefix",
///             "values": [
///                 "",
///                 "home/",
///                 "home/&{aws:username}/",
///             ],
///         }],
///     },
///     {
///         "actions": ["s3:*"],
///         "resources": [
///             f"arn:aws:s3:::{s3_bucket_name}/home/&{{aws:username}}",
///             f"arn:aws:s3:::{s3_bucket_name}/home/&{{aws:username}}/*",
///         ],
///     },
/// ])
/// example_policy = aws.iam.Policy("example",
///     name="example_policy",
///     path="/",
///     policy=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "1",
///                 Actions = new[]
///                 {
///                     "s3:ListAllMyBuckets",
///                     "s3:GetBucketLocation",
///                 },
///                 Resources = new[]
///                 {
///                     "arn:aws:s3:::*",
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "s3:ListBucket",
///                 },
///                 Resources = new[]
///                 {
///                     $"arn:aws:s3:::{s3BucketName}",
///                 },
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "StringLike",
///                         Variable = "s3:prefix",
///                         Values = new[]
///                         {
///                             "",
///                             "home/",
///                             "home/&{aws:username}/",
///                         },
///                     },
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "s3:*",
///                 },
///                 Resources = new[]
///                 {
///                     $"arn:aws:s3:::{s3BucketName}/home/&{{aws:username}}",
///                     $"arn:aws:s3:::{s3BucketName}/home/&{{aws:username}}/*",
///                 },
///             },
///         },
///     });
///
///     var examplePolicy = new Aws.Iam.Policy("example", new()
///     {
///         Name = "example_policy",
///         Path = "/",
///         PolicyDocument = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Sid: pulumi.StringRef("1"),
/// 					Actions: []string{
/// 						"s3:ListAllMyBuckets",
/// 						"s3:GetBucketLocation",
/// 					},
/// 					Resources: []string{
/// 						"arn:aws:s3:::*",
/// 					},
/// 				},
/// 				{
/// 					Actions: []string{
/// 						"s3:ListBucket",
/// 					},
/// 					Resources: []string{
/// 						fmt.Sprintf("arn:aws:s3:::%v", s3BucketName),
/// 					},
/// 					Conditions: []iam.GetPolicyDocumentStatementCondition{
/// 						{
/// 							Test:     "StringLike",
/// 							Variable: "s3:prefix",
/// 							Values: []string{
/// 								"",
/// 								"home/",
/// 								"home/&{aws:username}/",
/// 							},
/// 						},
/// 					},
/// 				},
/// 				{
/// 					Actions: []string{
/// 						"s3:*",
/// 					},
/// 					Resources: []string{
/// 						fmt.Sprintf("arn:aws:s3:::%v/home/&{aws:username}", s3BucketName),
/// 						fmt.Sprintf("arn:aws:s3:::%v/home/&{aws:username}/*", s3BucketName),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewPolicy(ctx, "example", &iam.PolicyArgs{
/// 			Name:   pulumi.String("example_policy"),
/// 			Path:   pulumi.String("/"),
/// 			Policy: pulumi.String(example.Json),
/// 		})
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
/// data "aws_iam_getpolicydocument" "example" {
///   statements {
///     sid       = "1"
///     actions   = ["s3:ListAllMyBuckets", "s3:GetBucketLocation"]
///     resources = ["arn:aws:s3:::*"]
///   }
///   statements {
///     actions   = ["s3:ListBucket"]
///     resources = ["arn:aws:s3:::${s3BucketName}"]
///     conditions {
///       test     = "StringLike"
///       variable = "s3:prefix"
///       values   = ["", "home/", "home/&{aws:username}/"]
///     }
///   }
///   statements {
///     actions   = ["s3:*"]
///     resources = ["arn:aws:s3:::${s3BucketName}/home/&{aws:username}", "arn:aws:s3:::${s3BucketName}/home/&{aws:username}/*"]
///   }
/// }
///
/// resource "aws_iam_policy" "example" {
///   name   = "example_policy"
///   path   = "/"
///   policy = data.aws_iam_getpolicydocument.example.json
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementConditionArgs;
/// import com.pulumi.aws.iam.Policy;
/// import com.pulumi.aws.iam.PolicyArgs;
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
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .sid("1")
///                     .actions(
///                         "s3:ListAllMyBuckets",
///                         "s3:GetBucketLocation")
///                     .resources("arn:aws:s3:::*")
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .actions("s3:ListBucket")
///                     .resources(String.format("arn:aws:s3:::%s", s3BucketName))
///                     .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                         .test("StringLike")
///                         .variable("s3:prefix")
///                         .values(
///                             "",
///                             "home/",
///                             "home/&{aws:username}/")
///                         .build())
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .actions("s3:*")
///                     .resources(
///                         String.format("arn:aws:s3:::%s/home/&{{aws:username}}", s3BucketName),
///                         String.format("arn:aws:s3:::%s/home/&{{aws:username}}/*", s3BucketName))
///                     .build())
///             .build());
///
///         var examplePolicy = new Policy("examplePolicy", PolicyArgs.builder()
///             .name("example_policy")
///             .path("/")
///             .policy(example.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   examplePolicy:
///     type: aws:iam:Policy
///     name: example
///     properties:
///       name: example_policy
///       path: /
///       policy: ${example.json}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - sid: '1'
///             actions:
///               - s3:ListAllMyBuckets
///               - s3:GetBucketLocation
///             resources:
///               - arn:aws:s3:::*
///           - actions:
///               - s3:ListBucket
///             resources:
///               - arn:aws:s3:::${s3BucketName}
///             conditions:
///               - test: StringLike
///                 variable: s3:prefix
///                 values:
///                   - ""
///                   - home/
///                   - home/&{aws:username}/
///           - actions:
///               - s3:*
///             resources:
///               - arn:aws:s3:::${s3BucketName}/home/&{aws:username}
///               - arn:aws:s3:::${s3BucketName}/home/&{aws:username}/*
/// ```
///
///
/// ### Example Multiple Condition Keys and Values
///
/// You can specify a [condition with multiple keys and values](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_multi-value-conditions.html) by supplying multiple `condition` blocks with the same `test` value, but differing `variable` and `values` values.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleMultipleConditionKeysAndValues = aws.iam.getPolicyDocument({
///     statements: [{
///         actions: [
///             "kms:Decrypt",
///             "kms:GenerateDataKey",
///         ],
///         resources: ["*"],
///         conditions: [
///             {
///                 test: "ForAnyValue:StringEquals",
///                 variable: "kms:EncryptionContext:service",
///                 values: ["pi"],
///             },
///             {
///                 test: "ForAnyValue:StringEquals",
///                 variable: "kms:EncryptionContext:aws:pi:service",
///                 values: ["rds"],
///             },
///             {
///                 test: "ForAnyValue:StringEquals",
///                 variable: "kms:EncryptionContext:aws:rds:db-id",
///                 values: [
///                     "db-AAAAABBBBBCCCCCDDDDDEEEEE",
///                     "db-EEEEEDDDDDCCCCCBBBBBAAAAA",
///                 ],
///             },
///         ],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_multiple_condition_keys_and_values = aws.iam.get_policy_document(statements=[{
///     "actions": [
///         "kms:Decrypt",
///         "kms:GenerateDataKey",
///     ],
///     "resources": ["*"],
///     "conditions": [
///         {
///             "test": "ForAnyValue:StringEquals",
///             "variable": "kms:EncryptionContext:service",
///             "values": ["pi"],
///         },
///         {
///             "test": "ForAnyValue:StringEquals",
///             "variable": "kms:EncryptionContext:aws:pi:service",
///             "values": ["rds"],
///         },
///         {
///             "test": "ForAnyValue:StringEquals",
///             "variable": "kms:EncryptionContext:aws:rds:db-id",
///             "values": [
///                 "db-AAAAABBBBBCCCCCDDDDDEEEEE",
///                 "db-EEEEEDDDDDCCCCCBBBBBAAAAA",
///             ],
///         },
///     ],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleMultipleConditionKeysAndValues = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "kms:Decrypt",
///                     "kms:GenerateDataKey",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "ForAnyValue:StringEquals",
///                         Variable = "kms:EncryptionContext:service",
///                         Values = new[]
///                         {
///                             "pi",
///                         },
///                     },
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "ForAnyValue:StringEquals",
///                         Variable = "kms:EncryptionContext:aws:pi:service",
///                         Values = new[]
///                         {
///                             "rds",
///                         },
///                     },
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "ForAnyValue:StringEquals",
///                         Variable = "kms:EncryptionContext:aws:rds:db-id",
///                         Values = new[]
///                         {
///                             "db-AAAAABBBBBCCCCCDDDDDEEEEE",
///                             "db-EEEEEDDDDDCCCCCBBBBBAAAAA",
///                         },
///                     },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Actions: []string{
/// 						"kms:Decrypt",
/// 						"kms:GenerateDataKey",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 					Conditions: []iam.GetPolicyDocumentStatementCondition{
/// 						{
/// 							Test:     "ForAnyValue:StringEquals",
/// 							Variable: "kms:EncryptionContext:service",
/// 							Values: []string{
/// 								"pi",
/// 							},
/// 						},
/// 						{
/// 							Test:     "ForAnyValue:StringEquals",
/// 							Variable: "kms:EncryptionContext:aws:pi:service",
/// 							Values: []string{
/// 								"rds",
/// 							},
/// 						},
/// 						{
/// 							Test:     "ForAnyValue:StringEquals",
/// 							Variable: "kms:EncryptionContext:aws:rds:db-id",
/// 							Values: []string{
/// 								"db-AAAAABBBBBCCCCCDDDDDEEEEE",
/// 								"db-EEEEEDDDDDCCCCCBBBBBAAAAA",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
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
/// data "aws_iam_getpolicydocument" "exampleMultipleConditionKeysAndValues" {
///   statements {
///     actions   = ["kms:Decrypt", "kms:GenerateDataKey"]
///     resources = ["*"]
///     conditions {
///       test     = "ForAnyValue:StringEquals"
///       variable = "kms:EncryptionContext:service"
///       values   = ["pi"]
///     }
///     conditions {
///       test     = "ForAnyValue:StringEquals"
///       variable = "kms:EncryptionContext:aws:pi:service"
///       values   = ["rds"]
///     }
///     conditions {
///       test     = "ForAnyValue:StringEquals"
///       variable = "kms:EncryptionContext:aws:rds:db-id"
///       values   = ["db-AAAAABBBBBCCCCCDDDDDEEEEE", "db-EEEEEDDDDDCCCCCBBBBBAAAAA"]
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementConditionArgs;
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
///         final var exampleMultipleConditionKeysAndValues = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .actions(
///                     "kms:Decrypt",
///                     "kms:GenerateDataKey")
///                 .resources("*")
///                 .conditions(
///                     GetPolicyDocumentStatementConditionArgs.builder()
///                         .test("ForAnyValue:StringEquals")
///                         .variable("kms:EncryptionContext:service")
///                         .values("pi")
///                         .build(),
///                     GetPolicyDocumentStatementConditionArgs.builder()
///                         .test("ForAnyValue:StringEquals")
///                         .variable("kms:EncryptionContext:aws:pi:service")
///                         .values("rds")
///                         .build(),
///                     GetPolicyDocumentStatementConditionArgs.builder()
///                         .test("ForAnyValue:StringEquals")
///                         .variable("kms:EncryptionContext:aws:rds:db-id")
///                         .values(
///                             "db-AAAAABBBBBCCCCCDDDDDEEEEE",
///                             "db-EEEEEDDDDDCCCCCBBBBBAAAAA")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   exampleMultipleConditionKeysAndValues:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - actions:
///               - kms:Decrypt
///               - kms:GenerateDataKey
///             resources:
///               - '*'
///             conditions:
///               - test: ForAnyValue:StringEquals
///                 variable: kms:EncryptionContext:service
///                 values:
///                   - pi
///               - test: ForAnyValue:StringEquals
///                 variable: kms:EncryptionContext:aws:pi:service
///                 values:
///                   - rds
///               - test: ForAnyValue:StringEquals
///                 variable: kms:EncryptionContext:aws:rds:db-id
///                 values:
///                   - db-AAAAABBBBBCCCCCDDDDDEEEEE
///                   - db-EEEEEDDDDDCCCCCBBBBBAAAAA
/// ```
///
///
/// `data.aws_iam_policy_document.example_multiple_condition_keys_and_values.json` will evaluate to:
///
/// ```json
/// {
///   "Version": "2012-10-17",
///   "Statement": [
///     {
///       "Sid": "",
///       "Effect": "Allow",
///       "Action": [
///         "kms:GenerateDataKey",
///         "kms:Decrypt"
///       ],
///       "Resource": "*",
///       "Condition": {
///         "ForAnyValue:StringEquals": {
///           "kms:EncryptionContext:aws:pi:service": "rds",
///           "kms:EncryptionContext:aws:rds:db-id": [
///             "db-AAAAABBBBBCCCCCDDDDDEEEEE",
///             "db-EEEEEDDDDDCCCCCBBBBBAAAAA"
///           ],
///           "kms:EncryptionContext:service": "pi"
///         }
///       }
///     }
///   ]
/// }
/// ```
///
/// ### Example Assume-Role Policy with Multiple Principals
///
/// You can specify multiple principal blocks with different types. You can also use this data source to generate an assume-role policy.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const eventStreamBucketRoleAssumeRolePolicy = aws.iam.getPolicyDocument({
///     statements: [{
///         actions: ["sts:AssumeRole"],
///         principals: [
///             {
///                 type: "Service",
///                 identifiers: ["firehose.amazonaws.com"],
///             },
///             {
///                 type: "AWS",
///                 identifiers: [trustedRoleArn],
///             },
///             {
///                 type: "Federated",
///                 identifiers: [
///                     `arn:aws:iam::${accountId}:saml-provider/${providerName}`,
///                     "cognito-identity.amazonaws.com",
///                 ],
///             },
///         ],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// event_stream_bucket_role_assume_role_policy = aws.iam.get_policy_document(statements=[{
///     "actions": ["sts:AssumeRole"],
///     "principals": [
///         {
///             "type": "Service",
///             "identifiers": ["firehose.amazonaws.com"],
///         },
///         {
///             "type": "AWS",
///             "identifiers": [trusted_role_arn],
///         },
///         {
///             "type": "Federated",
///             "identifiers": [
///                 f"arn:aws:iam::{account_id}:saml-provider/{provider_name}",
///                 "cognito-identity.amazonaws.com",
///             ],
///         },
///     ],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var eventStreamBucketRoleAssumeRolePolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "firehose.amazonaws.com",
///                         },
///                     },
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             trustedRoleArn,
///                         },
///                     },
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Federated",
///                         Identifiers = new[]
///                         {
///                             $"arn:aws:iam::{accountId}:saml-provider/{providerName}",
///                             "cognito-identity.amazonaws.com",
///                         },
///                     },
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"firehose.amazonaws.com",
/// 							},
/// 						},
/// 						{
/// 							Type: "AWS",
/// 							Identifiers: pulumi.StringArray{
/// 								trustedRoleArn,
/// 							},
/// 						},
/// 						{
/// 							Type: "Federated",
/// 							Identifiers: []string{
/// 								fmt.Sprintf("arn:aws:iam::%v:saml-provider/%v", accountId, providerName),
/// 								"cognito-identity.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
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
/// data "aws_iam_getpolicydocument" "eventStreamBucketRoleAssumeRolePolicy" {
///   statements {
///     actions = ["sts:AssumeRole"]
///     principals {
///       type        = "Service"
///       identifiers = ["firehose.amazonaws.com"]
///     }
///     principals {
///       type        = "AWS"
///       identifiers = [trustedRoleArn]
///     }
///     principals {
///       type        = "Federated"
///       identifiers = ["arn:aws:iam::${accountId}:saml-provider/${providerName}", "cognito-identity.amazonaws.com"]
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
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
///         final var eventStreamBucketRoleAssumeRolePolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .actions("sts:AssumeRole")
///                 .principals(
///                     GetPolicyDocumentStatementPrincipalArgs.builder()
///                         .type("Service")
///                         .identifiers("firehose.amazonaws.com")
///                         .build(),
///                     GetPolicyDocumentStatementPrincipalArgs.builder()
///                         .type("AWS")
///                         .identifiers(trustedRoleArn)
///                         .build(),
///                     GetPolicyDocumentStatementPrincipalArgs.builder()
///                         .type("Federated")
///                         .identifiers(
///                             String.format("arn:aws:iam::%s:saml-provider/%s", accountId,providerName),
///                             "cognito-identity.amazonaws.com")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   eventStreamBucketRoleAssumeRolePolicy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - actions:
///               - sts:AssumeRole
///             principals:
///               - type: Service
///                 identifiers:
///                   - firehose.amazonaws.com
///               - type: AWS
///                 identifiers:
///                   - ${trustedRoleArn}
///               - type: Federated
///                 identifiers:
///                   - arn:aws:iam::${accountId}:saml-provider/${providerName}
///                   - cognito-identity.amazonaws.com
/// ```
///
///
/// ### Example Using A Source Document
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const source = aws.iam.getPolicyDocument({
///     statements: [
///         {
///             actions: ["ec2:*"],
///             resources: ["*"],
///         },
///         {
///             sid: "SidToOverride",
///             actions: ["s3:*"],
///             resources: ["*"],
///         },
///     ],
/// });
/// const sourceDocumentExample = source.then(source => aws.iam.getPolicyDocument({
///     sourcePolicyDocuments: [source.json],
///     statements: [{
///         sid: "SidToOverride",
///         actions: ["s3:*"],
///         resources: [
///             "arn:aws:s3:::somebucket",
///             "arn:aws:s3:::somebucket/*",
///         ],
///     }],
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// source = aws.iam.get_policy_document(statements=[
///     {
///         "actions": ["ec2:*"],
///         "resources": ["*"],
///     },
///     {
///         "sid": "SidToOverride",
///         "actions": ["s3:*"],
///         "resources": ["*"],
///     },
/// ])
/// source_document_example = aws.iam.get_policy_document(source_policy_documents=[source.json],
///     statements=[{
///         "sid": "SidToOverride",
///         "actions": ["s3:*"],
///         "resources": [
///             "arn:aws:s3:::somebucket",
///             "arn:aws:s3:::somebucket/*",
///         ],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var source = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "ec2:*",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "SidToOverride",
///                 Actions = new[]
///                 {
///                     "s3:*",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var sourceDocumentExample = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         SourcePolicyDocuments = new[]
///         {
///             source.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///         },
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "SidToOverride",
///                 Actions = new[]
///                 {
///                     "s3:*",
///                 },
///                 Resources = new[]
///                 {
///                     "arn:aws:s3:::somebucket",
///                     "arn:aws:s3:::somebucket/*",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		source, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Actions: []string{
/// 						"ec2:*",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 				{
/// 					Sid: pulumi.StringRef("SidToOverride"),
/// 					Actions: []string{
/// 						"s3:*",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			SourcePolicyDocuments: pulumi.StringArray{
/// 				source.Json,
/// 			},
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Sid: pulumi.StringRef("SidToOverride"),
/// 					Actions: []string{
/// 						"s3:*",
/// 					},
/// 					Resources: []string{
/// 						"arn:aws:s3:::somebucket",
/// 						"arn:aws:s3:::somebucket/*",
/// 					},
/// 				},
/// 			},
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
/// data "aws_iam_getpolicydocument" "source" {
///   statements {
///     actions   = ["ec2:*"]
///     resources = ["*"]
///   }
///   statements {
///     sid       = "SidToOverride"
///     actions   = ["s3:*"]
///     resources = ["*"]
///   }
/// }
/// data "aws_iam_getpolicydocument" "sourceDocumentExample" {
///   source_policy_documents = [data.aws_iam_getpolicydocument.source.json]
///   statements {
///     sid       = "SidToOverride"
///     actions   = ["s3:*"]
///     resources = ["arn:aws:s3:::somebucket", "arn:aws:s3:::somebucket/*"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
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
///         final var source = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .actions("ec2:*")
///                     .resources("*")
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .sid("SidToOverride")
///                     .actions("s3:*")
///                     .resources("*")
///                     .build())
///             .build());
///
///         final var sourceDocumentExample = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .sourcePolicyDocuments(source.json())
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .sid("SidToOverride")
///                 .actions("s3:*")
///                 .resources(
///                     "arn:aws:s3:::somebucket",
///                     "arn:aws:s3:::somebucket/*")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   source:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - actions:
///               - ec2:*
///             resources:
///               - '*'
///           - sid: SidToOverride
///             actions:
///               - s3:*
///             resources:
///               - '*'
///   sourceDocumentExample:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         sourcePolicyDocuments:
///           - ${source.json}
///         statements:
///           - sid: SidToOverride
///             actions:
///               - s3:*
///             resources:
///               - arn:aws:s3:::somebucket
///               - arn:aws:s3:::somebucket/*
/// ```
///
///
/// `data.aws_iam_policy_document.source_document_example.json` will evaluate to:
///
/// ```json
/// {
///   "Version": "2012-10-17",
///   "Statement": [
///     {
///       "Sid": "",
///       "Effect": "Allow",
///       "Action": "ec2:*",
///       "Resource": "*"
///     },
///     {
///       "Sid": "SidToOverride",
///       "Effect": "Allow",
///       "Action": "s3:*",
///       "Resource": [
///         "arn:aws:s3:::somebucket/*",
///         "arn:aws:s3:::somebucket"
///       ]
///     }
///   ]
/// }
/// ```
///
/// ### Example Using An Override Document
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const override = aws.iam.getPolicyDocument({
///     statements: [{
///         sid: "SidToOverride",
///         actions: ["s3:*"],
///         resources: ["*"],
///     }],
/// });
/// const overridePolicyDocumentExample = override.then(override => aws.iam.getPolicyDocument({
///     overridePolicyDocuments: [override.json],
///     statements: [
///         {
///             actions: ["ec2:*"],
///             resources: ["*"],
///         },
///         {
///             sid: "SidToOverride",
///             actions: ["s3:*"],
///             resources: [
///                 "arn:aws:s3:::somebucket",
///                 "arn:aws:s3:::somebucket/*",
///             ],
///         },
///     ],
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// override = aws.iam.get_policy_document(statements=[{
///     "sid": "SidToOverride",
///     "actions": ["s3:*"],
///     "resources": ["*"],
/// }])
/// override_policy_document_example = aws.iam.get_policy_document(override_policy_documents=[override.json],
///     statements=[
///         {
///             "actions": ["ec2:*"],
///             "resources": ["*"],
///         },
///         {
///             "sid": "SidToOverride",
///             "actions": ["s3:*"],
///             "resources": [
///                 "arn:aws:s3:::somebucket",
///                 "arn:aws:s3:::somebucket/*",
///             ],
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @override = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "SidToOverride",
///                 Actions = new[]
///                 {
///                     "s3:*",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var overridePolicyDocumentExample = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         OverridePolicyDocuments = new[]
///         {
///             @override.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///         },
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "ec2:*",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "SidToOverride",
///                 Actions = new[]
///                 {
///                     "s3:*",
///                 },
///                 Resources = new[]
///                 {
///                     "arn:aws:s3:::somebucket",
///                     "arn:aws:s3:::somebucket/*",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		override, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Sid: pulumi.StringRef("SidToOverride"),
/// 					Actions: []string{
/// 						"s3:*",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			OverridePolicyDocuments: pulumi.StringArray{
/// 				override.Json,
/// 			},
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Actions: []string{
/// 						"ec2:*",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 				{
/// 					Sid: pulumi.StringRef("SidToOverride"),
/// 					Actions: []string{
/// 						"s3:*",
/// 					},
/// 					Resources: []string{
/// 						"arn:aws:s3:::somebucket",
/// 						"arn:aws:s3:::somebucket/*",
/// 					},
/// 				},
/// 			},
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
/// data "aws_iam_getpolicydocument" "override" {
///   statements {
///     sid       = "SidToOverride"
///     actions   = ["s3:*"]
///     resources = ["*"]
///   }
/// }
/// data "aws_iam_getpolicydocument" "overridePolicyDocumentExample" {
///   override_policy_documents = [data.aws_iam_getpolicydocument.override.json]
///   statements {
///     actions   = ["ec2:*"]
///     resources = ["*"]
///   }
///   statements {
///     sid       = "SidToOverride"
///     actions   = ["s3:*"]
///     resources = ["arn:aws:s3:::somebucket", "arn:aws:s3:::somebucket/*"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
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
///         final var override = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .sid("SidToOverride")
///                 .actions("s3:*")
///                 .resources("*")
///                 .build())
///             .build());
///
///         final var overridePolicyDocumentExample = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .overridePolicyDocuments(override.json())
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .actions("ec2:*")
///                     .resources("*")
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .sid("SidToOverride")
///                     .actions("s3:*")
///                     .resources(
///                         "arn:aws:s3:::somebucket",
///                         "arn:aws:s3:::somebucket/*")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   override:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - sid: SidToOverride
///             actions:
///               - s3:*
///             resources:
///               - '*'
///   overridePolicyDocumentExample:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         overridePolicyDocuments:
///           - ${override.json}
///         statements:
///           - actions:
///               - ec2:*
///             resources:
///               - '*'
///           - sid: SidToOverride
///             actions:
///               - s3:*
///             resources:
///               - arn:aws:s3:::somebucket
///               - arn:aws:s3:::somebucket/*
/// ```
///
///
/// `data.aws_iam_policy_document.override_policy_document_example.json` will evaluate to:
///
/// ```json
/// {
///   "Version": "2012-10-17",
///   "Statement": [
///     {
///       "Sid": "",
///       "Effect": "Allow",
///       "Action": "ec2:*",
///       "Resource": "*"
///     },
///     {
///       "Sid": "SidToOverride",
///       "Effect": "Allow",
///       "Action": "s3:*",
///       "Resource": "*"
///     }
///   ]
/// }
/// ```
///
/// ### Example with Both Source and Override Documents
///
/// You can also combine `sourcePolicyDocuments` and `overridePolicyDocuments` in the same document.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const source = aws.iam.getPolicyDocument({
///     statements: [{
///         sid: "OverridePlaceholder",
///         actions: ["ec2:DescribeAccountAttributes"],
///         resources: ["*"],
///     }],
/// });
/// const override = aws.iam.getPolicyDocument({
///     statements: [{
///         sid: "OverridePlaceholder",
///         actions: ["s3:GetObject"],
///         resources: ["*"],
///     }],
/// });
/// const politik = Promise.all([source, override]).then(([source, override]) => aws.iam.getPolicyDocument({
///     sourcePolicyDocuments: [source.json],
///     overridePolicyDocuments: [override.json],
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// source = aws.iam.get_policy_document(statements=[{
///     "sid": "OverridePlaceholder",
///     "actions": ["ec2:DescribeAccountAttributes"],
///     "resources": ["*"],
/// }])
/// override = aws.iam.get_policy_document(statements=[{
///     "sid": "OverridePlaceholder",
///     "actions": ["s3:GetObject"],
///     "resources": ["*"],
/// }])
/// politik = aws.iam.get_policy_document(source_policy_documents=[source.json],
///     override_policy_documents=[override.json])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var source = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "OverridePlaceholder",
///                 Actions = new[]
///                 {
///                     "ec2:DescribeAccountAttributes",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var @override = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "OverridePlaceholder",
///                 Actions = new[]
///                 {
///                     "s3:GetObject",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var politik = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         SourcePolicyDocuments = new[]
///         {
///             source.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///         },
///         OverridePolicyDocuments = new[]
///         {
///             @override.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		source, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Sid: pulumi.StringRef("OverridePlaceholder"),
/// 					Actions: []string{
/// 						"ec2:DescribeAccountAttributes",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		override, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Sid: pulumi.StringRef("OverridePlaceholder"),
/// 					Actions: []string{
/// 						"s3:GetObject",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			SourcePolicyDocuments: pulumi.StringArray{
/// 				source.Json,
/// 			},
/// 			OverridePolicyDocuments: pulumi.StringArray{
/// 				override.Json,
/// 			},
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
/// data "aws_iam_getpolicydocument" "source" {
///   statements {
///     sid       = "OverridePlaceholder"
///     actions   = ["ec2:DescribeAccountAttributes"]
///     resources = ["*"]
///   }
/// }
/// data "aws_iam_getpolicydocument" "override" {
///   statements {
///     sid       = "OverridePlaceholder"
///     actions   = ["s3:GetObject"]
///     resources = ["*"]
///   }
/// }
/// data "aws_iam_getpolicydocument" "politik" {
///   source_policy_documents   = [data.aws_iam_getpolicydocument.source.json]
///   override_policy_documents = [data.aws_iam_getpolicydocument.override.json]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
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
///         final var source = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .sid("OverridePlaceholder")
///                 .actions("ec2:DescribeAccountAttributes")
///                 .resources("*")
///                 .build())
///             .build());
///
///         final var override = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .sid("OverridePlaceholder")
///                 .actions("s3:GetObject")
///                 .resources("*")
///                 .build())
///             .build());
///
///         final var politik = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .sourcePolicyDocuments(source.json())
///             .overridePolicyDocuments(override.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   source:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - sid: OverridePlaceholder
///             actions:
///               - ec2:DescribeAccountAttributes
///             resources:
///               - '*'
///   override:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - sid: OverridePlaceholder
///             actions:
///               - s3:GetObject
///             resources:
///               - '*'
///   politik:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         sourcePolicyDocuments:
///           - ${source.json}
///         overridePolicyDocuments:
///           - ${override.json}
/// ```
///
///
/// `data.aws_iam_policy_document.politik.json` will evaluate to:
///
/// ```json
/// {
///   "Version": "2012-10-17",
///   "Statement": [
///     {
///       "Sid": "OverridePlaceholder",
///       "Effect": "Allow",
///       "Action": "s3:GetObject",
///       "Resource": "*"
///     }
///   ]
/// }
/// ```
///
/// ### Example of Merging Source Documents
///
/// Multiple documents can be combined using the `sourcePolicyDocuments` or `overridePolicyDocuments` attributes. `sourcePolicyDocuments` requires that all documents have unique Sids, while `overridePolicyDocuments` will iteratively override matching Sids.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const sourceOne = aws.iam.getPolicyDocument({
///     statements: [
///         {
///             actions: ["ec2:*"],
///             resources: ["*"],
///         },
///         {
///             sid: "UniqueSidOne",
///             actions: ["s3:*"],
///             resources: ["*"],
///         },
///     ],
/// });
/// const sourceTwo = aws.iam.getPolicyDocument({
///     statements: [
///         {
///             sid: "UniqueSidTwo",
///             actions: ["iam:*"],
///             resources: ["*"],
///         },
///         {
///             actions: ["lambda:*"],
///             resources: ["*"],
///         },
///     ],
/// });
/// const combined = Promise.all([sourceOne, sourceTwo]).then(([sourceOne, sourceTwo]) => aws.iam.getPolicyDocument({
///     sourcePolicyDocuments: [
///         sourceOne.json,
///         sourceTwo.json,
///     ],
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// source_one = aws.iam.get_policy_document(statements=[
///     {
///         "actions": ["ec2:*"],
///         "resources": ["*"],
///     },
///     {
///         "sid": "UniqueSidOne",
///         "actions": ["s3:*"],
///         "resources": ["*"],
///     },
/// ])
/// source_two = aws.iam.get_policy_document(statements=[
///     {
///         "sid": "UniqueSidTwo",
///         "actions": ["iam:*"],
///         "resources": ["*"],
///     },
///     {
///         "actions": ["lambda:*"],
///         "resources": ["*"],
///     },
/// ])
/// combined = aws.iam.get_policy_document(source_policy_documents=[
///     source_one.json,
///     source_two.json,
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sourceOne = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "ec2:*",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "UniqueSidOne",
///                 Actions = new[]
///                 {
///                     "s3:*",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var sourceTwo = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "UniqueSidTwo",
///                 Actions = new[]
///                 {
///                     "iam:*",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "lambda:*",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var combined = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         SourcePolicyDocuments = new[]
///         {
///             sourceOne.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///             sourceTwo.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		sourceOne, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Actions: []string{
/// 						"ec2:*",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 				{
/// 					Sid: pulumi.StringRef("UniqueSidOne"),
/// 					Actions: []string{
/// 						"s3:*",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sourceTwo, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Sid: pulumi.StringRef("UniqueSidTwo"),
/// 					Actions: []string{
/// 						"iam:*",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 				{
/// 					Actions: []string{
/// 						"lambda:*",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			SourcePolicyDocuments: pulumi.StringArray{
/// 				sourceOne.Json,
/// 				sourceTwo.Json,
/// 			},
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
/// data "aws_iam_getpolicydocument" "sourceOne" {
///   statements {
///     actions   = ["ec2:*"]
///     resources = ["*"]
///   }
///   statements {
///     sid       = "UniqueSidOne"
///     actions   = ["s3:*"]
///     resources = ["*"]
///   }
/// }
/// data "aws_iam_getpolicydocument" "sourceTwo" {
///   statements {
///     sid       = "UniqueSidTwo"
///     actions   = ["iam:*"]
///     resources = ["*"]
///   }
///   statements {
///     actions   = ["lambda:*"]
///     resources = ["*"]
///   }
/// }
/// data "aws_iam_getpolicydocument" "combined" {
///   source_policy_documents = [data.aws_iam_getpolicydocument.sourceOne.json, data.aws_iam_getpolicydocument.sourceTwo.json]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
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
///         final var sourceOne = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .actions("ec2:*")
///                     .resources("*")
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .sid("UniqueSidOne")
///                     .actions("s3:*")
///                     .resources("*")
///                     .build())
///             .build());
///
///         final var sourceTwo = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .sid("UniqueSidTwo")
///                     .actions("iam:*")
///                     .resources("*")
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .actions("lambda:*")
///                     .resources("*")
///                     .build())
///             .build());
///
///         final var combined = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .sourcePolicyDocuments(
///                 sourceOne.json(),
///                 sourceTwo.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   sourceOne:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - actions:
///               - ec2:*
///             resources:
///               - '*'
///           - sid: UniqueSidOne
///             actions:
///               - s3:*
///             resources:
///               - '*'
///   sourceTwo:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - sid: UniqueSidTwo
///             actions:
///               - iam:*
///             resources:
///               - '*'
///           - actions:
///               - lambda:*
///             resources:
///               - '*'
///   combined:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         sourcePolicyDocuments:
///           - ${sourceOne.json}
///           - ${sourceTwo.json}
/// ```
///
///
/// `data.aws_iam_policy_document.combined.json` will evaluate to:
///
/// ```json
/// {
///   "Version": "2012-10-17",
///   "Statement": [
///     {
///       "Sid": "",
///       "Effect": "Allow",
///       "Action": "ec2:*",
///       "Resource": "*"
///     },
///     {
///       "Sid": "UniqueSidOne",
///       "Effect": "Allow",
///       "Action": "s3:*",
///       "Resource": "*"
///     },
///     {
///       "Sid": "UniqueSidTwo",
///       "Effect": "Allow",
///       "Action": "iam:*",
///       "Resource": "*"
///     },
///     {
///       "Sid": "",
///       "Effect": "Allow",
///       "Action": "lambda:*",
///       "Resource": "*"
///     }
///   ]
/// }
/// ```
///
/// ### Example of Merging Override Documents
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const policyOne = aws.iam.getPolicyDocument({
///     statements: [{
///         sid: "OverridePlaceHolderOne",
///         effect: "Allow",
///         actions: ["s3:*"],
///         resources: ["*"],
///     }],
/// });
/// const policyTwo = aws.iam.getPolicyDocument({
///     statements: [
///         {
///             effect: "Allow",
///             actions: ["ec2:*"],
///             resources: ["*"],
///         },
///         {
///             sid: "OverridePlaceHolderTwo",
///             effect: "Allow",
///             actions: ["iam:*"],
///             resources: ["*"],
///         },
///     ],
/// });
/// const policyThree = aws.iam.getPolicyDocument({
///     statements: [{
///         sid: "OverridePlaceHolderOne",
///         effect: "Deny",
///         actions: ["logs:*"],
///         resources: ["*"],
///     }],
/// });
/// const combined = Promise.all([policyOne, policyTwo, policyThree]).then(([policyOne, policyTwo, policyThree]) => aws.iam.getPolicyDocument({
///     overridePolicyDocuments: [
///         policyOne.json,
///         policyTwo.json,
///         policyThree.json,
///     ],
///     statements: [{
///         sid: "OverridePlaceHolderTwo",
///         effect: "Deny",
///         actions: ["*"],
///         resources: ["*"],
///     }],
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// policy_one = aws.iam.get_policy_document(statements=[{
///     "sid": "OverridePlaceHolderOne",
///     "effect": "Allow",
///     "actions": ["s3:*"],
///     "resources": ["*"],
/// }])
/// policy_two = aws.iam.get_policy_document(statements=[
///     {
///         "effect": "Allow",
///         "actions": ["ec2:*"],
///         "resources": ["*"],
///     },
///     {
///         "sid": "OverridePlaceHolderTwo",
///         "effect": "Allow",
///         "actions": ["iam:*"],
///         "resources": ["*"],
///     },
/// ])
/// policy_three = aws.iam.get_policy_document(statements=[{
///     "sid": "OverridePlaceHolderOne",
///     "effect": "Deny",
///     "actions": ["logs:*"],
///     "resources": ["*"],
/// }])
/// combined = aws.iam.get_policy_document(override_policy_documents=[
///         policy_one.json,
///         policy_two.json,
///         policy_three.json,
///     ],
///     statements=[{
///         "sid": "OverridePlaceHolderTwo",
///         "effect": "Deny",
///         "actions": ["*"],
///         "resources": ["*"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policyOne = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "OverridePlaceHolderOne",
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "s3:*",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var policyTwo = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "ec2:*",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "OverridePlaceHolderTwo",
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "iam:*",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var policyThree = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "OverridePlaceHolderOne",
///                 Effect = "Deny",
///                 Actions = new[]
///                 {
///                     "logs:*",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var combined = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         OverridePolicyDocuments = new[]
///         {
///             policyOne.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///             policyTwo.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///             policyThree.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///         },
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "OverridePlaceHolderTwo",
///                 Effect = "Deny",
///                 Actions = new[]
///                 {
///                     "*",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		policyOne, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Sid:    pulumi.StringRef("OverridePlaceHolderOne"),
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"s3:*",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		policyTwo, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"ec2:*",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 				{
/// 					Sid:    pulumi.StringRef("OverridePlaceHolderTwo"),
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"iam:*",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		policyThree, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Sid:    pulumi.StringRef("OverridePlaceHolderOne"),
/// 					Effect: pulumi.StringRef("Deny"),
/// 					Actions: []string{
/// 						"logs:*",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			OverridePolicyDocuments: pulumi.StringArray{
/// 				policyOne.Json,
/// 				policyTwo.Json,
/// 				policyThree.Json,
/// 			},
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Sid:    pulumi.StringRef("OverridePlaceHolderTwo"),
/// 					Effect: pulumi.StringRef("Deny"),
/// 					Actions: []string{
/// 						"*",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 			},
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
/// data "aws_iam_getpolicydocument" "policyOne" {
///   statements {
///     sid       = "OverridePlaceHolderOne"
///     effect    = "Allow"
///     actions   = ["s3:*"]
///     resources = ["*"]
///   }
/// }
/// data "aws_iam_getpolicydocument" "policyTwo" {
///   statements {
///     effect    = "Allow"
///     actions   = ["ec2:*"]
///     resources = ["*"]
///   }
///   statements {
///     sid       = "OverridePlaceHolderTwo"
///     effect    = "Allow"
///     actions   = ["iam:*"]
///     resources = ["*"]
///   }
/// }
/// data "aws_iam_getpolicydocument" "policyThree" {
///   statements {
///     sid       = "OverridePlaceHolderOne"
///     effect    = "Deny"
///     actions   = ["logs:*"]
///     resources = ["*"]
///   }
/// }
/// data "aws_iam_getpolicydocument" "combined" {
///   override_policy_documents = [data.aws_iam_getpolicydocument.policyOne.json, data.aws_iam_getpolicydocument.policyTwo.json, data.aws_iam_getpolicydocument.policyThree.json]
///   statements {
///     sid       = "OverridePlaceHolderTwo"
///     effect    = "Deny"
///     actions   = ["*"]
///     resources = ["*"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
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
///         final var policyOne = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .sid("OverridePlaceHolderOne")
///                 .effect("Allow")
///                 .actions("s3:*")
///                 .resources("*")
///                 .build())
///             .build());
///
///         final var policyTwo = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .effect("Allow")
///                     .actions("ec2:*")
///                     .resources("*")
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .sid("OverridePlaceHolderTwo")
///                     .effect("Allow")
///                     .actions("iam:*")
///                     .resources("*")
///                     .build())
///             .build());
///
///         final var policyThree = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .sid("OverridePlaceHolderOne")
///                 .effect("Deny")
///                 .actions("logs:*")
///                 .resources("*")
///                 .build())
///             .build());
///
///         final var combined = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .overridePolicyDocuments(
///                 policyOne.json(),
///                 policyTwo.json(),
///                 policyThree.json())
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .sid("OverridePlaceHolderTwo")
///                 .effect("Deny")
///                 .actions("*")
///                 .resources("*")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policyOne:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - sid: OverridePlaceHolderOne
///             effect: Allow
///             actions:
///               - s3:*
///             resources:
///               - '*'
///   policyTwo:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - ec2:*
///             resources:
///               - '*'
///           - sid: OverridePlaceHolderTwo
///             effect: Allow
///             actions:
///               - iam:*
///             resources:
///               - '*'
///   policyThree:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - sid: OverridePlaceHolderOne
///             effect: Deny
///             actions:
///               - logs:*
///             resources:
///               - '*'
///   combined:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         overridePolicyDocuments:
///           - ${policyOne.json}
///           - ${policyTwo.json}
///           - ${policyThree.json}
///         statements:
///           - sid: OverridePlaceHolderTwo
///             effect: Deny
///             actions:
///               - '*'
///             resources:
///               - '*'
/// ```
///
///
/// `data.aws_iam_policy_document.combined.json` will evaluate to:
///
/// ```json
/// {
///   "Version": "2012-10-17",
///   "Statement": [
///     {
///       "Sid": "OverridePlaceholderTwo",
///       "Effect": "Allow",
///       "Action": "iam:*",
///       "Resource": "*"
///     },
///     {
///       "Sid": "OverridePlaceholderOne",
///       "Effect": "Deny",
///       "Action": "logs:*",
///       "Resource": "*"
///     },
///     {
///       "Sid": "",
///       "Effect": "Allow",
///       "Action": "ec2:*",
///       "Resource": "*"
///     },
///   ]
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_get_policy_document_get_policy_document_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyDocumentResult> getPolicyDocument(
  GetPolicyDocumentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getPolicyDocument:getPolicyDocument',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyDocumentResult.fromMap(result);
}

/// Runs a simulation of the IAM policies of a particular principal against a given hypothetical request.
///
/// You can use this data source in conjunction with
/// Preconditions and Postconditions so that your configuration can test either whether it should have sufficient access to do its own work, or whether policies your configuration declares itself are sufficient for their intended use elsewhere.
///
/// &gt; **Note:** Correctly using this data source requires familiarity with various details of AWS Identity and Access Management, and how various AWS services integrate with it. For general information on the AWS IAM policy simulator, see [Testing IAM policies with the IAM policy simulator](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_testing-policies.html). This data source wraps the `iam:SimulatePrincipalPolicy` API action described on that page.
///
/// ## Example Usage
///
/// ### Self Access-checking Example
///
/// The following example raises an error if the credentials passed to the AWS provider do not have access to perform the three actions `s3:GetObject`, `s3:PutObject`, and `s3:DeleteObject` on the S3 bucket with the given ARN.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const s3ObjectAccess = current.then(current => aws.iam.getPrincipalPolicySimulation({
///     actionNames: [
///         "s3:GetObject",
///         "s3:PutObject",
///         "s3:DeleteObject",
///     ],
///     policySourceArn: current.arn,
///     resourceArns: ["arn:aws:s3:::my-test-bucket"],
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// s3_object_access = aws.iam.get_principal_policy_simulation(action_names=[
///         "s3:GetObject",
///         "s3:PutObject",
///         "s3:DeleteObject",
///     ],
///     policy_source_arn=current.arn,
///     resource_arns=["arn:aws:s3:::my-test-bucket"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var s3ObjectAccess = Aws.Iam.GetPrincipalPolicySimulation.Invoke(new()
///     {
///         ActionNames = new[]
///         {
///             "s3:GetObject",
///             "s3:PutObject",
///             "s3:DeleteObject",
///         },
///         PolicySourceArn = current.Apply(getCallerIdentityResult => getCallerIdentityResult.Arn),
///         ResourceArns = new[]
///         {
///             "arn:aws:s3:::my-test-bucket",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.LookupPrincipalPolicySimulation(ctx, &iam.LookupPrincipalPolicySimulationArgs{
/// 			ActionNames: []string{
/// 				"s3:GetObject",
/// 				"s3:PutObject",
/// 				"s3:DeleteObject",
/// 			},
/// 			PolicySourceArn: current.Arn,
/// 			ResourceArns: []string{
/// 				"arn:aws:s3:::my-test-bucket",
/// 			},
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
/// data "aws_getcalleridentity" "current" {
/// }
/// data "aws_iam_getprincipalpolicysimulation" "s3ObjectAccess" {
///   action_names      = ["s3:GetObject", "s3:PutObject", "s3:DeleteObject"]
///   policy_source_arn = data.aws_getcalleridentity.current.arn
///   resource_arns     = ["arn:aws:s3:::my-test-bucket"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPrincipalPolicySimulationArgs;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var s3ObjectAccess = IamFunctions.getPrincipalPolicySimulation(GetPrincipalPolicySimulationArgs.builder()
///             .actionNames(
///                 "s3:GetObject",
///                 "s3:PutObject",
///                 "s3:DeleteObject")
///             .policySourceArn(current.arn())
///             .resourceArns("arn:aws:s3:::my-test-bucket")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   s3ObjectAccess:
///     fn::invoke:
///       function: aws:iam:getPrincipalPolicySimulation
///       arguments:
///         actionNames:
///           - s3:GetObject
///           - s3:PutObject
///           - s3:DeleteObject
///         policySourceArn: ${current.arn}
///         resourceArns:
///           - arn:aws:s3:::my-test-bucket
/// ```
///
///
/// If you intend to use this data source to quickly raise an error when the given credentials are insufficient then you must use `dependsOn` inside any resource which would require those credentials, to ensure that the policy check will run first:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.BucketObjectv2("example", {bucket: "my-test-bucket"}, {
///     dependsOn: [s3ObjectAccess],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.BucketObjectv2("example", bucket="my-test-bucket",
/// opts = pulumi.ResourceOptions(depends_on=[s3_object_access]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.BucketObjectv2("example", new()
///     {
///         Bucket = "my-test-bucket",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             s3ObjectAccess,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.NewBucketObjectv2(ctx, "example", &s3.BucketObjectv2Args{
/// 			Bucket: pulumi.Any("my-test-bucket"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			s3ObjectAccess,
/// 		}))
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
/// resource "aws_s3_bucketobjectv2" "example" {
///   depends_on = [s3ObjectAccess]
///   bucket     = "my-test-bucket"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.BucketObjectv2;
/// import com.pulumi.aws.s3.BucketObjectv2Args;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new BucketObjectv2("example", BucketObjectv2Args.builder()
///             .bucket("my-test-bucket")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(s3ObjectAccess)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:BucketObjectv2
///     properties:
///       bucket: my-test-bucket
///     options:
///       dependsOn:
///         - ${s3ObjectAccess}
/// ```
///
///
/// ### Testing the Effect of a Declared Policy
///
/// The following example declares an S3 bucket and a user that should have access to the bucket, and then uses `aws.iam.getPrincipalPolicySimulation` to verify that the user does indeed have access to perform needed operations against the bucket.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const example = new aws.iam.User("example", {name: "example"});
/// const exampleBucket = new aws.s3.Bucket("example", {bucket: "my-test-bucket"});
/// const s3Access = new aws.iam.UserPolicy("s3_access", {
///     name: "example_s3_access",
///     user: example.name,
///     policy: pulumi.jsonStringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: "s3:GetObject",
///             Effect: "Allow",
///             Resource: exampleBucket.arn,
///         }],
///     }),
/// });
/// const accountAccess = new aws.s3.BucketPolicy("account_access", {
///     bucket: exampleBucket.bucket,
///     policy: pulumi.jsonStringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: "s3:*",
///             Effect: "Allow",
///             Principal: {
///                 AWS: current.then(current => current.accountId),
///             },
///             Resource: [
///                 exampleBucket.arn,
///                 pulumi.interpolate`${exampleBucket.arn}/*`,
///             ],
///         }],
///     }),
/// });
/// const s3ObjectAccess = aws.iam.getPrincipalPolicySimulationOutput({
///     actionNames: ["s3:GetObject"],
///     policySourceArn: example.arn,
///     resourceArns: [exampleBucket.arn],
///     resourcePolicyJson: accountAccess.policy,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.iam.User("example", name="example")
/// example_bucket = aws.s3.Bucket("example", bucket="my-test-bucket")
/// s3_access = aws.iam.UserPolicy("s3_access",
///     name="example_s3_access",
///     user=example.name,
///     policy=pulumi.Output.json_dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": "s3:GetObject",
///             "Effect": "Allow",
///             "Resource": example_bucket.arn,
///         }],
///     }))
/// account_access = aws.s3.BucketPolicy("account_access",
///     bucket=example_bucket.bucket,
///     policy=pulumi.Output.json_dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": "s3:*",
///             "Effect": "Allow",
///             "Principal": {
///                 "AWS": current.account_id,
///             },
///             "Resource": [
///                 example_bucket.arn,
///                 example_bucket.arn.apply(lambda arn: f"{arn}/*"),
///             ],
///         }],
///     }))
/// s3_object_access = aws.iam.get_principal_policy_simulation_output(action_names=["s3:GetObject"],
///     policy_source_arn=example.arn,
///     resource_arns=[example_bucket.arn],
///     resource_policy_json=account_access.policy)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var example = new Aws.Iam.User("example", new()
///     {
///         Name = "example",
///     });
///
///     var exampleBucket = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "my-test-bucket",
///     });
///
///     var s3Access = new Aws.Iam.UserPolicy("s3_access", new()
///     {
///         Name = "example_s3_access",
///         User = example.Name,
///         Policy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = "s3:GetObject",
///                     ["Effect"] = "Allow",
///                     ["Resource"] = exampleBucket.Arn,
///                 },
///             },
///         })),
///     });
///
///     var accountAccess = new Aws.S3.BucketPolicy("account_access", new()
///     {
///         Bucket = exampleBucket.BucketName,
///         Policy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = "s3:*",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["AWS"] = current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///                     },
///                     ["Resource"] = new[]
///                     {
///                         exampleBucket.Arn,
///                         exampleBucket.Arn.Apply(arn => $"{arn}/*"),
///                     },
///                 },
///             },
///         })),
///     });
///
///     var s3ObjectAccess = Aws.Iam.GetPrincipalPolicySimulation.Invoke(new()
///     {
///         ActionNames = new[]
///         {
///             "s3:GetObject",
///         },
///         PolicySourceArn = example.Arn,
///         ResourceArns = new[]
///         {
///             exampleBucket.Arn,
///         },
///         ResourcePolicyJson = accountAccess.Policy,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := iam.NewUser(ctx, "example", &iam.UserArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("my-test-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewUserPolicy(ctx, "s3_access", &iam.UserPolicyArgs{
/// 			Name: pulumi.String("example_s3_access"),
/// 			User: example.Name,
/// 			Policy: exampleBucket.Arn.ApplyT(func(arn string) (pulumi.String, error) {
/// 				var _zero pulumi.String
/// 				tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 					"Version": "2012-10-17",
/// 					"Statement": []map[string]string{
/// 						{
/// 							"Action":   "s3:GetObject",
/// 							"Effect":   "Allow",
/// 							"Resource": arn,
/// 						},
/// 					},
/// 				})
/// 				if err != nil {
/// 					return _zero, err
/// 				}
/// 				json0 := string(tmpJSON0)
/// 				return pulumi.String(json0), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		accountAccess, err := s3.NewBucketPolicy(ctx, "account_access", &s3.BucketPolicyArgs{
/// 			Bucket: exampleBucket.Bucket,
/// 			Policy: exampleBucket.Arn.ApplyT(func(arn string) (pulumi.String, error) {
/// 				var _zero pulumi.String
/// 				tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 					"Version": "2012-10-17",
/// 					"Statement": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"Action": "s3:*",
/// 							"Effect": "Allow",
/// 							"Principal": map[string]interface{}{
/// 								"AWS": current.AccountId,
/// 							},
/// 							"Resource": []string{
/// 								arn,
/// 								fmt.Sprintf("%v/*", arn),
/// 							},
/// 						},
/// 					},
/// 				})
/// 				if err != nil {
/// 					return _zero, err
/// 				}
/// 				json1 := string(tmpJSON1)
/// 				return pulumi.String(json1), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = iam.LookupPrincipalPolicySimulationOutput(ctx, iam.GetPrincipalPolicySimulationOutputArgs{
/// 			ActionNames: pulumi.StringArray{
/// 				pulumi.String("s3:GetObject"),
/// 			},
/// 			PolicySourceArn: example.Arn,
/// 			ResourceArns: pulumi.StringArray{
/// 				exampleBucket.Arn,
/// 			},
/// 			ResourcePolicyJson: accountAccess.Policy,
/// 		}, nil)
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
/// data "aws_getcalleridentity" "current" {
/// }
/// data "aws_iam_getprincipalpolicysimulation" "s3ObjectAccess" {
///   action_names         = ["s3:GetObject"]
///   policy_source_arn    = aws_iam_user.example.arn
///   resource_arns        = [aws_s3_bucket.example.arn]
///   resource_policy_json = aws_s3_bucketpolicy.account_access.policy
/// }
///
/// resource "aws_iam_user" "example" {
///   name = "example"
/// }
/// resource "aws_s3_bucket" "example" {
///   bucket = "my-test-bucket"
/// }
/// resource "aws_iam_userpolicy" "s3_access" {
///   name = "example_s3_access"
///   user = aws_iam_user.example.name
///   policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Action"   = "s3:GetObject"
///       "Effect"   = "Allow"
///       "Resource" = aws_s3_bucket.example.arn
///     }]
///   })
/// }
/// resource "aws_s3_bucketpolicy" "account_access" {
///   bucket = aws_s3_bucket.example.bucket
///   policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Action" = "s3:*"
///       "Effect" = "Allow"
///       "Principal" = {
///         "AWS" = data.aws_getcalleridentity.current.account_id
///       }
///       "Resource" = [aws_s3_bucket.example.arn, "${aws_s3_bucket.example.arn}/*"]
///     }]
///   })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.iam.User;
/// import com.pulumi.aws.iam.UserArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.iam.UserPolicy;
/// import com.pulumi.aws.iam.UserPolicyArgs;
/// import com.pulumi.aws.s3.BucketPolicy;
/// import com.pulumi.aws.s3.BucketPolicyArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPrincipalPolicySimulationArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         var example = new User("example", UserArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
///             .bucket("my-test-bucket")
///             .build());
///
///         var s3Access = new UserPolicy("s3Access", UserPolicyArgs.builder()
///             .name("example_s3_access")
///             .user(example.name())
///             .policy(exampleBucket.arn().applyValue(_arn -> serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", "s3:GetObject"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Resource", _arn)
///                     )))
///                 ))))
///             .build());
///
///         var accountAccess = new BucketPolicy("accountAccess", BucketPolicyArgs.builder()
///             .bucket(exampleBucket.bucket())
///             .policy(exampleBucket.arn().applyValue(_arn -> serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", "s3:*"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("AWS", current.accountId())
///                         )),
///                         jsonProperty("Resource", jsonArray(
///                             _arn,
///                             String.format("%s/*", _arn)
///                         ))
///                     )))
///                 ))))
///             .build());
///
///         final var s3ObjectAccess = IamFunctions.getPrincipalPolicySimulation(GetPrincipalPolicySimulationArgs.builder()
///             .actionNames("s3:GetObject")
///             .policySourceArn(example.arn())
///             .resourceArns(exampleBucket.arn())
///             .resourcePolicyJson(accountAccess.policy())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:User
///     properties:
///       name: example
///   exampleBucket:
///     type: aws:s3:Bucket
///     name: example
///     properties:
///       bucket: my-test-bucket
///   s3Access:
///     type: aws:iam:UserPolicy
///     name: s3_access
///     properties:
///       name: example_s3_access
///       user: ${example.name}
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action: s3:GetObject
///               Effect: Allow
///               Resource: ${exampleBucket.arn}
///   accountAccess:
///     type: aws:s3:BucketPolicy
///     name: account_access
///     properties:
///       bucket: ${exampleBucket.bucket}
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action: s3:*
///               Effect: Allow
///               Principal:
///                 AWS: ${current.accountId}
///               Resource:
///                 - ${exampleBucket.arn}
///                 - ${exampleBucket.arn}/*
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   s3ObjectAccess:
///     fn::invoke:
///       function: aws:iam:getPrincipalPolicySimulation
///       arguments:
///         actionNames:
///           - s3:GetObject
///         policySourceArn: ${example.arn}
///         resourceArns:
///           - ${exampleBucket.arn}
///         resourcePolicyJson: ${accountAccess.policy}
/// ```
///
///
/// When using `aws.iam.getPrincipalPolicySimulation` to test the effect of a policy declared elsewhere in the same configuration, it's important to use `dependsOn` to make sure that the needed policy has been fully created or updated before running the simulation.
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_get_principal_policy_simulation_get_principal_policy_simulation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrincipalPolicySimulationIamResult> getPrincipalPolicySimulation(
  GetPrincipalPolicySimulationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getPrincipalPolicySimulation:getPrincipalPolicySimulation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrincipalPolicySimulationIamResult.fromMap(result);
}

/// This data source can be used to fetch information about a specific
/// IAM role. By using this data source, you can reference IAM role
/// properties without having to hard code ARNs as input.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getRole({
///     name: "an_example_role_name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_role(name="an_example_role_name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Iam.GetRole.Invoke(new()
///     {
///         Name = "an_example_role_name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.LookupRole(ctx, &iam.LookupRoleArgs{
/// 			Name: "an_example_role_name",
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
/// data "aws_iam_getrole" "example" {
///   name = "an_example_role_name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetRoleArgs;
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
///         final var example = IamFunctions.getRole(GetRoleArgs.builder()
///             .name("an_example_role_name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getRole
///       arguments:
///         name: an_example_role_name
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_get_role_get_role_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRoleResult> getRole(
  GetRoleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getRole:getRole',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRoleResult.fromMap(result);
}

/// Use this data source to get the names of inline policies associated with an IAM role.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getRolePolicies({
///     roleName: "my-role-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_role_policies(role_name="my-role-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Iam.GetRolePolicies.Invoke(new()
///     {
///         RoleName = "my-role-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.GetRolePolicies(ctx, &iam.GetRolePoliciesArgs{
/// 			RoleName: "my-role-name",
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
/// data "aws_iam_getrolepolicies" "example" {
///   role_name = "my-role-name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetRolePoliciesArgs;
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
///         final var example = IamFunctions.getRolePolicies(GetRolePoliciesArgs.builder()
///             .roleName("my-role-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getRolePolicies
///       arguments:
///         roleName: my-role-name
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_get_role_policies_get_role_policies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRolePoliciesResult> getRolePolicies(
  GetRolePoliciesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getRolePolicies:getRolePolicies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRolePoliciesResult.fromMap(result);
}

/// Provides details about the managed policies attached to an AWS IAM Role.
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
/// const example = aws.iam.getRolePolicyAttachments({
///     roleName: "example-role",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_role_policy_attachments(role_name="example-role")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Iam.GetRolePolicyAttachments.Invoke(new()
///     {
///         RoleName = "example-role",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.GetRolePolicyAttachments(ctx, &iam.GetRolePolicyAttachmentsArgs{
/// 			RoleName: "example-role",
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
/// data "aws_iam_getrolepolicyattachments" "example" {
///   role_name = "example-role"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetRolePolicyAttachmentsArgs;
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
///         final var example = IamFunctions.getRolePolicyAttachments(GetRolePolicyAttachmentsArgs.builder()
///             .roleName("example-role")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getRolePolicyAttachments
///       arguments:
///         roleName: example-role
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_get_role_policy_attachments_get_role_policy_attachments_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRolePolicyAttachmentsResult> getRolePolicyAttachments(
  GetRolePolicyAttachmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getRolePolicyAttachments:getRolePolicyAttachments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRolePolicyAttachmentsResult.fromMap(result);
}

/// Use this data source to get the ARNs and Names of IAM Roles.
///
/// ## Example Usage
///
/// ### All roles in an account
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const roles = aws.iam.getRoles({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// roles = aws.iam.get_roles()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var roles = Aws.Iam.GetRoles.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.GetRoles(ctx, &iam.GetRolesArgs{}, nil)
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
/// data "aws_iam_getroles" "roles" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetRolesArgs;
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
///         final var roles = IamFunctions.getRoles(GetRolesArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   roles:
///     fn::invoke:
///       function: aws:iam:getRoles
///       arguments: {}
/// ```
///
///
/// ### Roles filtered by name regex
///
/// Roles whose role-name contains `project`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const roles = aws.iam.getRoles({
///     nameRegex: ".*project.*",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// roles = aws.iam.get_roles(name_regex=".*project.*")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var roles = Aws.Iam.GetRoles.Invoke(new()
///     {
///         NameRegex = ".*project.*",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.GetRoles(ctx, &iam.GetRolesArgs{
/// 			NameRegex: pulumi.StringRef(".*project.*"),
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
/// data "aws_iam_getroles" "roles" {
///   name_regex = ".*project.*"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetRolesArgs;
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
///         final var roles = IamFunctions.getRoles(GetRolesArgs.builder()
///             .nameRegex(".*project.*")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   roles:
///     fn::invoke:
///       function: aws:iam:getRoles
///       arguments:
///         nameRegex: .*project.*
/// ```
///
///
/// ### Roles filtered by path prefix
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const roles = aws.iam.getRoles({
///     pathPrefix: "/custom-path",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// roles = aws.iam.get_roles(path_prefix="/custom-path")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var roles = Aws.Iam.GetRoles.Invoke(new()
///     {
///         PathPrefix = "/custom-path",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.GetRoles(ctx, &iam.GetRolesArgs{
/// 			PathPrefix: pulumi.StringRef("/custom-path"),
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
/// data "aws_iam_getroles" "roles" {
///   path_prefix = "/custom-path"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetRolesArgs;
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
///         final var roles = IamFunctions.getRoles(GetRolesArgs.builder()
///             .pathPrefix("/custom-path")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   roles:
///     fn::invoke:
///       function: aws:iam:getRoles
///       arguments:
///         pathPrefix: /custom-path
/// ```
///
///
/// ### Roles provisioned by AWS SSO
///
/// Roles in the account filtered by path prefix
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const roles = aws.iam.getRoles({
///     pathPrefix: "/aws-reserved/sso.amazonaws.com/",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// roles = aws.iam.get_roles(path_prefix="/aws-reserved/sso.amazonaws.com/")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var roles = Aws.Iam.GetRoles.Invoke(new()
///     {
///         PathPrefix = "/aws-reserved/sso.amazonaws.com/",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.GetRoles(ctx, &iam.GetRolesArgs{
/// 			PathPrefix: pulumi.StringRef("/aws-reserved/sso.amazonaws.com/"),
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
/// data "aws_iam_getroles" "roles" {
///   path_prefix = "/aws-reserved/sso.amazonaws.com/"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetRolesArgs;
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
///         final var roles = IamFunctions.getRoles(GetRolesArgs.builder()
///             .pathPrefix("/aws-reserved/sso.amazonaws.com/")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   roles:
///     fn::invoke:
///       function: aws:iam:getRoles
///       arguments:
///         pathPrefix: /aws-reserved/sso.amazonaws.com/
/// ```
///
///
/// Specific role in the account filtered by name regex and path prefix
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const roles = aws.iam.getRoles({
///     nameRegex: "AWSReservedSSO_permission_set_name_.*",
///     pathPrefix: "/aws-reserved/sso.amazonaws.com/",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// roles = aws.iam.get_roles(name_regex="AWSReservedSSO_permission_set_name_.*",
///     path_prefix="/aws-reserved/sso.amazonaws.com/")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var roles = Aws.Iam.GetRoles.Invoke(new()
///     {
///         NameRegex = "AWSReservedSSO_permission_set_name_.*",
///         PathPrefix = "/aws-reserved/sso.amazonaws.com/",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.GetRoles(ctx, &iam.GetRolesArgs{
/// 			NameRegex:  pulumi.StringRef("AWSReservedSSO_permission_set_name_.*"),
/// 			PathPrefix: pulumi.StringRef("/aws-reserved/sso.amazonaws.com/"),
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
/// data "aws_iam_getroles" "roles" {
///   name_regex  = "AWSReservedSSO_permission_set_name_.*"
///   path_prefix = "/aws-reserved/sso.amazonaws.com/"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetRolesArgs;
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
///         final var roles = IamFunctions.getRoles(GetRolesArgs.builder()
///             .nameRegex("AWSReservedSSO_permission_set_name_.*")
///             .pathPrefix("/aws-reserved/sso.amazonaws.com/")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   roles:
///     fn::invoke:
///       function: aws:iam:getRoles
///       arguments:
///         nameRegex: AWSReservedSSO_permission_set_name_.*
///         pathPrefix: /aws-reserved/sso.amazonaws.com/
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_get_roles_get_roles_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRolesResult> getRoles(
  GetRolesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getRoles:getRoles',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRolesResult.fromMap(result);
}

/// This data source can be used to fetch information about a specific
/// IAM SAML provider. This will allow you to easily retrieve the metadata
/// document of an existing SAML provider.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getSamlProvider({
///     arn: "arn:aws:iam::123456789:saml-provider/myprovider",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_saml_provider(arn="arn:aws:iam::123456789:saml-provider/myprovider")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Iam.GetSamlProvider.Invoke(new()
///     {
///         Arn = "arn:aws:iam::123456789:saml-provider/myprovider",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.LookupSamlProvider(ctx, &iam.LookupSamlProviderArgs{
/// 			Arn: "arn:aws:iam::123456789:saml-provider/myprovider",
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
/// data "aws_iam_getsamlprovider" "example" {
///   arn = "arn:aws:iam::123456789:saml-provider/myprovider"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetSamlProviderArgs;
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
///         final var example = IamFunctions.getSamlProvider(GetSamlProviderArgs.builder()
///             .arn("arn:aws:iam::123456789:saml-provider/myprovider")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getSamlProvider
///       arguments:
///         arn: arn:aws:iam::123456789:saml-provider/myprovider
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_get_saml_provider_get_saml_provider_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSamlProviderResult> getSamlProvider(
  GetSamlProviderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getSamlProvider:getSamlProvider',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSamlProviderResult.fromMap(result);
}

/// Use this data source to lookup information about IAM Server Certificates.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const my_domain = aws.iam.getServerCertificate({
///     namePrefix: "my-domain.org",
///     latest: true,
/// });
/// const elb = new aws.elb.LoadBalancer("elb", {
///     name: "my-domain-elb",
///     listeners: [{
///         instancePort: 8000,
///         instanceProtocol: "https",
///         lbPort: 443,
///         lbProtocol: "https",
///         sslCertificateId: my_domain.then(my_domain => my_domain.arn),
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// my_domain = aws.iam.get_server_certificate(name_prefix="my-domain.org",
///     latest=True)
/// elb = aws.elb.LoadBalancer("elb",
///     name="my-domain-elb",
///     listeners=[{
///         "instance_port": 8000,
///         "instance_protocol": "https",
///         "lb_port": 443,
///         "lb_protocol": "https",
///         "ssl_certificate_id": my_domain.arn,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_domain = Aws.Iam.GetServerCertificate.Invoke(new()
///     {
///         NamePrefix = "my-domain.org",
///         Latest = true,
///     });
///
///     var elb = new Aws.Elb.LoadBalancer("elb", new()
///     {
///         Name = "my-domain-elb",
///         Listeners = new[]
///         {
///             new Aws.Elb.Inputs.LoadBalancerListenerArgs
///             {
///                 InstancePort = 8000,
///                 InstanceProtocol = "https",
///                 LbPort = 443,
///                 LbProtocol = "https",
///                 SslCertificateId = my_domain.Apply(my_domain => my_domain.Apply(getServerCertificateResult => getServerCertificateResult.Arn)),
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elb"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		my_domain, err := iam.LookupServerCertificate(ctx, &iam.LookupServerCertificateArgs{
/// 			NamePrefix: pulumi.StringRef("my-domain.org"),
/// 			Latest:     pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = elb.NewLoadBalancer(ctx, "elb", &elb.LoadBalancerArgs{
/// 			Name: pulumi.String("my-domain-elb"),
/// 			Listeners: elb.LoadBalancerListenerArray{
/// 				&elb.LoadBalancerListenerArgs{
/// 					InstancePort:     pulumi.Int(8000),
/// 					InstanceProtocol: pulumi.String("https"),
/// 					LbPort:           pulumi.Int(443),
/// 					LbProtocol:       pulumi.String("https"),
/// 					SslCertificateId: pulumi.String(my_domain.Arn),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_iam_getservercertificate" "my-domain" {
///   name_prefix = "my-domain.org"
///   latest      = true
/// }
///
/// resource "aws_elb_loadbalancer" "elb" {
///   name = "my-domain-elb"
///   listeners {
///     instance_port      = 8000
///     instance_protocol  = "https"
///     lb_port            = 443
///     lb_protocol        = "https"
///     ssl_certificate_id = data.aws_iam_getservercertificate.my-domain.arn
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetServerCertificateArgs;
/// import com.pulumi.aws.elb.LoadBalancer;
/// import com.pulumi.aws.elb.LoadBalancerArgs;
/// import com.pulumi.aws.elb.inputs.LoadBalancerListenerArgs;
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
///         final var my-domain = IamFunctions.getServerCertificate(GetServerCertificateArgs.builder()
///             .namePrefix("my-domain.org")
///             .latest(true)
///             .build());
///
///         var elb = new LoadBalancer("elb", LoadBalancerArgs.builder()
///             .name("my-domain-elb")
///             .listeners(LoadBalancerListenerArgs.builder()
///                 .instancePort(8000)
///                 .instanceProtocol("https")
///                 .lbPort(443)
///                 .lbProtocol("https")
///                 .sslCertificateId(my_domain.arn())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   elb:
///     type: aws:elb:LoadBalancer
///     properties:
///       name: my-domain-elb
///       listeners:
///         - instancePort: 8000
///           instanceProtocol: https
///           lbPort: 443
///           lbProtocol: https
///           sslCertificateId: ${["my-domain"].arn}
/// variables:
///   my-domain:
///     fn::invoke:
///       function: aws:iam:getServerCertificate
///       arguments:
///         namePrefix: my-domain.org
///         latest: true
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_get_server_certificate_get_server_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerCertificateResult> getServerCertificate(
  GetServerCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getServerCertificate:getServerCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerCertificateResult.fromMap(result);
}

/// This data source provides information on the IAM source role of an STS assumed role. For non-role ARNs, this data source simply passes the ARN through in `issuerArn`.
///
/// For some AWS resources, multiple types of principals are allowed in the same argument (e.g., IAM users and IAM roles). However, these arguments often do not allow assumed-role (i.e., STS, temporary credential) principals. Given an STS ARN, this data source provides the ARN for the source IAM role.
///
/// ## Example Usage
///
/// ### Basic Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getSessionContext({
///     arn: "arn:aws:sts::123456789012:assumed-role/Audien-Heaven/MatyNoyes",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_session_context(arn="arn:aws:sts::123456789012:assumed-role/Audien-Heaven/MatyNoyes")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Iam.GetSessionContext.Invoke(new()
///     {
///         Arn = "arn:aws:sts::123456789012:assumed-role/Audien-Heaven/MatyNoyes",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.GetSessionContext(ctx, &iam.GetSessionContextArgs{
/// 			Arn: "arn:aws:sts::123456789012:assumed-role/Audien-Heaven/MatyNoyes",
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
/// data "aws_iam_getsessioncontext" "example" {
///   arn = "arn:aws:sts::123456789012:assumed-role/Audien-Heaven/MatyNoyes"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetSessionContextArgs;
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
///         final var example = IamFunctions.getSessionContext(GetSessionContextArgs.builder()
///             .arn("arn:aws:sts::123456789012:assumed-role/Audien-Heaven/MatyNoyes")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getSessionContext
///       arguments:
///         arn: arn:aws:sts::123456789012:assumed-role/Audien-Heaven/MatyNoyes
/// ```
///
///
/// ### Find the Runner's Source Role
///
/// Combined with `aws.getCallerIdentity`, you can get the current user's source IAM role ARN (`issuerArn`) if you're using an assumed role. If you're not using an assumed role, the caller's (e.g., an IAM user's) ARN will simply be passed through. In environments where both IAM users and individuals using assumed roles need to apply the same configurations, this data source enables seamless use.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const example = current.then(current => aws.iam.getSessionContext({
///     arn: current.arn,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.iam.get_session_context(arn=current.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var example = Aws.Iam.GetSessionContext.Invoke(new()
///     {
///         Arn = current.Apply(getCallerIdentityResult => getCallerIdentityResult.Arn),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.GetSessionContext(ctx, &iam.GetSessionContextArgs{
/// 			Arn: current.Arn,
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
/// data "aws_getcalleridentity" "current" {
/// }
/// data "aws_iam_getsessioncontext" "example" {
///   arn = data.aws_getcalleridentity.current.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetSessionContextArgs;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var example = IamFunctions.getSessionContext(GetSessionContextArgs.builder()
///             .arn(current.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   example:
///     fn::invoke:
///       function: aws:iam:getSessionContext
///       arguments:
///         arn: ${current.arn}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_get_session_context_get_session_context_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSessionContextResult> getSessionContext(
  GetSessionContextArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getSessionContext:getSessionContext',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSessionContextResult.fromMap(result);
}

/// This data source can be used to fetch information about a specific
/// IAM user. By using this data source, you can reference IAM user
/// properties without having to hard code ARNs or unique IDs as input.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getUser({
///     userName: "an_example_user_name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_user(user_name="an_example_user_name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Iam.GetUser.Invoke(new()
///     {
///         UserName = "an_example_user_name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.LookupUser(ctx, &iam.LookupUserArgs{
/// 			UserName: "an_example_user_name",
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
/// data "aws_iam_getuser" "example" {
///   user_name = "an_example_user_name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetUserArgs;
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
///         final var example = IamFunctions.getUser(GetUserArgs.builder()
///             .userName("an_example_user_name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getUser
///       arguments:
///         userName: an_example_user_name
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_get_user_get_user_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserResult> getUser(
  GetUserArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getUser:getUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserResult.fromMap(result);
}

/// Use this data source to get information about a SSH public key associated with the specified IAM user.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getUserSshKey({
///     encoding: "SSH",
///     sshPublicKeyId: "APKARUZ32GUTKIGARLXE",
///     username: "test-user",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_user_ssh_key(encoding="SSH",
///     ssh_public_key_id="APKARUZ32GUTKIGARLXE",
///     username="test-user")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Iam.GetUserSshKey.Invoke(new()
///     {
///         Encoding = "SSH",
///         SshPublicKeyId = "APKARUZ32GUTKIGARLXE",
///         Username = "test-user",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.GetUserSshKey(ctx, &iam.GetUserSshKeyArgs{
/// 			Encoding:       "SSH",
/// 			SshPublicKeyId: "APKARUZ32GUTKIGARLXE",
/// 			Username:       "test-user",
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
/// data "aws_iam_getusersshkey" "example" {
///   encoding          = "SSH"
///   ssh_public_key_id = "APKARUZ32GUTKIGARLXE"
///   username          = "test-user"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetUserSshKeyArgs;
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
///         final var example = IamFunctions.getUserSshKey(GetUserSshKeyArgs.builder()
///             .encoding("SSH")
///             .sshPublicKeyId("APKARUZ32GUTKIGARLXE")
///             .username("test-user")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getUserSshKey
///       arguments:
///         encoding: SSH
///         sshPublicKeyId: APKARUZ32GUTKIGARLXE
///         username: test-user
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_get_user_ssh_key_get_user_ssh_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserSshKeyResult> getUserSshKey(
  GetUserSshKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getUserSshKey:getUserSshKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserSshKeyResult.fromMap(result);
}

/// Use this data source to get the ARNs and Names of IAM Users.
///
/// ## Example Usage
///
/// ### All users in an account
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const users = aws.iam.getUsers({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// users = aws.iam.get_users()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var users = Aws.Iam.GetUsers.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.GetUsers(ctx, &iam.GetUsersArgs{}, nil)
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
/// data "aws_iam_getusers" "users" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetUsersArgs;
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
///         final var users = IamFunctions.getUsers(GetUsersArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   users:
///     fn::invoke:
///       function: aws:iam:getUsers
///       arguments: {}
/// ```
///
///
/// ### Users filtered by name regex
///
/// Users whose username contains `abc`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const users = aws.iam.getUsers({
///     nameRegex: ".*abc.*",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// users = aws.iam.get_users(name_regex=".*abc.*")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var users = Aws.Iam.GetUsers.Invoke(new()
///     {
///         NameRegex = ".*abc.*",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.GetUsers(ctx, &iam.GetUsersArgs{
/// 			NameRegex: pulumi.StringRef(".*abc.*"),
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
/// data "aws_iam_getusers" "users" {
///   name_regex = ".*abc.*"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetUsersArgs;
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
///         final var users = IamFunctions.getUsers(GetUsersArgs.builder()
///             .nameRegex(".*abc.*")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   users:
///     fn::invoke:
///       function: aws:iam:getUsers
///       arguments:
///         nameRegex: .*abc.*
/// ```
///
///
/// ### Users filtered by path prefix
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const users = aws.iam.getUsers({
///     pathPrefix: "/custom-path",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// users = aws.iam.get_users(path_prefix="/custom-path")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var users = Aws.Iam.GetUsers.Invoke(new()
///     {
///         PathPrefix = "/custom-path",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.GetUsers(ctx, &iam.GetUsersArgs{
/// 			PathPrefix: pulumi.StringRef("/custom-path"),
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
/// data "aws_iam_getusers" "users" {
///   path_prefix = "/custom-path"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetUsersArgs;
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
///         final var users = IamFunctions.getUsers(GetUsersArgs.builder()
///             .pathPrefix("/custom-path")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   users:
///     fn::invoke:
///       function: aws:iam:getUsers
///       arguments:
///         pathPrefix: /custom-path
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iam_get_users_get_users_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUsersResult> getUsers(
  GetUsersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getUsers:getUsers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUsersResult.fromMap(result);
}
