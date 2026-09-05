import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_args.dart';
import 'user_state.dart';

/// Provides a Cognito User Resource.
///
/// ## Example Usage
///
/// ### Basic configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cognito.UserPool("example", {name: "MyExamplePool"});
/// const exampleUser = new aws.cognito.User("example", {
///     userPoolId: example.id,
///     username: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cognito.UserPool("example", name="MyExamplePool")
/// example_user = aws.cognito.User("example",
///     user_pool_id=example.id,
///     username="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Cognito.UserPool("example", new()
///     {
///         Name = "MyExamplePool",
///     });
///
///     var exampleUser = new Aws.Cognito.User("example", new()
///     {
///         UserPoolId = example.Id,
///         Username = "example",
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
/// 		example, err := cognito.NewUserPool(ctx, "example", &cognito.UserPoolArgs{
/// 			Name: pulumi.String("MyExamplePool"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cognito.NewUser(ctx, "example", &cognito.UserArgs{
/// 			UserPoolId: example.ID().ToIDOutput().ToStringOutput(),
/// 			Username:   pulumi.String("example"),
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
/// resource "aws_cognito_userpool" "example" {
///   name = "MyExamplePool"
/// }
/// resource "aws_cognito_user" "example" {
///   user_pool_id = aws_cognito_userpool.example.id
///   username     = "example"
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
/// import com.pulumi.aws.cognito.User;
/// import com.pulumi.aws.cognito.UserArgs;
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
///         var example = new UserPool("example", UserPoolArgs.builder()
///             .name("MyExamplePool")
///             .build());
///
///         var exampleUser = new User("exampleUser", UserArgs.builder()
///             .userPoolId(example.id())
///             .username("example")
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
///       name: MyExamplePool
///   exampleUser:
///     type: aws:cognito:User
///     name: example
///     properties:
///       userPoolId: ${example.id}
///       username: example
/// ```
///
///
/// ### Setting user attributes
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cognito.UserPool("example", {
///     schemas: [
///         {
///             name: "example",
///             attributeDataType: "Boolean",
///             mutable: false,
///             required: false,
///             developerOnlyAttribute: false,
///         },
///         {
///             stringAttributeConstraints: {},
///             name: "foo",
///             attributeDataType: "String",
///             mutable: false,
///             required: false,
///             developerOnlyAttribute: false,
///         },
///     ],
///     name: "mypool",
/// });
/// const exampleUser = new aws.cognito.User("example", {
///     userPoolId: example.id,
///     username: "example",
///     attributes: {
///         example: "true",
///         foo: "bar",
///         email: "no-reply@example.com",
///         email_verified: "true",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cognito.UserPool("example",
///     schemas=[
///         {
///             "name": "example",
///             "attribute_data_type": "Boolean",
///             "mutable": False,
///             "required": False,
///             "developer_only_attribute": False,
///         },
///         {
///             "string_attribute_constraints": {},
///             "name": "foo",
///             "attribute_data_type": "String",
///             "mutable": False,
///             "required": False,
///             "developer_only_attribute": False,
///         },
///     ],
///     name="mypool")
/// example_user = aws.cognito.User("example",
///     user_pool_id=example.id,
///     username="example",
///     attributes={
///         "example": "true",
///         "foo": "bar",
///         "email": "no-reply@example.com",
///         "email_verified": "true",
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
///     var example = new Aws.Cognito.UserPool("example", new()
///     {
///         Schemas = new[]
///         {
///             new Aws.Cognito.Inputs.UserPoolSchemaArgs
///             {
///                 Name = "example",
///                 AttributeDataType = "Boolean",
///                 Mutable = false,
///                 Required = false,
///                 DeveloperOnlyAttribute = false,
///             },
///             new Aws.Cognito.Inputs.UserPoolSchemaArgs
///             {
///                 StringAttributeConstraints = null,
///                 Name = "foo",
///                 AttributeDataType = "String",
///                 Mutable = false,
///                 Required = false,
///                 DeveloperOnlyAttribute = false,
///             },
///         },
///         Name = "mypool",
///     });
///
///     var exampleUser = new Aws.Cognito.User("example", new()
///     {
///         UserPoolId = example.Id,
///         Username = "example",
///         Attributes =
///         {
///             { "example", "true" },
///             { "foo", "bar" },
///             { "email", "no-reply@example.com" },
///             { "email_verified", "true" },
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
/// 		example, err := cognito.NewUserPool(ctx, "example", &cognito.UserPoolArgs{
/// 			Schemas: cognito.UserPoolSchemaArray{
/// 				&cognito.UserPoolSchemaArgs{
/// 					Name:                   pulumi.String("example"),
/// 					AttributeDataType:      pulumi.String("Boolean"),
/// 					Mutable:                pulumi.Bool(false),
/// 					Required:               pulumi.Bool(false),
/// 					DeveloperOnlyAttribute: pulumi.Bool(false),
/// 				},
/// 				&cognito.UserPoolSchemaArgs{
/// 					StringAttributeConstraints: &cognito.UserPoolSchemaStringAttributeConstraintsArgs{},
/// 					Name:                       pulumi.String("foo"),
/// 					AttributeDataType:          pulumi.String("String"),
/// 					Mutable:                    pulumi.Bool(false),
/// 					Required:                   pulumi.Bool(false),
/// 					DeveloperOnlyAttribute:     pulumi.Bool(false),
/// 				},
/// 			},
/// 			Name: pulumi.String("mypool"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cognito.NewUser(ctx, "example", &cognito.UserArgs{
/// 			UserPoolId: example.ID().ToIDOutput().ToStringOutput(),
/// 			Username:   pulumi.String("example"),
/// 			Attributes: pulumi.StringMap{
/// 				"example":        pulumi.String("true"),
/// 				"foo":            pulumi.String("bar"),
/// 				"email":          pulumi.String("no-reply@example.com"),
/// 				"email_verified": pulumi.String("true"),
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
/// resource "aws_cognito_userpool" "example" {
///   schemas {
///     name                     = "example"
///     attribute_data_type      = "Boolean"
///     mutable                  = false
///     required                 = false
///     developer_only_attribute = false
///   }
///   schemas {
///     string_attribute_constraints = {}
///     name                         = "foo"
///     attribute_data_type          = "String"
///     mutable                      = false
///     required                     = false
///     developer_only_attribute     = false
///   }
///   name = "mypool"
/// }
/// resource "aws_cognito_user" "example" {
///   user_pool_id = aws_cognito_userpool.example.id
///   username     = "example"
///   attributes = {
///     "example"        = true
///     "foo"            = "bar"
///     "email"          = "no-reply@example.com"
///     "email_verified" = true
///   }
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
/// import com.pulumi.aws.cognito.inputs.UserPoolSchemaArgs;
/// import com.pulumi.aws.cognito.inputs.UserPoolSchemaStringAttributeConstraintsArgs;
/// import com.pulumi.aws.cognito.User;
/// import com.pulumi.aws.cognito.UserArgs;
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
///         var example = new UserPool("example", UserPoolArgs.builder()
///             .schemas(
///                 UserPoolSchemaArgs.builder()
///                     .name("example")
///                     .attributeDataType("Boolean")
///                     .mutable(false)
///                     .required(false)
///                     .developerOnlyAttribute(false)
///                     .build(),
///                 UserPoolSchemaArgs.builder()
///                     .stringAttributeConstraints(UserPoolSchemaStringAttributeConstraintsArgs.builder()
///                         .build())
///                     .name("foo")
///                     .attributeDataType("String")
///                     .mutable(false)
///                     .required(false)
///                     .developerOnlyAttribute(false)
///                     .build())
///             .name("mypool")
///             .build());
///
///         var exampleUser = new User("exampleUser", UserArgs.builder()
///             .userPoolId(example.id())
///             .username("example")
///             .attributes(Map.ofEntries(
///                 Map.entry("example", "true"),
///                 Map.entry("foo", "bar"),
///                 Map.entry("email", "no-reply@example.com"),
///                 Map.entry("email_verified", "true")
///             ))
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
///       schemas:
///         - name: example
///           attributeDataType: Boolean
///           mutable: false
///           required: false
///           developerOnlyAttribute: false
///         - stringAttributeConstraints: {}
///           name: foo
///           attributeDataType: String
///           mutable: false
///           required: false
///           developerOnlyAttribute: false
///       name: mypool
///   exampleUser:
///     type: aws:cognito:User
///     name: example
///     properties:
///       userPoolId: ${example.id}
///       username: example
///       attributes:
///         example: true
///         foo: bar
///         email: no-reply@example.com
///         email_verified: true
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Cognito User using the `userPoolId`/`name` attributes concatenated. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/user:User user us-east-1_vG78M4goG/user
/// ```
class User extends pulumi.CustomResource {
  /// A map that contains user attributes and attribute values to be set for the user.
  late final pulumi.Output<Map<String, String>?> attributes;
  /// A map of custom key-value pairs that you can provide as input for any custom workflows that user creation triggers. Amazon Cognito does not store the `clientMetadata` value. This data is available only to Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration does not include triggers, the ClientMetadata parameter serves no purpose. For more information, see [Customizing User Pool Workflows with Lambda Triggers](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html).
  late final pulumi.Output<Map<String, String>?> clientMetadata;
  late final pulumi.Output<String> creationDate;
  /// A list of mediums to the welcome message will be sent through. Allowed values are `EMAIL` and `SMS`. If it's provided, make sure you have also specified `email` attribute for the `EMAIL` medium and `phoneNumber` for the `SMS`. More than one value can be specified. Amazon Cognito does not store the `desiredDeliveryMediums` value. Defaults to `["SMS"]`.
  late final pulumi.Output<List<String>?> desiredDeliveryMediums;
  /// Specifies whether the user should be enabled after creation. The welcome message will be sent regardless of the `enabled` value. The behavior can be changed with `messageAction` argument. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// If this parameter is set to True and the `phoneNumber` or `email` address specified in the `attributes` parameter already exists as an alias with a different user, Amazon Cognito will migrate the alias from the previous user to the newly created user. The previous user will no longer be able to log in using that alias. Amazon Cognito does not store the `forceAliasCreation` value. Defaults to `false`.
  late final pulumi.Output<bool?> forceAliasCreation;
  late final pulumi.Output<String> lastModifiedDate;
  /// Set to `RESEND` to resend the invitation message to a user that already exists and reset the expiration limit on the user's account. Set to `SUPPRESS` to suppress sending the message. Only one value can be specified. Amazon Cognito does not store the `messageAction` value.
  late final pulumi.Output<String?> messageAction;
  late final pulumi.Output<List<String>> mfaSettingLists;
  /// The user's permanent password. This password must conform to the password policy specified by user pool the user belongs to. The welcome message always contains only `temporaryPassword` value. You can suppress sending the welcome message with the `messageAction` argument. Amazon Cognito does not store the `password` value. Conflicts with `temporaryPassword`.
  late final pulumi.Output<String?> password;
  late final pulumi.Output<String> preferredMfaSetting;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// current user status.
  late final pulumi.Output<String> status;
  /// unique user id that is never reassignable to another user.
  late final pulumi.Output<String> sub;
  /// The user's temporary password. Conflicts with `password`.
  late final pulumi.Output<String?> temporaryPassword;
  /// The user pool ID for the user pool where the user will be created.
  late final pulumi.Output<String> userPoolId;
  /// The username for the user. Must be unique within the user pool. Must be a UTF-8 string between 1 and 128 characters. After the user is created, the username cannot be changed.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> username;
  /// The user's validation data. This is an array of name-value pairs that contain user attributes and attribute values that you can use for custom validation, such as restricting the types of user accounts that can be registered. Amazon Cognito does not store the `validationData` value. For more information, see [Customizing User Pool Workflows with Lambda Triggers](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html).
  ///
  /// &gt; **NOTE:** Clearing `password` or `temporaryPassword` does not reset user's password in Cognito.
  late final pulumi.Output<Map<String, String>?> validationData;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_cognito_user_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(
    String name, {
    UserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cognito/user:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
          additionalSecretOutputs: const ['password', 'temporaryPassword'],
        ) {
    attributes = registerOutput<Map<String, String>?>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    clientMetadata = registerOutput<Map<String, String>?>('clientMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    creationDate = registerOutput<String>('creationDate');
    desiredDeliveryMediums = registerOutput<List<String>?>('desiredDeliveryMediums', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    enabled = registerOutput<bool?>('enabled');
    forceAliasCreation = registerOutput<bool?>('forceAliasCreation');
    lastModifiedDate = registerOutput<String>('lastModifiedDate');
    messageAction = registerOutput<String?>('messageAction');
    mfaSettingLists = registerOutput<List<String>>('mfaSettingLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    password = registerOutput<String?>('password', isSecret: true);
    preferredMfaSetting = registerOutput<String>('preferredMfaSetting');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    sub = registerOutput<String>('sub');
    temporaryPassword = registerOutput<String?>('temporaryPassword', isSecret: true);
    userPoolId = registerOutput<String>('userPoolId');
    username = registerOutput<String>('username');
    validationData = registerOutput<Map<String, String>?>('validationData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [User] resource's state with the given [name] and [id].
  static User get(
    String name,
    pulumi.Input<String> id, {
    UserState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return User._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  User._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cognito/user:User',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attributes = registerOutput<Map<String, String>?>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    clientMetadata = registerOutput<Map<String, String>?>('clientMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    creationDate = registerOutput<String>('creationDate');
    desiredDeliveryMediums = registerOutput<List<String>?>('desiredDeliveryMediums', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    enabled = registerOutput<bool?>('enabled');
    forceAliasCreation = registerOutput<bool?>('forceAliasCreation');
    lastModifiedDate = registerOutput<String>('lastModifiedDate');
    messageAction = registerOutput<String?>('messageAction');
    mfaSettingLists = registerOutput<List<String>>('mfaSettingLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    password = registerOutput<String?>('password', isSecret: true);
    preferredMfaSetting = registerOutput<String>('preferredMfaSetting');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    sub = registerOutput<String>('sub');
    temporaryPassword = registerOutput<String?>('temporaryPassword', isSecret: true);
    userPoolId = registerOutput<String>('userPoolId');
    username = registerOutput<String>('username');
    validationData = registerOutput<Map<String, String>?>('validationData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [User] resource.
  User.reference(String urn)
    : super(
        'aws:cognito/user:User',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['password', 'temporaryPassword'],
        isResourceReference: true,
      ) {
    attributes = registerOutput<Map<String, String>?>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    clientMetadata = registerOutput<Map<String, String>?>('clientMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    creationDate = registerOutput<String>('creationDate');
    desiredDeliveryMediums = registerOutput<List<String>?>('desiredDeliveryMediums', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    enabled = registerOutput<bool?>('enabled');
    forceAliasCreation = registerOutput<bool?>('forceAliasCreation');
    lastModifiedDate = registerOutput<String>('lastModifiedDate');
    messageAction = registerOutput<String?>('messageAction');
    mfaSettingLists = registerOutput<List<String>>('mfaSettingLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    password = registerOutput<String?>('password', isSecret: true);
    preferredMfaSetting = registerOutput<String>('preferredMfaSetting');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    sub = registerOutput<String>('sub');
    temporaryPassword = registerOutput<String?>('temporaryPassword', isSecret: true);
    userPoolId = registerOutput<String>('userPoolId');
    username = registerOutput<String>('username');
    validationData = registerOutput<Map<String, String>?>('validationData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
