import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_source_args.dart';
import 'identity_source_configuration.dart';
import 'identity_source_state.dart';

/// Resource for managing an AWS Verified Permissions Identity Source.
///
/// ## Example Usage
///
/// ### Cognito User Pool Configuration Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.verifiedpermissions.PolicyStore("example", {validationSettings: {
///     mode: "STRICT",
/// }});
/// const exampleUserPool = new aws.cognito.UserPool("example", {name: "example"});
/// const exampleUserPoolClient = new aws.cognito.UserPoolClient("example", {
///     name: "example",
///     userPoolId: exampleUserPool.id,
///     explicitAuthFlows: ["ADMIN_NO_SRP_AUTH"],
/// });
/// const exampleIdentitySource = new aws.verifiedpermissions.IdentitySource("example", {
///     configuration: {
///         cognitoUserPoolConfiguration: {
///             userPoolArn: exampleUserPool.arn,
///             clientIds: [exampleUserPoolClient.id],
///         },
///     },
///     policyStoreId: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.verifiedpermissions.PolicyStore("example", validation_settings={
///     "mode": "STRICT",
/// })
/// example_user_pool = aws.cognito.UserPool("example", name="example")
/// example_user_pool_client = aws.cognito.UserPoolClient("example",
///     name="example",
///     user_pool_id=example_user_pool.id,
///     explicit_auth_flows=["ADMIN_NO_SRP_AUTH"])
/// example_identity_source = aws.verifiedpermissions.IdentitySource("example",
///     configuration={
///         "cognito_user_pool_configuration": {
///             "user_pool_arn": example_user_pool.arn,
///             "client_ids": [example_user_pool_client.id],
///         },
///     },
///     policy_store_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VerifiedPermissions.PolicyStore("example", new()
///     {
///         ValidationSettings = new Aws.VerifiedPermissions.Inputs.PolicyStoreValidationSettingsArgs
///         {
///             Mode = "STRICT",
///         },
///     });
///
///     var exampleUserPool = new Aws.Cognito.UserPool("example", new()
///     {
///         Name = "example",
///     });
///
///     var exampleUserPoolClient = new Aws.Cognito.UserPoolClient("example", new()
///     {
///         Name = "example",
///         UserPoolId = exampleUserPool.Id,
///         ExplicitAuthFlows = new[]
///         {
///             "ADMIN_NO_SRP_AUTH",
///         },
///     });
///
///     var exampleIdentitySource = new Aws.VerifiedPermissions.IdentitySource("example", new()
///     {
///         Configuration = new Aws.VerifiedPermissions.Inputs.IdentitySourceConfigurationArgs
///         {
///             CognitoUserPoolConfiguration = new Aws.VerifiedPermissions.Inputs.IdentitySourceConfigurationCognitoUserPoolConfigurationArgs
///             {
///                 UserPoolArn = exampleUserPool.Arn,
///                 ClientIds = new[]
///                 {
///                     exampleUserPoolClient.Id,
///                 },
///             },
///         },
///         PolicyStoreId = example.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/verifiedpermissions"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := verifiedpermissions.NewPolicyStore(ctx, "example", &verifiedpermissions.PolicyStoreArgs{
/// 			ValidationSettings: &verifiedpermissions.PolicyStoreValidationSettingsArgs{
/// 				Mode: pulumi.String("STRICT"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUserPool, err := cognito.NewUserPool(ctx, "example", &cognito.UserPoolArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUserPoolClient, err := cognito.NewUserPoolClient(ctx, "example", &cognito.UserPoolClientArgs{
/// 			Name:       pulumi.String("example"),
/// 			UserPoolId: exampleUserPool.ID().ToIDOutput().ToStringOutput(),
/// 			ExplicitAuthFlows: pulumi.StringArray{
/// 				pulumi.String("ADMIN_NO_SRP_AUTH"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = verifiedpermissions.NewIdentitySource(ctx, "example", &verifiedpermissions.IdentitySourceArgs{
/// 			Configuration: &verifiedpermissions.IdentitySourceConfigurationArgs{
/// 				CognitoUserPoolConfiguration: &verifiedpermissions.IdentitySourceConfigurationCognitoUserPoolConfigurationArgs{
/// 					UserPoolArn: exampleUserPool.Arn,
/// 					ClientIds: pulumi.StringArray{
/// 						exampleUserPoolClient.ID().ToIDOutput().ToStringOutput(),
/// 					},
/// 				},
/// 			},
/// 			PolicyStoreId: example.ID().ToIDOutput().ToStringOutput(),
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
/// resource "aws_verifiedpermissions_policystore" "example" {
///   validation_settings = {
///     mode = "STRICT"
///   }
/// }
/// resource "aws_cognito_userpool" "example" {
///   name = "example"
/// }
/// resource "aws_cognito_userpoolclient" "example" {
///   name                = "example"
///   user_pool_id        = aws_cognito_userpool.example.id
///   explicit_auth_flows = ["ADMIN_NO_SRP_AUTH"]
/// }
/// resource "aws_verifiedpermissions_identitysource" "example" {
///   configuration = {
///     cognito_user_pool_configuration = {
///       user_pool_arn = aws_cognito_userpool.example.arn
///       client_ids    = [aws_cognito_userpoolclient.example.id]
///     }
///   }
///   policy_store_id = aws_verifiedpermissions_policystore.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.verifiedpermissions.PolicyStore;
/// import com.pulumi.aws.verifiedpermissions.PolicyStoreArgs;
/// import com.pulumi.aws.verifiedpermissions.inputs.PolicyStoreValidationSettingsArgs;
/// import com.pulumi.aws.cognito.UserPool;
/// import com.pulumi.aws.cognito.UserPoolArgs;
/// import com.pulumi.aws.cognito.UserPoolClient;
/// import com.pulumi.aws.cognito.UserPoolClientArgs;
/// import com.pulumi.aws.verifiedpermissions.IdentitySource;
/// import com.pulumi.aws.verifiedpermissions.IdentitySourceArgs;
/// import com.pulumi.aws.verifiedpermissions.inputs.IdentitySourceConfigurationArgs;
/// import com.pulumi.aws.verifiedpermissions.inputs.IdentitySourceConfigurationCognitoUserPoolConfigurationArgs;
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
///         var example = new PolicyStore("example", PolicyStoreArgs.builder()
///             .validationSettings(PolicyStoreValidationSettingsArgs.builder()
///                 .mode("STRICT")
///                 .build())
///             .build());
///
///         var exampleUserPool = new UserPool("exampleUserPool", UserPoolArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleUserPoolClient = new UserPoolClient("exampleUserPoolClient", UserPoolClientArgs.builder()
///             .name("example")
///             .userPoolId(exampleUserPool.id())
///             .explicitAuthFlows("ADMIN_NO_SRP_AUTH")
///             .build());
///
///         var exampleIdentitySource = new IdentitySource("exampleIdentitySource", IdentitySourceArgs.builder()
///             .configuration(IdentitySourceConfigurationArgs.builder()
///                 .cognitoUserPoolConfiguration(IdentitySourceConfigurationCognitoUserPoolConfigurationArgs.builder()
///                     .userPoolArn(exampleUserPool.arn())
///                     .clientIds(exampleUserPoolClient.id())
///                     .build())
///                 .build())
///             .policyStoreId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:verifiedpermissions:PolicyStore
///     properties:
///       validationSettings:
///         mode: STRICT
///   exampleUserPool:
///     type: aws:cognito:UserPool
///     name: example
///     properties:
///       name: example
///   exampleUserPoolClient:
///     type: aws:cognito:UserPoolClient
///     name: example
///     properties:
///       name: example
///       userPoolId: ${exampleUserPool.id}
///       explicitAuthFlows:
///         - ADMIN_NO_SRP_AUTH
///   exampleIdentitySource:
///     type: aws:verifiedpermissions:IdentitySource
///     name: example
///     properties:
///       configuration:
///         cognitoUserPoolConfiguration:
///           userPoolArn: ${exampleUserPool.arn}
///           clientIds:
///             - ${exampleUserPoolClient.id}
///       policyStoreId: ${example.id}
/// ```
///
///
/// ### OpenID Connect Configuration Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.verifiedpermissions.PolicyStore("example", {validationSettings: {
///     mode: "STRICT",
/// }});
/// const exampleIdentitySource = new aws.verifiedpermissions.IdentitySource("example", {
///     configuration: {
///         openIdConnectConfiguration: {
///             tokenSelection: {
///                 accessTokenOnly: {
///                     audiences: ["https://myapp.example.com"],
///                     principalIdClaim: "sub",
///                 },
///             },
///             groupConfiguration: {
///                 groupClaim: "groups",
///                 groupEntityType: "MyCorp::UserGroup",
///             },
///             issuer: "https://auth.example.com",
///             entityIdPrefix: "MyOIDCProvider",
///         },
///     },
///     policyStoreId: example.id,
///     principalEntityType: "MyCorp::User",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.verifiedpermissions.PolicyStore("example", validation_settings={
///     "mode": "STRICT",
/// })
/// example_identity_source = aws.verifiedpermissions.IdentitySource("example",
///     configuration={
///         "open_id_connect_configuration": {
///             "token_selection": {
///                 "access_token_only": {
///                     "audiences": ["https://myapp.example.com"],
///                     "principal_id_claim": "sub",
///                 },
///             },
///             "group_configuration": {
///                 "group_claim": "groups",
///                 "group_entity_type": "MyCorp::UserGroup",
///             },
///             "issuer": "https://auth.example.com",
///             "entity_id_prefix": "MyOIDCProvider",
///         },
///     },
///     policy_store_id=example.id,
///     principal_entity_type="MyCorp::User")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VerifiedPermissions.PolicyStore("example", new()
///     {
///         ValidationSettings = new Aws.VerifiedPermissions.Inputs.PolicyStoreValidationSettingsArgs
///         {
///             Mode = "STRICT",
///         },
///     });
///
///     var exampleIdentitySource = new Aws.VerifiedPermissions.IdentitySource("example", new()
///     {
///         Configuration = new Aws.VerifiedPermissions.Inputs.IdentitySourceConfigurationArgs
///         {
///             OpenIdConnectConfiguration = new Aws.VerifiedPermissions.Inputs.IdentitySourceConfigurationOpenIdConnectConfigurationArgs
///             {
///                 TokenSelection = new Aws.VerifiedPermissions.Inputs.IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionArgs
///                 {
///                     AccessTokenOnly = new Aws.VerifiedPermissions.Inputs.IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionAccessTokenOnlyArgs
///                     {
///                         Audiences = new[]
///                         {
///                             "https://myapp.example.com",
///                         },
///                         PrincipalIdClaim = "sub",
///                     },
///                 },
///                 GroupConfiguration = new Aws.VerifiedPermissions.Inputs.IdentitySourceConfigurationOpenIdConnectConfigurationGroupConfigurationArgs
///                 {
///                     GroupClaim = "groups",
///                     GroupEntityType = "MyCorp::UserGroup",
///                 },
///                 Issuer = "https://auth.example.com",
///                 EntityIdPrefix = "MyOIDCProvider",
///             },
///         },
///         PolicyStoreId = example.Id,
///         PrincipalEntityType = "MyCorp::User",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/verifiedpermissions"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := verifiedpermissions.NewPolicyStore(ctx, "example", &verifiedpermissions.PolicyStoreArgs{
/// 			ValidationSettings: &verifiedpermissions.PolicyStoreValidationSettingsArgs{
/// 				Mode: pulumi.String("STRICT"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = verifiedpermissions.NewIdentitySource(ctx, "example", &verifiedpermissions.IdentitySourceArgs{
/// 			Configuration: &verifiedpermissions.IdentitySourceConfigurationArgs{
/// 				OpenIdConnectConfiguration: &verifiedpermissions.IdentitySourceConfigurationOpenIdConnectConfigurationArgs{
/// 					TokenSelection: &verifiedpermissions.IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionArgs{
/// 						AccessTokenOnly: &verifiedpermissions.IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionAccessTokenOnlyArgs{
/// 							Audiences: pulumi.StringArray{
/// 								pulumi.String("https://myapp.example.com"),
/// 							},
/// 							PrincipalIdClaim: pulumi.String("sub"),
/// 						},
/// 					},
/// 					GroupConfiguration: &verifiedpermissions.IdentitySourceConfigurationOpenIdConnectConfigurationGroupConfigurationArgs{
/// 						GroupClaim:      pulumi.String("groups"),
/// 						GroupEntityType: pulumi.String("MyCorp::UserGroup"),
/// 					},
/// 					Issuer:         pulumi.String("https://auth.example.com"),
/// 					EntityIdPrefix: pulumi.String("MyOIDCProvider"),
/// 				},
/// 			},
/// 			PolicyStoreId:       example.ID().ToIDOutput().ToStringOutput(),
/// 			PrincipalEntityType: pulumi.String("MyCorp::User"),
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
/// resource "aws_verifiedpermissions_policystore" "example" {
///   validation_settings = {
///     mode = "STRICT"
///   }
/// }
/// resource "aws_verifiedpermissions_identitysource" "example" {
///   configuration = {
///     open_id_connect_configuration = {
///       token_selection = {
///         access_token_only = {
///           audiences          = ["https://myapp.example.com"]
///           principal_id_claim = "sub"
///         }
///       }
///       group_configuration = {
///         group_claim       = "groups"
///         group_entity_type = "MyCorp::UserGroup"
///       }
///       issuer           = "https://auth.example.com"
///       entity_id_prefix = "MyOIDCProvider"
///     }
///   }
///   policy_store_id       = aws_verifiedpermissions_policystore.example.id
///   principal_entity_type = "MyCorp::User"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.verifiedpermissions.PolicyStore;
/// import com.pulumi.aws.verifiedpermissions.PolicyStoreArgs;
/// import com.pulumi.aws.verifiedpermissions.inputs.PolicyStoreValidationSettingsArgs;
/// import com.pulumi.aws.verifiedpermissions.IdentitySource;
/// import com.pulumi.aws.verifiedpermissions.IdentitySourceArgs;
/// import com.pulumi.aws.verifiedpermissions.inputs.IdentitySourceConfigurationArgs;
/// import com.pulumi.aws.verifiedpermissions.inputs.IdentitySourceConfigurationOpenIdConnectConfigurationArgs;
/// import com.pulumi.aws.verifiedpermissions.inputs.IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionArgs;
/// import com.pulumi.aws.verifiedpermissions.inputs.IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionAccessTokenOnlyArgs;
/// import com.pulumi.aws.verifiedpermissions.inputs.IdentitySourceConfigurationOpenIdConnectConfigurationGroupConfigurationArgs;
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
///         var example = new PolicyStore("example", PolicyStoreArgs.builder()
///             .validationSettings(PolicyStoreValidationSettingsArgs.builder()
///                 .mode("STRICT")
///                 .build())
///             .build());
///
///         var exampleIdentitySource = new IdentitySource("exampleIdentitySource", IdentitySourceArgs.builder()
///             .configuration(IdentitySourceConfigurationArgs.builder()
///                 .openIdConnectConfiguration(IdentitySourceConfigurationOpenIdConnectConfigurationArgs.builder()
///                     .tokenSelection(IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionArgs.builder()
///                         .accessTokenOnly(IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionAccessTokenOnlyArgs.builder()
///                             .audiences("https://myapp.example.com")
///                             .principalIdClaim("sub")
///                             .build())
///                         .build())
///                     .groupConfiguration(IdentitySourceConfigurationOpenIdConnectConfigurationGroupConfigurationArgs.builder()
///                         .groupClaim("groups")
///                         .groupEntityType("MyCorp::UserGroup")
///                         .build())
///                     .issuer("https://auth.example.com")
///                     .entityIdPrefix("MyOIDCProvider")
///                     .build())
///                 .build())
///             .policyStoreId(example.id())
///             .principalEntityType("MyCorp::User")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:verifiedpermissions:PolicyStore
///     properties:
///       validationSettings:
///         mode: STRICT
///   exampleIdentitySource:
///     type: aws:verifiedpermissions:IdentitySource
///     name: example
///     properties:
///       configuration:
///         openIdConnectConfiguration:
///           tokenSelection:
///             accessTokenOnly:
///               audiences:
///                 - https://myapp.example.com
///               principalIdClaim: sub
///           groupConfiguration:
///             groupClaim: groups
///             groupEntityType: MyCorp::UserGroup
///           issuer: https://auth.example.com
///           entityIdPrefix: MyOIDCProvider
///       policyStoreId: ${example.id}
///       principalEntityType: MyCorp::User
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Verified Permissions Identity Source using the `policy_store_id:identity_source_id`. For example:
///
/// ```sh
/// $ pulumi import aws:verifiedpermissions/identitySource:IdentitySource example policy-store-id-12345678:identity-source-id-12345678
/// ```
class IdentitySource extends pulumi.CustomResource {
  /// Specifies the details required to communicate with the identity provider (IdP) associated with this identity source. See Configuration below.
  late final pulumi.Output<IdentitySourceConfiguration> configuration;
  /// Specifies the ID of the policy store in which you want to store this identity source.
  late final pulumi.Output<String> policyStoreId;
  /// Specifies the namespace and data type of the principals generated for identities authenticated by the new identity source.
  late final pulumi.Output<String> principalEntityType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [IdentitySource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IdentitySource]. {@macro pulumi_verifiedpermissions_identity_source_identity_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IdentitySource(
    String name, {
    IdentitySourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:verifiedpermissions/identitySource:IdentitySource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    configuration = registerOutput<IdentitySourceConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentitySourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    policyStoreId = registerOutput<String>('policyStoreId');
    principalEntityType = registerOutput<String>('principalEntityType');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [IdentitySource] resource's state with the given [name] and [id].
  static IdentitySource get(
    String name,
    pulumi.Input<String> id, {
    IdentitySourceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return IdentitySource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  IdentitySource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:verifiedpermissions/identitySource:IdentitySource',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configuration = registerOutput<IdentitySourceConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentitySourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    policyStoreId = registerOutput<String>('policyStoreId');
    principalEntityType = registerOutput<String>('principalEntityType');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [IdentitySource] resource.
  IdentitySource.reference(String urn)
    : super(
        'aws:verifiedpermissions/identitySource:IdentitySource',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    configuration = registerOutput<IdentitySourceConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentitySourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    policyStoreId = registerOutput<String>('policyStoreId');
    principalEntityType = registerOutput<String>('principalEntityType');
    region = registerOutput<String>('region');
  }
}
