import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_pool_provider_principal_tag_args.dart';
import 'identity_pool_provider_principal_tag_state.dart';

/// Provides an AWS Cognito Identity Principal Mapping.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.cognito.UserPool("example", {
///     name: "user pool",
///     autoVerifiedAttributes: ["email"],
/// });
/// const exampleUserPoolClient = new aws.cognito.UserPoolClient("example", {
///     name: "client",
///     userPoolId: example.id,
///     supportedIdentityProviders: std.compact({
///         input: ["COGNITO"],
///     }).then(invoke => invoke.result),
/// });
/// const exampleIdentityPool = new aws.cognito.IdentityPool("example", {
///     identityPoolName: "identity pool",
///     allowUnauthenticatedIdentities: false,
///     cognitoIdentityProviders: [{
///         clientId: exampleUserPoolClient.id,
///         providerName: example.endpoint,
///         serverSideTokenCheck: false,
///     }],
/// });
/// const exampleIdentityPoolProviderPrincipalTag = new aws.cognito.IdentityPoolProviderPrincipalTag("example", {
///     identityPoolId: exampleIdentityPool.id,
///     identityProviderName: example.endpoint,
///     useDefaults: false,
///     principalTags: {
///         test: "value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.cognito.UserPool("example",
///     name="user pool",
///     auto_verified_attributes=["email"])
/// example_user_pool_client = aws.cognito.UserPoolClient("example",
///     name="client",
///     user_pool_id=example.id,
///     supported_identity_providers=std.compact(input=["COGNITO"]).result)
/// example_identity_pool = aws.cognito.IdentityPool("example",
///     identity_pool_name="identity pool",
///     allow_unauthenticated_identities=False,
///     cognito_identity_providers=[{
///         "client_id": example_user_pool_client.id,
///         "provider_name": example.endpoint,
///         "server_side_token_check": False,
///     }])
/// example_identity_pool_provider_principal_tag = aws.cognito.IdentityPoolProviderPrincipalTag("example",
///     identity_pool_id=example_identity_pool.id,
///     identity_provider_name=example.endpoint,
///     use_defaults=False,
///     principal_tags={
///         "test": "value",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Cognito.UserPool("example", new()
///     {
///         Name = "user pool",
///         AutoVerifiedAttributes = new[]
///         {
///             "email",
///         },
///     });
///
///     var exampleUserPoolClient = new Aws.Cognito.UserPoolClient("example", new()
///     {
///         Name = "client",
///         UserPoolId = example.Id,
///         SupportedIdentityProviders = Std.Compact.Invoke(new()
///         {
///             Input = new[]
///             {
///                 "COGNITO",
///             },
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var exampleIdentityPool = new Aws.Cognito.IdentityPool("example", new()
///     {
///         IdentityPoolName = "identity pool",
///         AllowUnauthenticatedIdentities = false,
///         CognitoIdentityProviders = new[]
///         {
///             new Aws.Cognito.Inputs.IdentityPoolCognitoIdentityProviderArgs
///             {
///                 ClientId = exampleUserPoolClient.Id,
///                 ProviderName = example.Endpoint,
///                 ServerSideTokenCheck = false,
///             },
///         },
///     });
///
///     var exampleIdentityPoolProviderPrincipalTag = new Aws.Cognito.IdentityPoolProviderPrincipalTag("example", new()
///     {
///         IdentityPoolId = exampleIdentityPool.Id,
///         IdentityProviderName = example.Endpoint,
///         UseDefaults = false,
///         PrincipalTags =
///         {
///             { "test", "value" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cognito.NewUserPool(ctx, "example", &cognito.UserPoolArgs{
/// 			Name: pulumi.String("user pool"),
/// 			AutoVerifiedAttributes: pulumi.StringArray{
/// 				pulumi.String("email"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeCompact, err := std.Compact(ctx, &std.CompactArgs{
/// 			Input: []string{
/// 				"COGNITO",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUserPoolClient, err := cognito.NewUserPoolClient(ctx, "example", &cognito.UserPoolClientArgs{
/// 			Name:                       pulumi.String("client"),
/// 			UserPoolId:                 example.ID(),
/// 			SupportedIdentityProviders: pulumi.StringArray(invokeCompact.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleIdentityPool, err := cognito.NewIdentityPool(ctx, "example", &cognito.IdentityPoolArgs{
/// 			IdentityPoolName:               pulumi.String("identity pool"),
/// 			AllowUnauthenticatedIdentities: pulumi.Bool(false),
/// 			CognitoIdentityProviders: cognito.IdentityPoolCognitoIdentityProviderArray{
/// 				&cognito.IdentityPoolCognitoIdentityProviderArgs{
/// 					ClientId:             exampleUserPoolClient.ID(),
/// 					ProviderName:         example.Endpoint,
/// 					ServerSideTokenCheck: pulumi.Bool(false),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cognito.NewIdentityPoolProviderPrincipalTag(ctx, "example", &cognito.IdentityPoolProviderPrincipalTagArgs{
/// 			IdentityPoolId:       exampleIdentityPool.ID(),
/// 			IdentityProviderName: example.Endpoint,
/// 			UseDefaults:          pulumi.Bool(false),
/// 			PrincipalTags: pulumi.StringMap{
/// 				"test": pulumi.String("value"),
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
/// import com.pulumi.aws.cognito.UserPool;
/// import com.pulumi.aws.cognito.UserPoolArgs;
/// import com.pulumi.aws.cognito.UserPoolClient;
/// import com.pulumi.aws.cognito.UserPoolClientArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.CompactArgs;
/// import com.pulumi.aws.cognito.IdentityPool;
/// import com.pulumi.aws.cognito.IdentityPoolArgs;
/// import com.pulumi.aws.cognito.inputs.IdentityPoolCognitoIdentityProviderArgs;
/// import com.pulumi.aws.cognito.IdentityPoolProviderPrincipalTag;
/// import com.pulumi.aws.cognito.IdentityPoolProviderPrincipalTagArgs;
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
///         var example = new UserPool("example", UserPoolArgs.builder()
///             .name("user pool")
///             .autoVerifiedAttributes("email")
///             .build());
///
///         var exampleUserPoolClient = new UserPoolClient("exampleUserPoolClient", UserPoolClientArgs.builder()
///             .name("client")
///             .userPoolId(example.id())
///             .supportedIdentityProviders(StdFunctions.compact(CompactArgs.builder()
///                 .input("COGNITO")
///                 .build()).result())
///             .build());
///
///         var exampleIdentityPool = new IdentityPool("exampleIdentityPool", IdentityPoolArgs.builder()
///             .identityPoolName("identity pool")
///             .allowUnauthenticatedIdentities(false)
///             .cognitoIdentityProviders(IdentityPoolCognitoIdentityProviderArgs.builder()
///                 .clientId(exampleUserPoolClient.id())
///                 .providerName(example.endpoint())
///                 .serverSideTokenCheck(false)
///                 .build())
///             .build());
///
///         var exampleIdentityPoolProviderPrincipalTag = new IdentityPoolProviderPrincipalTag("exampleIdentityPoolProviderPrincipalTag", IdentityPoolProviderPrincipalTagArgs.builder()
///             .identityPoolId(exampleIdentityPool.id())
///             .identityProviderName(example.endpoint())
///             .useDefaults(false)
///             .principalTags(Map.of("test", "value"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cognito:UserPool
///     properties:
///       name: user pool
///       autoVerifiedAttributes:
///         - email
///   exampleUserPoolClient:
///     type: aws:cognito:UserPoolClient
///     name: example
///     properties:
///       name: client
///       userPoolId: ${example.id}
///       supportedIdentityProviders:
///         fn::invoke:
///           function: std:compact
///           arguments:
///             input:
///               - COGNITO
///           return: result
///   exampleIdentityPool:
///     type: aws:cognito:IdentityPool
///     name: example
///     properties:
///       identityPoolName: identity pool
///       allowUnauthenticatedIdentities: false
///       cognitoIdentityProviders:
///         - clientId: ${exampleUserPoolClient.id}
///           providerName: ${example.endpoint}
///           serverSideTokenCheck: false
///   exampleIdentityPoolProviderPrincipalTag:
///     type: aws:cognito:IdentityPoolProviderPrincipalTag
///     name: example
///     properties:
///       identityPoolId: ${exampleIdentityPool.id}
///       identityProviderName: ${example.endpoint}
///       useDefaults: false
///       principalTags:
///         test: value
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Cognito Identity Pool Roles Attachment using the Identity Pool ID and provider name. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/identityPoolProviderPrincipalTag:IdentityPoolProviderPrincipalTag example us-west-2_abc123:CorpAD
/// ```
class IdentityPoolProviderPrincipalTag extends pulumi.CustomResource {
  /// An identity pool ID.
  late final pulumi.Output<String> identityPoolId;
  /// The name of the identity provider.
  late final pulumi.Output<String> identityProviderName;
  /// String to string map of variables.
  late final pulumi.Output<Map<String, String>?> principalTags;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// use default (username and clientID) attribute mappings.
  late final pulumi.Output<bool?> useDefaults;

  /// Creates a new [IdentityPoolProviderPrincipalTag].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IdentityPoolProviderPrincipalTag]. {@macro pulumi_cognito_identity_pool_provider_principal_tag_identity_pool_provider_principal_tag_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IdentityPoolProviderPrincipalTag(
    String name, {
    IdentityPoolProviderPrincipalTagArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cognito/identityPoolProviderPrincipalTag:IdentityPoolProviderPrincipalTag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    identityPoolId = registerOutput<String>('identityPoolId');
    identityProviderName = registerOutput<String>('identityProviderName');
    principalTags = registerOutput<Map<String, String>?>('principalTags');
    region = registerOutput<String>('region');
    useDefaults = registerOutput<bool?>('useDefaults');
  }

  /// Gets an existing [IdentityPoolProviderPrincipalTag] resource's state with the given [name] and [id].
  static IdentityPoolProviderPrincipalTag get(
    String name,
    pulumi.Input<String> id, {
    IdentityPoolProviderPrincipalTagState? state,
  }) {
    return IdentityPoolProviderPrincipalTag._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IdentityPoolProviderPrincipalTag._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cognito/identityPoolProviderPrincipalTag:IdentityPoolProviderPrincipalTag',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    identityPoolId = registerOutput<String>('identityPoolId');
    identityProviderName = registerOutput<String>('identityProviderName');
    principalTags = registerOutput<Map<String, String>?>('principalTags');
    region = registerOutput<String>('region');
    useDefaults = registerOutput<bool?>('useDefaults');
  }
}
