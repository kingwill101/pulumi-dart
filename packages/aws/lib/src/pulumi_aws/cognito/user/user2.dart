import 'package:pulumi/pulumi.dart';
import 'user_args2.dart';

/// Provides a Cognito User Resource.
///
/// ## Example Usage
///
/// ### Basic configuration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cognito.UserPool("example", {name: "MyExamplePool"});
/// const exampleUser = new aws.cognito.User("example", {
/// userPoolId: example.id,
/// username: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cognito.UserPool("example", name="MyExamplePool")
/// example_user = aws.cognito.User("example",
/// user_pool_id=example.id,
/// username="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Cognito.UserPool("example", new()
/// {
/// Name = "MyExamplePool",
/// });
///
/// var exampleUser = new Aws.Cognito.User("example", new()
/// {
/// UserPoolId = example.Id,
/// Username = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := cognito.NewUserPool(ctx, "example", &cognito.UserPoolArgs{
/// Name: pulumi.String("MyExamplePool"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cognito.NewUser(ctx, "example", &cognito.UserArgs{
/// UserPoolId: example.ID(),
/// Username:   pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new UserPool("example", UserPoolArgs.builder()
/// .name("MyExamplePool")
/// .build());
///
/// var exampleUser = new User("exampleUser", UserArgs.builder()
/// .userPoolId(example.id())
/// .username("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cognito:UserPool
/// properties:
/// name: MyExamplePool
/// exampleUser:
/// type: aws:cognito:User
/// name: example
/// properties:
/// userPoolId: ${example.id}
/// username: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Setting user attributes
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cognito.UserPool("example", {
/// name: "mypool",
/// schemas: [
/// {
/// name: "example",
/// attributeDataType: "Boolean",
/// mutable: false,
/// required: false,
/// developerOnlyAttribute: false,
/// },
/// {
/// name: "foo",
/// attributeDataType: "String",
/// mutable: false,
/// required: false,
/// developerOnlyAttribute: false,
/// stringAttributeConstraints: {},
/// },
/// ],
/// });
/// const exampleUser = new aws.cognito.User("example", {
/// userPoolId: example.id,
/// username: "example",
/// attributes: {
/// example: "true",
/// foo: "bar",
/// email: "no-reply@example.com",
/// email_verified: "true",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cognito.UserPool("example",
/// name="mypool",
/// schemas=[
/// {
/// "name": "example",
/// "attribute_data_type": "Boolean",
/// "mutable": False,
/// "required": False,
/// "developer_only_attribute": False,
/// },
/// {
/// "name": "foo",
/// "attribute_data_type": "String",
/// "mutable": False,
/// "required": False,
/// "developer_only_attribute": False,
/// "string_attribute_constraints": {},
/// },
/// ])
/// example_user = aws.cognito.User("example",
/// user_pool_id=example.id,
/// username="example",
/// attributes={
/// "example": "true",
/// "foo": "bar",
/// "email": "no-reply@example.com",
/// "email_verified": "true",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Cognito.UserPool("example", new()
/// {
/// Name = "mypool",
/// Schemas = new[]
/// {
/// new Aws.Cognito.Inputs.UserPoolSchemaArgs
/// {
/// Name = "example",
/// AttributeDataType = "Boolean",
/// Mutable = false,
/// Required = false,
/// DeveloperOnlyAttribute = false,
/// },
/// new Aws.Cognito.Inputs.UserPoolSchemaArgs
/// {
/// Name = "foo",
/// AttributeDataType = "String",
/// Mutable = false,
/// Required = false,
/// DeveloperOnlyAttribute = false,
/// StringAttributeConstraints = null,
/// },
/// },
/// });
///
/// var exampleUser = new Aws.Cognito.User("example", new()
/// {
/// UserPoolId = example.Id,
/// Username = "example",
/// Attributes =
/// {
/// { "example", "true" },
/// { "foo", "bar" },
/// { "email", "no-reply@example.com" },
/// { "email_verified", "true" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := cognito.NewUserPool(ctx, "example", &cognito.UserPoolArgs{
/// Name: pulumi.String("mypool"),
/// Schemas: cognito.UserPoolSchemaArray{
/// &cognito.UserPoolSchemaArgs{
/// Name:                   pulumi.String("example"),
/// AttributeDataType:      pulumi.String("Boolean"),
/// Mutable:                pulumi.Bool(false),
/// Required:               pulumi.Bool(false),
/// DeveloperOnlyAttribute: pulumi.Bool(false),
/// },
/// &cognito.UserPoolSchemaArgs{
/// Name:                       pulumi.String("foo"),
/// AttributeDataType:          pulumi.String("String"),
/// Mutable:                    pulumi.Bool(false),
/// Required:                   pulumi.Bool(false),
/// DeveloperOnlyAttribute:     pulumi.Bool(false),
/// StringAttributeConstraints: &cognito.UserPoolSchemaStringAttributeConstraintsArgs{},
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cognito.NewUser(ctx, "example", &cognito.UserArgs{
/// UserPoolId: example.ID(),
/// Username:   pulumi.String("example"),
/// Attributes: pulumi.StringMap{
/// "example":        pulumi.String("true"),
/// "foo":            pulumi.String("bar"),
/// "email":          pulumi.String("no-reply@example.com"),
/// "email_verified": pulumi.String("true"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new UserPool("example", UserPoolArgs.builder()
/// .name("mypool")
/// .schemas(
/// UserPoolSchemaArgs.builder()
/// .name("example")
/// .attributeDataType("Boolean")
/// .mutable(false)
/// .required(false)
/// .developerOnlyAttribute(false)
/// .build(),
/// UserPoolSchemaArgs.builder()
/// .name("foo")
/// .attributeDataType("String")
/// .mutable(false)
/// .required(false)
/// .developerOnlyAttribute(false)
/// .stringAttributeConstraints(UserPoolSchemaStringAttributeConstraintsArgs.builder()
/// .build())
/// .build())
/// .build());
///
/// var exampleUser = new User("exampleUser", UserArgs.builder()
/// .userPoolId(example.id())
/// .username("example")
/// .attributes(Map.ofEntries(
/// Map.entry("example", "true"),
/// Map.entry("foo", "bar"),
/// Map.entry("email", "no-reply@example.com"),
/// Map.entry("email_verified", "true")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cognito:UserPool
/// properties:
/// name: mypool
/// schemas:
/// - name: example
/// attributeDataType: Boolean
/// mutable: false
/// required: false
/// developerOnlyAttribute: false
/// - name: foo
/// attributeDataType: String
/// mutable: false
/// required: false
/// developerOnlyAttribute: false
/// stringAttributeConstraints: {}
/// exampleUser:
/// type: aws:cognito:User
/// name: example
/// properties:
/// userPoolId: ${example.id}
/// username: example
/// attributes:
/// example: true
/// foo: bar
/// email: no-reply@example.com
/// email_verified: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Cognito User using the <span pulumi-lang-nodejs="`userPoolId`" pulumi-lang-dotnet="`UserPoolId`" pulumi-lang-go="`userPoolId`" pulumi-lang-python="`user_pool_id`" pulumi-lang-yaml="`userPoolId`" pulumi-lang-java="`userPoolId`">`user_pool_id`</span>/<span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> attributes concatenated. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/user:User user us-east-1_vG78M4goG/user
/// ```
class User2 extends CustomResource {
  /// A map that contains user attributes and attribute values to be set for the user.
  late final Output<Map<String, String>?> attributes;

  /// A map of custom key-value pairs that you can provide as input for any custom workflows that user creation triggers. Amazon Cognito does not store the <span pulumi-lang-nodejs="`clientMetadata`" pulumi-lang-dotnet="`ClientMetadata`" pulumi-lang-go="`clientMetadata`" pulumi-lang-python="`client_metadata`" pulumi-lang-yaml="`clientMetadata`" pulumi-lang-java="`clientMetadata`">`client_metadata`</span> value. This data is available only to Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration does not include triggers, the ClientMetadata parameter serves no purpose. For more information, see [Customizing User Pool Workflows with Lambda Triggers](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html).
  late final Output<Map<String, String>?> clientMetadata;
  late final Output<String> creationDate;

  /// A list of mediums to the welcome message will be sent through. Allowed values are `EMAIL` and `SMS`. If it's provided, make sure you have also specified <span pulumi-lang-nodejs="`email`" pulumi-lang-dotnet="`Email`" pulumi-lang-go="`email`" pulumi-lang-python="`email`" pulumi-lang-yaml="`email`" pulumi-lang-java="`email`">`email`</span> attribute for the `EMAIL` medium and <span pulumi-lang-nodejs="`phoneNumber`" pulumi-lang-dotnet="`PhoneNumber`" pulumi-lang-go="`phoneNumber`" pulumi-lang-python="`phone_number`" pulumi-lang-yaml="`phoneNumber`" pulumi-lang-java="`phoneNumber`">`phone_number`</span> for the `SMS`. More than one value can be specified. Amazon Cognito does not store the <span pulumi-lang-nodejs="`desiredDeliveryMediums`" pulumi-lang-dotnet="`DesiredDeliveryMediums`" pulumi-lang-go="`desiredDeliveryMediums`" pulumi-lang-python="`desired_delivery_mediums`" pulumi-lang-yaml="`desiredDeliveryMediums`" pulumi-lang-java="`desiredDeliveryMediums`">`desired_delivery_mediums`</span> value. Defaults to `["SMS"]`.
  late final Output<List<String>?> desiredDeliveryMediums;

  /// Specifies whether the user should be enabled after creation. The welcome message will be sent regardless of the <span pulumi-lang-nodejs="`enabled`" pulumi-lang-dotnet="`Enabled`" pulumi-lang-go="`enabled`" pulumi-lang-python="`enabled`" pulumi-lang-yaml="`enabled`" pulumi-lang-java="`enabled`">`enabled`</span> value. The behavior can be changed with <span pulumi-lang-nodejs="`messageAction`" pulumi-lang-dotnet="`MessageAction`" pulumi-lang-go="`messageAction`" pulumi-lang-python="`message_action`" pulumi-lang-yaml="`messageAction`" pulumi-lang-java="`messageAction`">`message_action`</span> argument. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> enabled;

  /// If this parameter is set to True and the <span pulumi-lang-nodejs="`phoneNumber`" pulumi-lang-dotnet="`PhoneNumber`" pulumi-lang-go="`phoneNumber`" pulumi-lang-python="`phone_number`" pulumi-lang-yaml="`phoneNumber`" pulumi-lang-java="`phoneNumber`">`phone_number`</span> or <span pulumi-lang-nodejs="`email`" pulumi-lang-dotnet="`Email`" pulumi-lang-go="`email`" pulumi-lang-python="`email`" pulumi-lang-yaml="`email`" pulumi-lang-java="`email`">`email`</span> address specified in the <span pulumi-lang-nodejs="`attributes`" pulumi-lang-dotnet="`Attributes`" pulumi-lang-go="`attributes`" pulumi-lang-python="`attributes`" pulumi-lang-yaml="`attributes`" pulumi-lang-java="`attributes`">`attributes`</span> parameter already exists as an alias with a different user, Amazon Cognito will migrate the alias from the previous user to the newly created user. The previous user will no longer be able to log in using that alias. Amazon Cognito does not store the <span pulumi-lang-nodejs="`forceAliasCreation`" pulumi-lang-dotnet="`ForceAliasCreation`" pulumi-lang-go="`forceAliasCreation`" pulumi-lang-python="`force_alias_creation`" pulumi-lang-yaml="`forceAliasCreation`" pulumi-lang-java="`forceAliasCreation`">`force_alias_creation`</span> value. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> forceAliasCreation;
  late final Output<String> lastModifiedDate;

  /// Set to `RESEND` to resend the invitation message to a user that already exists and reset the expiration limit on the user's account. Set to `SUPPRESS` to suppress sending the message. Only one value can be specified. Amazon Cognito does not store the <span pulumi-lang-nodejs="`messageAction`" pulumi-lang-dotnet="`MessageAction`" pulumi-lang-go="`messageAction`" pulumi-lang-python="`message_action`" pulumi-lang-yaml="`messageAction`" pulumi-lang-java="`messageAction`">`message_action`</span> value.
  late final Output<String?> messageAction;
  late final Output<List<String>> mfaSettingLists;

  /// The user's permanent password. This password must conform to the password policy specified by user pool the user belongs to. The welcome message always contains only <span pulumi-lang-nodejs="`temporaryPassword`" pulumi-lang-dotnet="`TemporaryPassword`" pulumi-lang-go="`temporaryPassword`" pulumi-lang-python="`temporary_password`" pulumi-lang-yaml="`temporaryPassword`" pulumi-lang-java="`temporaryPassword`">`temporary_password`</span> value. You can suppress sending the welcome message with the <span pulumi-lang-nodejs="`messageAction`" pulumi-lang-dotnet="`MessageAction`" pulumi-lang-go="`messageAction`" pulumi-lang-python="`message_action`" pulumi-lang-yaml="`messageAction`" pulumi-lang-java="`messageAction`">`message_action`</span> argument. Amazon Cognito does not store the <span pulumi-lang-nodejs="`password`" pulumi-lang-dotnet="`Password`" pulumi-lang-go="`password`" pulumi-lang-python="`password`" pulumi-lang-yaml="`password`" pulumi-lang-java="`password`">`password`</span> value. Conflicts with <span pulumi-lang-nodejs="`temporaryPassword`" pulumi-lang-dotnet="`TemporaryPassword`" pulumi-lang-go="`temporaryPassword`" pulumi-lang-python="`temporary_password`" pulumi-lang-yaml="`temporaryPassword`" pulumi-lang-java="`temporaryPassword`">`temporary_password`</span>.
  late final Output<String?> password;
  late final Output<String> preferredMfaSetting;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// current user status.
  late final Output<String> status;

  /// unique user id that is never reassignable to another user.
  late final Output<String> sub;

  /// The user's temporary password. Conflicts with <span pulumi-lang-nodejs="`password`" pulumi-lang-dotnet="`Password`" pulumi-lang-go="`password`" pulumi-lang-python="`password`" pulumi-lang-yaml="`password`" pulumi-lang-java="`password`">`password`</span>.
  late final Output<String?> temporaryPassword;

  /// The user pool ID for the user pool where the user will be created.
  late final Output<String> userPoolId;

  /// The username for the user. Must be unique within the user pool. Must be a UTF-8 string between 1 and 128 characters. After the user is created, the username cannot be changed.
  ///
  /// The following arguments are optional:
  late final Output<String> username;

  /// The user's validation data. This is an array of name-value pairs that contain user attributes and attribute values that you can use for custom validation, such as restricting the types of user accounts that can be registered. Amazon Cognito does not store the <span pulumi-lang-nodejs="`validationData`" pulumi-lang-dotnet="`ValidationData`" pulumi-lang-go="`validationData`" pulumi-lang-python="`validation_data`" pulumi-lang-yaml="`validationData`" pulumi-lang-java="`validationData`">`validation_data`</span> value. For more information, see [Customizing User Pool Workflows with Lambda Triggers](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html).
  ///
  /// > **NOTE:** Clearing <span pulumi-lang-nodejs="`password`" pulumi-lang-dotnet="`Password`" pulumi-lang-go="`password`" pulumi-lang-python="`password`" pulumi-lang-yaml="`password`" pulumi-lang-java="`password`">`password`</span> or <span pulumi-lang-nodejs="`temporaryPassword`" pulumi-lang-dotnet="`TemporaryPassword`" pulumi-lang-go="`temporaryPassword`" pulumi-lang-python="`temporary_password`" pulumi-lang-yaml="`temporaryPassword`" pulumi-lang-java="`temporaryPassword`">`temporary_password`</span> does not reset user's password in Cognito.
  late final Output<Map<String, String>?> validationData;

  User2(
    String name, {
    UserArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cognito/user:User',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attributes = Output.createUnknown<Map<String, String>?>();
    this.clientMetadata = Output.createUnknown<Map<String, String>?>();
    this.creationDate = Output.createUnknown<String>();
    this.desiredDeliveryMediums = Output.createUnknown<List<String>?>();
    this.enabled = Output.createUnknown<bool?>();
    this.forceAliasCreation = Output.createUnknown<bool?>();
    this.lastModifiedDate = Output.createUnknown<String>();
    this.messageAction = Output.createUnknown<String?>();
    this.mfaSettingLists = Output.createUnknown<List<String>>();
    this.password = Output.createUnknown<String?>();
    this.preferredMfaSetting = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
    this.sub = Output.createUnknown<String>();
    this.temporaryPassword = Output.createUnknown<String?>();
    this.userPoolId = Output.createUnknown<String>();
    this.username = Output.createUnknown<String>();
    this.validationData = Output.createUnknown<Map<String, String>?>();
  }
}
