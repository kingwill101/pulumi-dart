import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_pool_client_analytics_configuration.dart';
import 'user_pool_client_args.dart';
import 'user_pool_client_refresh_token_rotation.dart';
import 'user_pool_client_token_validity_units.dart';

/// Provides a Cognito User Pool Client resource.
///
/// To manage a User Pool Client created by another service, such as when [configuring an OpenSearch Domain to use Cognito authentication](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html),
/// use the `aws.cognito.ManagedUserPoolClient` resource instead.
///
/// ## Example Usage
///
/// ### Create a basic user pool client
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const pool = new aws.cognito.UserPool("pool", {name: "pool"});
/// const client = new aws.cognito.UserPoolClient("client", {
///     name: "client",
///     userPoolId: pool.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// pool = aws.cognito.UserPool("pool", name="pool")
/// client = aws.cognito.UserPoolClient("client",
///     name="client",
///     user_pool_id=pool.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pool = new Aws.Cognito.UserPool("pool", new()
///     {
///         Name = "pool",
///     });
///
///     var client = new Aws.Cognito.UserPoolClient("client", new()
///     {
///         Name = "client",
///         UserPoolId = pool.Id,
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
/// 		pool, err := cognito.NewUserPool(ctx, "pool", &cognito.UserPoolArgs{
/// 			Name: pulumi.String("pool"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cognito.NewUserPoolClient(ctx, "client", &cognito.UserPoolClientArgs{
/// 			Name:       pulumi.String("client"),
/// 			UserPoolId: pool.ID(),
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
///         var pool = new UserPool("pool", UserPoolArgs.builder()
///             .name("pool")
///             .build());
///
///         var client = new UserPoolClient("client", UserPoolClientArgs.builder()
///             .name("client")
///             .userPoolId(pool.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   client:
///     type: aws:cognito:UserPoolClient
///     properties:
///       name: client
///       userPoolId: ${pool.id}
///   pool:
///     type: aws:cognito:UserPool
///     properties:
///       name: pool
/// ```
///
///
/// ### Create a user pool client with no SRP authentication
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const pool = new aws.cognito.UserPool("pool", {name: "pool"});
/// const client = new aws.cognito.UserPoolClient("client", {
///     name: "client",
///     userPoolId: pool.id,
///     generateSecret: true,
///     explicitAuthFlows: ["ADMIN_NO_SRP_AUTH"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// pool = aws.cognito.UserPool("pool", name="pool")
/// client = aws.cognito.UserPoolClient("client",
///     name="client",
///     user_pool_id=pool.id,
///     generate_secret=True,
///     explicit_auth_flows=["ADMIN_NO_SRP_AUTH"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pool = new Aws.Cognito.UserPool("pool", new()
///     {
///         Name = "pool",
///     });
///
///     var client = new Aws.Cognito.UserPoolClient("client", new()
///     {
///         Name = "client",
///         UserPoolId = pool.Id,
///         GenerateSecret = true,
///         ExplicitAuthFlows = new[]
///         {
///             "ADMIN_NO_SRP_AUTH",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		pool, err := cognito.NewUserPool(ctx, "pool", &cognito.UserPoolArgs{
/// 			Name: pulumi.String("pool"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cognito.NewUserPoolClient(ctx, "client", &cognito.UserPoolClientArgs{
/// 			Name:           pulumi.String("client"),
/// 			UserPoolId:     pool.ID(),
/// 			GenerateSecret: pulumi.Bool(true),
/// 			ExplicitAuthFlows: pulumi.StringArray{
/// 				pulumi.String("ADMIN_NO_SRP_AUTH"),
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
///         var pool = new UserPool("pool", UserPoolArgs.builder()
///             .name("pool")
///             .build());
///
///         var client = new UserPoolClient("client", UserPoolClientArgs.builder()
///             .name("client")
///             .userPoolId(pool.id())
///             .generateSecret(true)
///             .explicitAuthFlows("ADMIN_NO_SRP_AUTH")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   client:
///     type: aws:cognito:UserPoolClient
///     properties:
///       name: client
///       userPoolId: ${pool.id}
///       generateSecret: true
///       explicitAuthFlows:
///         - ADMIN_NO_SRP_AUTH
///   pool:
///     type: aws:cognito:UserPool
///     properties:
///       name: pool
/// ```
///
///
/// ### Create a user pool client with pinpoint analytics
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testUserPool = new aws.cognito.UserPool("test", {name: "pool"});
/// const testApp = new aws.pinpoint.App("test", {name: "pinpoint"});
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["cognito-idp.amazonaws.com"],
///         }],
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const testRole = new aws.iam.Role("test", {
///     name: "role",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const testUserPoolClient = new aws.cognito.UserPoolClient("test", {
///     name: "pool_client",
///     userPoolId: testUserPool.id,
///     analyticsConfiguration: {
///         applicationId: testApp.applicationId,
///         externalId: "some_id",
///         roleArn: testRole.arn,
///         userDataShared: true,
///     },
/// });
/// const current = aws.getCallerIdentity({});
/// const test = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         effect: "Allow",
///         actions: [
///             "mobiletargeting:UpdateEndpoint",
///             "mobiletargeting:PutEvents",
///         ],
///         resources: [pulumi.all([current, testApp.applicationId]).apply(([current, applicationId]) => `arn:aws:mobiletargeting:*:${current.accountId}:apps/${applicationId}*`)],
///     }],
/// });
/// const testRolePolicy = new aws.iam.RolePolicy("test", {
///     name: "role_policy",
///     role: testRole.id,
///     policy: test.apply(test => test.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_user_pool = aws.cognito.UserPool("test", name="pool")
/// test_app = aws.pinpoint.App("test", name="pinpoint")
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["cognito-idp.amazonaws.com"],
///     }],
///     "actions": ["sts:AssumeRole"],
/// }])
/// test_role = aws.iam.Role("test",
///     name="role",
///     assume_role_policy=assume_role.json)
/// test_user_pool_client = aws.cognito.UserPoolClient("test",
///     name="pool_client",
///     user_pool_id=test_user_pool.id,
///     analytics_configuration={
///         "application_id": test_app.application_id,
///         "external_id": "some_id",
///         "role_arn": test_role.arn,
///         "user_data_shared": True,
///     })
/// current = aws.get_caller_identity()
/// test = aws.iam.get_policy_document_output(statements=[{
///     "effect": "Allow",
///     "actions": [
///         "mobiletargeting:UpdateEndpoint",
///         "mobiletargeting:PutEvents",
///     ],
///     "resources": [test_app.application_id.apply(lambda application_id: f"arn:aws:mobiletargeting:*:{current.account_id}:apps/{application_id}*")],
/// }])
/// test_role_policy = aws.iam.RolePolicy("test",
///     name="role_policy",
///     role=test_role.id,
///     policy=test.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testUserPool = new Aws.Cognito.UserPool("test", new()
///     {
///         Name = "pool",
///     });
///
///     var testApp = new Aws.Pinpoint.App("test", new()
///     {
///         Name = "pinpoint",
///     });
///
///     var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "cognito-idp.amazonaws.com",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///             },
///         },
///     });
///
///     var testRole = new Aws.Iam.Role("test", new()
///     {
///         Name = "role",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var testUserPoolClient = new Aws.Cognito.UserPoolClient("test", new()
///     {
///         Name = "pool_client",
///         UserPoolId = testUserPool.Id,
///         AnalyticsConfiguration = new Aws.Cognito.Inputs.UserPoolClientAnalyticsConfigurationArgs
///         {
///             ApplicationId = testApp.ApplicationId,
///             ExternalId = "some_id",
///             RoleArn = testRole.Arn,
///             UserDataShared = true,
///         },
///     });
///
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var test = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "mobiletargeting:UpdateEndpoint",
///                     "mobiletargeting:PutEvents",
///                 },
///                 Resources = new[]
///                 {
///                     $"arn:aws:mobiletargeting:*:{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:apps/{testApp.ApplicationId}*",
///                 },
///             },
///         },
///     });
///
///     var testRolePolicy = new Aws.Iam.RolePolicy("test", new()
///     {
///         Name = "role_policy",
///         Role = testRole.Id,
///         Policy = test.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pinpoint"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testUserPool, err := cognito.NewUserPool(ctx, "test", &cognito.UserPoolArgs{
/// 			Name: pulumi.String("pool"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testApp, err := pinpoint.NewApp(ctx, "test", &pinpoint.AppArgs{
/// 			Name: pulumi.String("pinpoint"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"cognito-idp.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testRole, err := iam.NewRole(ctx, "test", &iam.RoleArgs{
/// 			Name:             pulumi.String("role"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cognito.NewUserPoolClient(ctx, "test", &cognito.UserPoolClientArgs{
/// 			Name:       pulumi.String("pool_client"),
/// 			UserPoolId: testUserPool.ID(),
/// 			AnalyticsConfiguration: &cognito.UserPoolClientAnalyticsConfigurationArgs{
/// 				ApplicationId:  testApp.ApplicationId,
/// 				ExternalId:     pulumi.String("some_id"),
/// 				RoleArn:        testRole.Arn,
/// 				UserDataShared: pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("mobiletargeting:UpdateEndpoint"),
/// 						pulumi.String("mobiletargeting:PutEvents"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						testApp.ApplicationId.ApplyT(func(applicationId string) (string, error) {
/// 							return fmt.Sprintf("arn:aws:mobiletargeting:*:%v:apps/%v*", current.AccountId, applicationId), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = iam.NewRolePolicy(ctx, "test", &iam.RolePolicyArgs{
/// 			Name: pulumi.String("role_policy"),
/// 			Role: testRole.ID(),
/// 			Policy: pulumi.String(test.ApplyT(func(test iam.GetPolicyDocumentResult) (*string, error) {
/// 				return &test.Json, nil
/// 			}).(pulumi.StringPtrOutput)),
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
/// import com.pulumi.aws.pinpoint.App;
/// import com.pulumi.aws.pinpoint.AppArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.cognito.UserPoolClient;
/// import com.pulumi.aws.cognito.UserPoolClientArgs;
/// import com.pulumi.aws.cognito.inputs.UserPoolClientAnalyticsConfigurationArgs;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
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
///         var testUserPool = new UserPool("testUserPool", UserPoolArgs.builder()
///             .name("pool")
///             .build());
///
///         var testApp = new App("testApp", AppArgs.builder()
///             .name("pinpoint")
///             .build());
///
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("cognito-idp.amazonaws.com")
///                     .build())
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var testRole = new Role("testRole", RoleArgs.builder()
///             .name("role")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var testUserPoolClient = new UserPoolClient("testUserPoolClient", UserPoolClientArgs.builder()
///             .name("pool_client")
///             .userPoolId(testUserPool.id())
///             .analyticsConfiguration(UserPoolClientAnalyticsConfigurationArgs.builder()
///                 .applicationId(testApp.applicationId())
///                 .externalId("some_id")
///                 .roleArn(testRole.arn())
///                 .userDataShared(true)
///                 .build())
///             .build());
///
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var test = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .actions(
///                     "mobiletargeting:UpdateEndpoint",
///                     "mobiletargeting:PutEvents")
///                 .resources(testApp.applicationId().applyValue(_applicationId -> String.format("arn:aws:mobiletargeting:*:%s:apps/%s*", current.accountId(),_applicationId)))
///                 .build())
///             .build());
///
///         var testRolePolicy = new RolePolicy("testRolePolicy", RolePolicyArgs.builder()
///             .name("role_policy")
///             .role(testRole.id())
///             .policy(test.applyValue(_test -> _test.json()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testUserPoolClient:
///     type: aws:cognito:UserPoolClient
///     name: test
///     properties:
///       name: pool_client
///       userPoolId: ${testUserPool.id}
///       analyticsConfiguration:
///         applicationId: ${testApp.applicationId}
///         externalId: some_id
///         roleArn: ${testRole.arn}
///         userDataShared: true
///   testUserPool:
///     type: aws:cognito:UserPool
///     name: test
///     properties:
///       name: pool
///   testApp:
///     type: aws:pinpoint:App
///     name: test
///     properties:
///       name: pinpoint
///   testRole:
///     type: aws:iam:Role
///     name: test
///     properties:
///       name: role
///       assumeRolePolicy: ${assumeRole.json}
///   testRolePolicy:
///     type: aws:iam:RolePolicy
///     name: test
///     properties:
///       name: role_policy
///       role: ${testRole.id}
///       policy: ${test.json}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - cognito-idp.amazonaws.com
///             actions:
///               - sts:AssumeRole
///   test:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - mobiletargeting:UpdateEndpoint
///               - mobiletargeting:PutEvents
///             resources:
///               - arn:aws:mobiletargeting:*:${current.accountId}:apps/${testApp.applicationId}*
/// ```
///
///
/// ### Create a user pool client with Cognito as the identity provider
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const pool = new aws.cognito.UserPool("pool", {name: "pool"});
/// const userpoolClient = new aws.cognito.UserPoolClient("userpool_client", {
///     name: "client",
///     userPoolId: pool.id,
///     callbackUrls: ["https://example.com"],
///     allowedOauthFlowsUserPoolClient: true,
///     allowedOauthFlows: [
///         "code",
///         "implicit",
///     ],
///     allowedOauthScopes: [
///         "email",
///         "openid",
///     ],
///     supportedIdentityProviders: ["COGNITO"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// pool = aws.cognito.UserPool("pool", name="pool")
/// userpool_client = aws.cognito.UserPoolClient("userpool_client",
///     name="client",
///     user_pool_id=pool.id,
///     callback_urls=["https://example.com"],
///     allowed_oauth_flows_user_pool_client=True,
///     allowed_oauth_flows=[
///         "code",
///         "implicit",
///     ],
///     allowed_oauth_scopes=[
///         "email",
///         "openid",
///     ],
///     supported_identity_providers=["COGNITO"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pool = new Aws.Cognito.UserPool("pool", new()
///     {
///         Name = "pool",
///     });
///
///     var userpoolClient = new Aws.Cognito.UserPoolClient("userpool_client", new()
///     {
///         Name = "client",
///         UserPoolId = pool.Id,
///         CallbackUrls = new[]
///         {
///             "https://example.com",
///         },
///         AllowedOauthFlowsUserPoolClient = true,
///         AllowedOauthFlows = new[]
///         {
///             "code",
///             "implicit",
///         },
///         AllowedOauthScopes = new[]
///         {
///             "email",
///             "openid",
///         },
///         SupportedIdentityProviders = new[]
///         {
///             "COGNITO",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		pool, err := cognito.NewUserPool(ctx, "pool", &cognito.UserPoolArgs{
/// 			Name: pulumi.String("pool"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cognito.NewUserPoolClient(ctx, "userpool_client", &cognito.UserPoolClientArgs{
/// 			Name:       pulumi.String("client"),
/// 			UserPoolId: pool.ID(),
/// 			CallbackUrls: pulumi.StringArray{
/// 				pulumi.String("https://example.com"),
/// 			},
/// 			AllowedOauthFlowsUserPoolClient: pulumi.Bool(true),
/// 			AllowedOauthFlows: pulumi.StringArray{
/// 				pulumi.String("code"),
/// 				pulumi.String("implicit"),
/// 			},
/// 			AllowedOauthScopes: pulumi.StringArray{
/// 				pulumi.String("email"),
/// 				pulumi.String("openid"),
/// 			},
/// 			SupportedIdentityProviders: pulumi.StringArray{
/// 				pulumi.String("COGNITO"),
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
///         var pool = new UserPool("pool", UserPoolArgs.builder()
///             .name("pool")
///             .build());
///
///         var userpoolClient = new UserPoolClient("userpoolClient", UserPoolClientArgs.builder()
///             .name("client")
///             .userPoolId(pool.id())
///             .callbackUrls("https://example.com")
///             .allowedOauthFlowsUserPoolClient(true)
///             .allowedOauthFlows(
///                 "code",
///                 "implicit")
///             .allowedOauthScopes(
///                 "email",
///                 "openid")
///             .supportedIdentityProviders("COGNITO")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   userpoolClient:
///     type: aws:cognito:UserPoolClient
///     name: userpool_client
///     properties:
///       name: client
///       userPoolId: ${pool.id}
///       callbackUrls:
///         - https://example.com
///       allowedOauthFlowsUserPoolClient: true
///       allowedOauthFlows:
///         - code
///         - implicit
///       allowedOauthScopes:
///         - email
///         - openid
///       supportedIdentityProviders:
///         - COGNITO
///   pool:
///     type: aws:cognito:UserPool
///     properties:
///       name: pool
/// ```
///
///
/// ### Create a user pool client with refresh token rotation
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const pool = new aws.cognito.UserPool("pool", {name: "pool"});
/// const userpoolClient = new aws.cognito.UserPoolClient("userpool_client", {
///     name: "client",
///     userPoolId: pool.id,
///     explicitAuthFlows: ["ADMIN_NO_SRP_AUTH"],
///     refreshTokenRotation: {
///         feature: "ENABLED",
///         retryGracePeriodSeconds: 10,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// pool = aws.cognito.UserPool("pool", name="pool")
/// userpool_client = aws.cognito.UserPoolClient("userpool_client",
///     name="client",
///     user_pool_id=pool.id,
///     explicit_auth_flows=["ADMIN_NO_SRP_AUTH"],
///     refresh_token_rotation={
///         "feature": "ENABLED",
///         "retry_grace_period_seconds": 10,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pool = new Aws.Cognito.UserPool("pool", new()
///     {
///         Name = "pool",
///     });
///
///     var userpoolClient = new Aws.Cognito.UserPoolClient("userpool_client", new()
///     {
///         Name = "client",
///         UserPoolId = pool.Id,
///         ExplicitAuthFlows = new[]
///         {
///             "ADMIN_NO_SRP_AUTH",
///         },
///         RefreshTokenRotation = new Aws.Cognito.Inputs.UserPoolClientRefreshTokenRotationArgs
///         {
///             Feature = "ENABLED",
///             RetryGracePeriodSeconds = 10,
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		pool, err := cognito.NewUserPool(ctx, "pool", &cognito.UserPoolArgs{
/// 			Name: pulumi.String("pool"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cognito.NewUserPoolClient(ctx, "userpool_client", &cognito.UserPoolClientArgs{
/// 			Name:       pulumi.String("client"),
/// 			UserPoolId: pool.ID(),
/// 			ExplicitAuthFlows: pulumi.StringArray{
/// 				pulumi.String("ADMIN_NO_SRP_AUTH"),
/// 			},
/// 			RefreshTokenRotation: &cognito.UserPoolClientRefreshTokenRotationArgs{
/// 				Feature:                 pulumi.String("ENABLED"),
/// 				RetryGracePeriodSeconds: pulumi.Int(10),
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
/// import com.pulumi.aws.cognito.inputs.UserPoolClientRefreshTokenRotationArgs;
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
///         var pool = new UserPool("pool", UserPoolArgs.builder()
///             .name("pool")
///             .build());
///
///         var userpoolClient = new UserPoolClient("userpoolClient", UserPoolClientArgs.builder()
///             .name("client")
///             .userPoolId(pool.id())
///             .explicitAuthFlows("ADMIN_NO_SRP_AUTH")
///             .refreshTokenRotation(UserPoolClientRefreshTokenRotationArgs.builder()
///                 .feature("ENABLED")
///                 .retryGracePeriodSeconds(10)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   userpoolClient:
///     type: aws:cognito:UserPoolClient
///     name: userpool_client
///     properties:
///       name: client
///       userPoolId: ${pool.id}
///       explicitAuthFlows:
///         - ADMIN_NO_SRP_AUTH
///       refreshTokenRotation:
///         feature: ENABLED
///         retryGracePeriodSeconds: 10
///   pool:
///     type: aws:cognito:UserPool
///     properties:
///       name: pool
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Cognito User Pool Clients using the `id` of the Cognito User Pool, and the `id` of the Cognito User Pool Client. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/userPoolClient:UserPoolClient client us-west-2_abc123/3ho4ek12345678909nh3fmhpko
/// ```
class UserPoolClient extends pulumi.CustomResource {
  /// Time limit, between 5 minutes and 1 day, after which the access token is no longer valid and cannot be used. By default, the unit is hours. The unit can be overridden by a value in `token_validity_units.access_token`.
  late final pulumi.Output<int> accessTokenValidity;

  /// List of allowed OAuth flows, including `code`, `implicit`, and `client_credentials`. `allowed_oauth_flows_user_pool_client` must be set to `true` before you can configure this option.
  late final pulumi.Output<List<String>> allowedOauthFlows;

  /// Whether the client is allowed to use OAuth 2.0 features. `allowed_oauth_flows_user_pool_client` must be set to `true` before you can configure the following arguments: `callback_urls`, `logout_urls`, `allowed_oauth_scopes` and `allowed_oauth_flows`.
  late final pulumi.Output<bool> allowedOauthFlowsUserPoolClient;

  /// List of allowed OAuth scopes, including `phone`, `email`, `openid`, `profile`, and `aws.cognito.signin.user.admin`. `allowed_oauth_flows_user_pool_client` must be set to `true` before you can configure this option.
  late final pulumi.Output<List<String>> allowedOauthScopes;

  /// Configuration block for Amazon Pinpoint analytics that collects metrics for this user pool. See details below.
  late final pulumi.Output<UserPoolClientAnalyticsConfiguration?>
  analyticsConfiguration;

  /// Duration, in minutes, of the session token created by Amazon Cognito for each API request in an authentication flow. The session token must be responded to by the native user of the user pool before it expires. Valid values for `auth_session_validity` are between `3` and `15`, with a default value of `3`.
  late final pulumi.Output<int> authSessionValidity;

  /// List of allowed callback URLs for the identity providers. `allowed_oauth_flows_user_pool_client` must be set to `true` before you can configure this option.
  late final pulumi.Output<List<String>> callbackUrls;

  /// Client secret of the user pool client.
  late final pulumi.Output<String> clientSecret;

  /// Default redirect URI and must be included in the list of callback URLs.
  late final pulumi.Output<String> defaultRedirectUri;

  /// Enables the propagation of additional user context data.
  late final pulumi.Output<bool> enablePropagateAdditionalUserContextData;

  /// Enables or disables token revocation.
  late final pulumi.Output<bool> enableTokenRevocation;

  /// List of authentication flows. The available options include `ADMIN_NO_SRP_AUTH`, `CUSTOM_AUTH_FLOW_ONLY`, `USER_PASSWORD_AUTH`, `ALLOW_ADMIN_USER_PASSWORD_AUTH`, `ALLOW_CUSTOM_AUTH`, `ALLOW_USER_PASSWORD_AUTH`, `ALLOW_USER_SRP_AUTH`, `ALLOW_REFRESH_TOKEN_AUTH`, and `ALLOW_USER_AUTH`.
  late final pulumi.Output<List<String>> explicitAuthFlows;

  /// Boolean flag indicating whether an application secret should be generated.
  late final pulumi.Output<bool?> generateSecret;

  /// Time limit, between 5 minutes and 1 day, after which the ID token is no longer valid and cannot be used. By default, the unit is hours. The unit can be overridden by a value in `token_validity_units.id_token`.
  late final pulumi.Output<int> idTokenValidity;

  /// List of allowed logout URLs for the identity providers. `allowed_oauth_flows_user_pool_client` must be set to `true` before you can configure this option.
  late final pulumi.Output<List<String>> logoutUrls;

  /// Name of the application client.
  late final pulumi.Output<String> name;

  /// Setting determines the errors and responses returned by Cognito APIs when a user does not exist in the user pool during authentication, account confirmation, and password recovery.
  late final pulumi.Output<String> preventUserExistenceErrors;

  /// List of user pool attributes that the application client can read from.
  late final pulumi.Output<List<String>> readAttributes;

  /// A block that specifies the configuration of refresh token rotation. Detailed below.
  late final pulumi.Output<UserPoolClientRefreshTokenRotation?>
  refreshTokenRotation;

  /// Time limit, between 60 minutes and 10 years, after which the refresh token is no longer valid and cannot be used. By default, the unit is days. The unit can be overridden by a value in `token_validity_units.refresh_token`.
  late final pulumi.Output<int> refreshTokenValidity;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// List of provider names for the identity providers that are supported on this client. It uses the `provider_name` attribute of the `aws.cognito.IdentityProvider` resource(s), or the equivalent string(s).
  late final pulumi.Output<List<String>> supportedIdentityProviders;

  /// Configuration block for representing the validity times in units. See details below. Detailed below.
  late final pulumi.Output<UserPoolClientTokenValidityUnits?>
  tokenValidityUnits;

  /// User pool the client belongs to.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> userPoolId;

  /// List of user pool attributes that the application client can write to.
  late final pulumi.Output<List<String>> writeAttributes;

  /// Creates a new [UserPoolClient].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserPoolClient]. {@macro pulumi_cognito_user_pool_client_user_pool_client_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserPoolClient(
    String name, {
    UserPoolClientArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cognito/userPoolClient:UserPoolClient',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.accessTokenValidity = registerOutput<int>('accessTokenValidity');
    this.allowedOauthFlows = registerOutput<List<String>>('allowedOauthFlows');
    this.allowedOauthFlowsUserPoolClient = registerOutput<bool>(
      'allowedOauthFlowsUserPoolClient',
    );
    this.allowedOauthScopes = registerOutput<List<String>>(
      'allowedOauthScopes',
    );
    this.analyticsConfiguration =
        registerOutput<UserPoolClientAnalyticsConfiguration?>(
          'analyticsConfiguration',
        );
    this.authSessionValidity = registerOutput<int>('authSessionValidity');
    this.callbackUrls = registerOutput<List<String>>('callbackUrls');
    this.clientSecret = registerOutput<String>('clientSecret');
    this.defaultRedirectUri = registerOutput<String>('defaultRedirectUri');
    this.enablePropagateAdditionalUserContextData = registerOutput<bool>(
      'enablePropagateAdditionalUserContextData',
    );
    this.enableTokenRevocation = registerOutput<bool>('enableTokenRevocation');
    this.explicitAuthFlows = registerOutput<List<String>>('explicitAuthFlows');
    this.generateSecret = registerOutput<bool?>('generateSecret');
    this.idTokenValidity = registerOutput<int>('idTokenValidity');
    this.logoutUrls = registerOutput<List<String>>('logoutUrls');
    this.name = registerOutput<String>('name');
    this.preventUserExistenceErrors = registerOutput<String>(
      'preventUserExistenceErrors',
    );
    this.readAttributes = registerOutput<List<String>>('readAttributes');
    this.refreshTokenRotation =
        registerOutput<UserPoolClientRefreshTokenRotation?>(
          'refreshTokenRotation',
        );
    this.refreshTokenValidity = registerOutput<int>('refreshTokenValidity');
    this.region = registerOutput<String>('region');
    this.supportedIdentityProviders = registerOutput<List<String>>(
      'supportedIdentityProviders',
    );
    this.tokenValidityUnits = registerOutput<UserPoolClientTokenValidityUnits?>(
      'tokenValidityUnits',
    );
    this.userPoolId = registerOutput<String>('userPoolId');
    this.writeAttributes = registerOutput<List<String>>('writeAttributes');
  }
}
