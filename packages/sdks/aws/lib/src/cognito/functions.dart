import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_identity_pool_args.dart';
import 'get_identity_pool_result.dart';
import 'get_user_group_args.dart';
import 'get_user_group_result.dart';
import 'get_user_groups_args.dart';
import 'get_user_groups_result.dart';
import 'get_user_pool_args.dart';
import 'get_user_pool_client_args.dart';
import 'get_user_pool_client_result.dart';
import 'get_user_pool_clients_args.dart';
import 'get_user_pool_clients_result.dart';
import 'get_user_pool_result.dart';
import 'get_user_pool_signing_certificate_args.dart';
import 'get_user_pool_signing_certificate_result.dart';
import 'get_user_pools_args.dart';
import 'get_user_pools_result.dart';

/// Data source for managing an AWS Cognito Identity Pool.
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
/// const example = aws.cognito.getIdentityPool({
///     identityPoolName: "test pool",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cognito.get_identity_pool(identity_pool_name="test pool")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Cognito.GetIdentityPool.Invoke(new()
///     {
///         IdentityPoolName = "test pool",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cognito.LookupIdentityPool(ctx, &cognito.LookupIdentityPoolArgs{
/// 			IdentityPoolName: "test pool",
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
/// import com.pulumi.aws.cognito.CognitoFunctions;
/// import com.pulumi.aws.cognito.inputs.GetIdentityPoolArgs;
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
///         final var example = CognitoFunctions.getIdentityPool(GetIdentityPoolArgs.builder()
///             .identityPoolName("test pool")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:cognito:getIdentityPool
///       arguments:
///         identityPoolName: test pool
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cognito_get_identity_pool_get_identity_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIdentityPoolResult> getIdentityPool(
  GetIdentityPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cognito/getIdentityPool:getIdentityPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIdentityPoolResult.fromMap(result);
}

/// Data source for managing an AWS Cognito IDP (Identity Provider) User Group.
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
/// const example = aws.cognito.getUserGroup({
///     userPoolId: "us-west-2_aaaaaaaaa",
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cognito.get_user_group(user_pool_id="us-west-2_aaaaaaaaa",
///     name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Cognito.GetUserGroup.Invoke(new()
///     {
///         UserPoolId = "us-west-2_aaaaaaaaa",
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cognito.LookupUserGroup(ctx, &cognito.LookupUserGroupArgs{
/// 			UserPoolId: "us-west-2_aaaaaaaaa",
/// 			Name:       "example",
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
/// import com.pulumi.aws.cognito.CognitoFunctions;
/// import com.pulumi.aws.cognito.inputs.GetUserGroupArgs;
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
///         final var example = CognitoFunctions.getUserGroup(GetUserGroupArgs.builder()
///             .userPoolId("us-west-2_aaaaaaaaa")
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:cognito:getUserGroup
///       arguments:
///         userPoolId: us-west-2_aaaaaaaaa
///         name: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cognito_get_user_group_get_user_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserGroupResult> getUserGroup(
  GetUserGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cognito/getUserGroup:getUserGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserGroupResult.fromMap(result);
}

/// Data source for managing AWS Cognito IDP (Identity Provider) User Groups.
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
/// const example = aws.cognito.getUserGroups({
///     userPoolId: "us-west-2_aaaaaaaaa",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cognito.get_user_groups(user_pool_id="us-west-2_aaaaaaaaa")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Cognito.GetUserGroups.Invoke(new()
///     {
///         UserPoolId = "us-west-2_aaaaaaaaa",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cognito.GetUserGroups(ctx, &cognito.GetUserGroupsArgs{
/// 			UserPoolId: "us-west-2_aaaaaaaaa",
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
/// import com.pulumi.aws.cognito.CognitoFunctions;
/// import com.pulumi.aws.cognito.inputs.GetUserGroupsArgs;
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
///         final var example = CognitoFunctions.getUserGroups(GetUserGroupsArgs.builder()
///             .userPoolId("us-west-2_aaaaaaaaa")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:cognito:getUserGroups
///       arguments:
///         userPoolId: us-west-2_aaaaaaaaa
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cognito_get_user_groups_get_user_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserGroupsResult> getUserGroups(
  GetUserGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cognito/getUserGroups:getUserGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserGroupsResult.fromMap(result);
}

/// Data source for managing an AWS Cognito User Pool.
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
/// const example = aws.cognito.getUserPool({
///     userPoolId: "us-west-2_aaaaaaaaa",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cognito.get_user_pool(user_pool_id="us-west-2_aaaaaaaaa")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Cognito.GetUserPool.Invoke(new()
///     {
///         UserPoolId = "us-west-2_aaaaaaaaa",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cognito.LookupUserPool(ctx, &cognito.LookupUserPoolArgs{
/// 			UserPoolId: "us-west-2_aaaaaaaaa",
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
/// import com.pulumi.aws.cognito.CognitoFunctions;
/// import com.pulumi.aws.cognito.inputs.GetUserPoolArgs;
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
///         final var example = CognitoFunctions.getUserPool(GetUserPoolArgs.builder()
///             .userPoolId("us-west-2_aaaaaaaaa")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:cognito:getUserPool
///       arguments:
///         userPoolId: us-west-2_aaaaaaaaa
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cognito_get_user_pool_get_user_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserPoolResult> getUserPool(
  GetUserPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cognito/getUserPool:getUserPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserPoolResult.fromMap(result);
}

/// Provides a Cognito User Pool Client resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const client = aws.cognito.getUserPoolClient({
///     clientId: "38fjsnc484p94kpqsnet7mpld0",
///     userPoolId: "us-west-2_aaaaaaaaa",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// client = aws.cognito.get_user_pool_client(client_id="38fjsnc484p94kpqsnet7mpld0",
///     user_pool_id="us-west-2_aaaaaaaaa")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var client = Aws.Cognito.GetUserPoolClient.Invoke(new()
///     {
///         ClientId = "38fjsnc484p94kpqsnet7mpld0",
///         UserPoolId = "us-west-2_aaaaaaaaa",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cognito.LookupUserPoolClient(ctx, &cognito.LookupUserPoolClientArgs{
/// 			ClientId:   "38fjsnc484p94kpqsnet7mpld0",
/// 			UserPoolId: "us-west-2_aaaaaaaaa",
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
/// import com.pulumi.aws.cognito.CognitoFunctions;
/// import com.pulumi.aws.cognito.inputs.GetUserPoolClientArgs;
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
///         final var client = CognitoFunctions.getUserPoolClient(GetUserPoolClientArgs.builder()
///             .clientId("38fjsnc484p94kpqsnet7mpld0")
///             .userPoolId("us-west-2_aaaaaaaaa")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   client:
///     fn::invoke:
///       function: aws:cognito:getUserPoolClient
///       arguments:
///         clientId: 38fjsnc484p94kpqsnet7mpld0
///         userPoolId: us-west-2_aaaaaaaaa
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cognito_get_user_pool_client_get_user_pool_client_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserPoolClientResult> getUserPoolClient(
  GetUserPoolClientArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cognito/getUserPoolClient:getUserPoolClient',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserPoolClientResult.fromMap(result);
}

/// Use this data source to get a list of Cognito user pools clients for a Cognito IdP user pool.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = aws.cognito.getUserPoolClients({
///     userPoolId: mainAwsCognitoUserPool.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.cognito.get_user_pool_clients(user_pool_id=main_aws_cognito_user_pool["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = Aws.Cognito.GetUserPoolClients.Invoke(new()
///     {
///         UserPoolId = mainAwsCognitoUserPool.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cognito.GetUserPoolClients(ctx, &cognito.GetUserPoolClientsArgs{
/// 			UserPoolId: mainAwsCognitoUserPool.Id,
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
/// import com.pulumi.aws.cognito.CognitoFunctions;
/// import com.pulumi.aws.cognito.inputs.GetUserPoolClientsArgs;
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
///         final var main = CognitoFunctions.getUserPoolClients(GetUserPoolClientsArgs.builder()
///             .userPoolId(mainAwsCognitoUserPool.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   main:
///     fn::invoke:
///       function: aws:cognito:getUserPoolClients
///       arguments:
///         userPoolId: ${mainAwsCognitoUserPool.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cognito_get_user_pool_clients_get_user_pool_clients_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserPoolClientsResult> getUserPoolClients(
  GetUserPoolClientsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cognito/getUserPoolClients:getUserPoolClients',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserPoolClientsResult.fromMap(result);
}

/// Use this data source to get the signing certificate for a Cognito IdP user pool.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const sc = aws.cognito.getUserPoolSigningCertificate({
///     userPoolId: myPool.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// sc = aws.cognito.get_user_pool_signing_certificate(user_pool_id=my_pool["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sc = Aws.Cognito.GetUserPoolSigningCertificate.Invoke(new()
///     {
///         UserPoolId = myPool.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cognito.GetUserPoolSigningCertificate(ctx, &cognito.GetUserPoolSigningCertificateArgs{
/// 			UserPoolId: myPool.Id,
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
/// import com.pulumi.aws.cognito.CognitoFunctions;
/// import com.pulumi.aws.cognito.inputs.GetUserPoolSigningCertificateArgs;
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
///         final var sc = CognitoFunctions.getUserPoolSigningCertificate(GetUserPoolSigningCertificateArgs.builder()
///             .userPoolId(myPool.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   sc:
///     fn::invoke:
///       function: aws:cognito:getUserPoolSigningCertificate
///       arguments:
///         userPoolId: ${myPool.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cognito_get_user_pool_signing_certificate_get_user_pool_signing_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserPoolSigningCertificateResult> getUserPoolSigningCertificate(
  GetUserPoolSigningCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cognito/getUserPoolSigningCertificate:getUserPoolSigningCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserPoolSigningCertificateResult.fromMap(result);
}

/// Use this data source to get a list of cognito user pools.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const selected = aws.apigateway.getRestApi({
///     name: apiGatewayName,
/// });
/// const selectedGetUserPools = aws.cognito.getUserPools({
///     name: cognitoUserPoolName,
/// });
/// const cognito = new aws.apigateway.Authorizer("cognito", {
///     name: "cognito",
///     type: "COGNITO_USER_POOLS",
///     restApi: selected.then(selected => selected.id),
///     providerArns: selectedGetUserPools.then(selectedGetUserPools => selectedGetUserPools.arns),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// selected = aws.apigateway.get_rest_api(name=api_gateway_name)
/// selected_get_user_pools = aws.cognito.get_user_pools(name=cognito_user_pool_name)
/// cognito = aws.apigateway.Authorizer("cognito",
///     name="cognito",
///     type="COGNITO_USER_POOLS",
///     rest_api=selected.id,
///     provider_arns=selected_get_user_pools.arns)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var selected = Aws.ApiGateway.GetRestApi.Invoke(new()
///     {
///         Name = apiGatewayName,
///     });
///
///     var selectedGetUserPools = Aws.Cognito.GetUserPools.Invoke(new()
///     {
///         Name = cognitoUserPoolName,
///     });
///
///     var cognito = new Aws.ApiGateway.Authorizer("cognito", new()
///     {
///         Name = "cognito",
///         Type = "COGNITO_USER_POOLS",
///         RestApi = selected.Apply(getRestApiResult => getRestApiResult.Id),
///         ProviderArns = selectedGetUserPools.Apply(getUserPoolsResult => getUserPoolsResult.Arns),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		selected, err := apigateway.LookupRestApi(ctx, &apigateway.LookupRestApiArgs{
/// 			Name: apiGatewayName,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		selectedGetUserPools, err := cognito.GetUserPools(ctx, &cognito.GetUserPoolsArgs{
/// 			Name: cognitoUserPoolName,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewAuthorizer(ctx, "cognito", &apigateway.AuthorizerArgs{
/// 			Name:         pulumi.String("cognito"),
/// 			Type:         pulumi.String("COGNITO_USER_POOLS"),
/// 			RestApi:      pulumi.String(selected.Id),
/// 			ProviderArns: interface{}(selectedGetUserPools.Arns),
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
/// import com.pulumi.aws.apigateway.ApigatewayFunctions;
/// import com.pulumi.aws.apigateway.inputs.GetRestApiArgs;
/// import com.pulumi.aws.cognito.CognitoFunctions;
/// import com.pulumi.aws.cognito.inputs.GetUserPoolsArgs;
/// import com.pulumi.aws.apigateway.Authorizer;
/// import com.pulumi.aws.apigateway.AuthorizerArgs;
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
///         final var selected = ApigatewayFunctions.getRestApi(GetRestApiArgs.builder()
///             .name(apiGatewayName)
///             .build());
///
///         final var selectedGetUserPools = CognitoFunctions.getUserPools(GetUserPoolsArgs.builder()
///             .name(cognitoUserPoolName)
///             .build());
///
///         var cognito = new Authorizer("cognito", AuthorizerArgs.builder()
///             .name("cognito")
///             .type("COGNITO_USER_POOLS")
///             .restApi(selected.id())
///             .providerArns(selectedGetUserPools.arns())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cognito:
///     type: aws:apigateway:Authorizer
///     properties:
///       name: cognito
///       type: COGNITO_USER_POOLS
///       restApi: ${selected.id}
///       providerArns: ${selectedGetUserPools.arns}
/// variables:
///   selected:
///     fn::invoke:
///       function: aws:apigateway:getRestApi
///       arguments:
///         name: ${apiGatewayName}
///   selectedGetUserPools:
///     fn::invoke:
///       function: aws:cognito:getUserPools
///       arguments:
///         name: ${cognitoUserPoolName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cognito_get_user_pools_get_user_pools_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserPoolsResult> getUserPools(
  GetUserPoolsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cognito/getUserPools:getUserPools',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserPoolsResult.fromMap(result);
}
