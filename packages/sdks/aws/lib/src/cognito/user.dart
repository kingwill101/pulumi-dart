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
/// 			UserPoolId: example.ID(),
/// 			Username:   pulumi.String("example"),
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
/// import com.pulumi.aws.cognito.User;
/// import com.pulumi.aws.cognito.UserArgs;
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
///     name: "mypool",
///     schemas: [
///         {
///             name: "example",
///             attributeDataType: "Boolean",
///             mutable: false,
///             required: false,
///             developerOnlyAttribute: false,
///         },
///         {
///             name: "foo",
///             attributeDataType: "String",
///             mutable: false,
///             required: false,
///             developerOnlyAttribute: false,
///             stringAttributeConstraints: {},
///         },
///     ],
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
///     name="mypool",
///     schemas=[
///         {
///             "name": "example",
///             "attribute_data_type": "Boolean",
///             "mutable": False,
///             "required": False,
///             "developer_only_attribute": False,
///         },
///         {
///             "name": "foo",
///             "attribute_data_type": "String",
///             "mutable": False,
///             "required": False,
///             "developer_only_attribute": False,
///             "string_attribute_constraints": {},
///         },
///     ])
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
///         Name = "mypool",
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
///                 Name = "foo",
///                 AttributeDataType = "String",
///                 Mutable = false,
///                 Required = false,
///                 DeveloperOnlyAttribute = false,
///                 StringAttributeConstraints = null,
///             },
///         },
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
/// 			Name: pulumi.String("mypool"),
/// 			Schemas: cognito.UserPoolSchemaArray{
/// 				&cognito.UserPoolSchemaArgs{
/// 					Name:                   pulumi.String("example"),
/// 					AttributeDataType:      pulumi.String("Boolean"),
/// 					Mutable:                pulumi.Bool(false),
/// 					Required:               pulumi.Bool(false),
/// 					DeveloperOnlyAttribute: pulumi.Bool(false),
/// 				},
/// 				&cognito.UserPoolSchemaArgs{
/// 					Name:                       pulumi.String("foo"),
/// 					AttributeDataType:          pulumi.String("String"),
/// 					Mutable:                    pulumi.Bool(false),
/// 					Required:                   pulumi.Bool(false),
/// 					DeveloperOnlyAttribute:     pulumi.Bool(false),
/// 					StringAttributeConstraints: &cognito.UserPoolSchemaStringAttributeConstraintsArgs{},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cognito.NewUser(ctx, "example", &cognito.UserArgs{
/// 			UserPoolId: example.ID(),
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
///             .name("mypool")
///             .schemas(
///                 UserPoolSchemaArgs.builder()
///                     .name("example")
///                     .attributeDataType("Boolean")
///                     .mutable(false)
///                     .required(false)
///                     .developerOnlyAttribute(false)
///                     .build(),
///                 UserPoolSchemaArgs.builder()
///                     .name("foo")
///                     .attributeDataType("String")
///                     .mutable(false)
///                     .required(false)
///                     .developerOnlyAttribute(false)
///                     .stringAttributeConstraints(UserPoolSchemaStringAttributeConstraintsArgs.builder()
///                         .build())
///                     .build())
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
///       name: mypool
///       schemas:
///         - name: example
///           attributeDataType: Boolean
///           mutable: false
///           required: false
///           developerOnlyAttribute: false
///         - name: foo
///           attributeDataType: String
///           mutable: false
///           required: false
///           developerOnlyAttribute: false
///           stringAttributeConstraints: {}
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
/// Using `pulumi import`, import Cognito User using the `user_pool_id`/`name` attributes concatenated. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/user:User user us-east-1_vG78M4goG/user
/// ```
class User extends pulumi.CustomResource {
  /// A map that contains user attributes and attribute values to be set for the user.
  late final pulumi.Output<Map<String, String>?> attributes;
  /// A map of custom key-value pairs that you can provide as input for any custom workflows that user creation triggers. Amazon Cognito does not store the `client_metadata` value. This data is available only to Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration does not include triggers, the ClientMetadata parameter serves no purpose. For more information, see [Customizing User Pool Workflows with Lambda Triggers](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html).
  late final pulumi.Output<Map<String, String>?> clientMetadata;
  late final pulumi.Output<String> creationDate;
  /// A list of mediums to the welcome message will be sent through. Allowed values are `EMAIL` and `SMS`. If it's provided, make sure you have also specified `email` attribute for the `EMAIL` medium and `phone_number` for the `SMS`. More than one value can be specified. Amazon Cognito does not store the `desired_delivery_mediums` value. Defaults to `["SMS"]`.
  late final pulumi.Output<List<String>?> desiredDeliveryMediums;
  /// Specifies whether the user should be enabled after creation. The welcome message will be sent regardless of the `enabled` value. The behavior can be changed with `message_action` argument. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// If this parameter is set to True and the `phone_number` or `email` address specified in the `attributes` parameter already exists as an alias with a different user, Amazon Cognito will migrate the alias from the previous user to the newly created user. The previous user will no longer be able to log in using that alias. Amazon Cognito does not store the `force_alias_creation` value. Defaults to `false`.
  late final pulumi.Output<bool?> forceAliasCreation;
  late final pulumi.Output<String> lastModifiedDate;
  /// Set to `RESEND` to resend the invitation message to a user that already exists and reset the expiration limit on the user's account. Set to `SUPPRESS` to suppress sending the message. Only one value can be specified. Amazon Cognito does not store the `message_action` value.
  late final pulumi.Output<String?> messageAction;
  late final pulumi.Output<List<String>> mfaSettingLists;
  /// The user's permanent password. This password must conform to the password policy specified by user pool the user belongs to. The welcome message always contains only `temporary_password` value. You can suppress sending the welcome message with the `message_action` argument. Amazon Cognito does not store the `password` value. Conflicts with `temporary_password`.
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
  /// The user's validation data. This is an array of name-value pairs that contain user attributes and attribute values that you can use for custom validation, such as restricting the types of user accounts that can be registered. Amazon Cognito does not store the `validation_data` value. For more information, see [Customizing User Pool Workflows with Lambda Triggers](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html).
  ///
  /// > **NOTE:** Clearing `password` or `temporary_password` does not reset user's password in Cognito.
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.attributes = registerOutput<Map<String, String>?>('attributes');
    this.clientMetadata = registerOutput<Map<String, String>?>('clientMetadata');
    this.creationDate = registerOutput<String>('creationDate');
    this.desiredDeliveryMediums = registerOutput<List<String>?>('desiredDeliveryMediums');
    this.enabled = registerOutput<bool?>('enabled');
    this.forceAliasCreation = registerOutput<bool?>('forceAliasCreation');
    this.lastModifiedDate = registerOutput<String>('lastModifiedDate');
    this.messageAction = registerOutput<String?>('messageAction');
    this.mfaSettingLists = registerOutput<List<String>>('mfaSettingLists');
    this.password = registerOutput<String?>('password');
    this.preferredMfaSetting = registerOutput<String>('preferredMfaSetting');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.sub = registerOutput<String>('sub');
    this.temporaryPassword = registerOutput<String?>('temporaryPassword');
    this.userPoolId = registerOutput<String>('userPoolId');
    this.username = registerOutput<String>('username');
    this.validationData = registerOutput<Map<String, String>?>('validationData');
  }

  /// Gets an existing [User] resource's state with the given [name] and [id].
  static User get(
    String name,
    pulumi.Input<String> id, {
    UserState? state,
  }) {
    return User._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    this.attributes = registerOutput<Map<String, String>?>('attributes');
    this.clientMetadata = registerOutput<Map<String, String>?>('clientMetadata');
    this.creationDate = registerOutput<String>('creationDate');
    this.desiredDeliveryMediums = registerOutput<List<String>?>('desiredDeliveryMediums');
    this.enabled = registerOutput<bool?>('enabled');
    this.forceAliasCreation = registerOutput<bool?>('forceAliasCreation');
    this.lastModifiedDate = registerOutput<String>('lastModifiedDate');
    this.messageAction = registerOutput<String?>('messageAction');
    this.mfaSettingLists = registerOutput<List<String>>('mfaSettingLists');
    this.password = registerOutput<String?>('password');
    this.preferredMfaSetting = registerOutput<String>('preferredMfaSetting');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.sub = registerOutput<String>('sub');
    this.temporaryPassword = registerOutput<String?>('temporaryPassword');
    this.userPoolId = registerOutput<String>('userPoolId');
    this.username = registerOutput<String>('username');
    this.validationData = registerOutput<Map<String, String>?>('validationData');
  }
}
