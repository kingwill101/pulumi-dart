import 'package:pulumi/pulumi.dart';
import 'identity_provider_args.dart';

/// Provides a Cognito User Identity Provider resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cognito.UserPool("example", {
/// name: "example-pool",
/// autoVerifiedAttributes: ["email"],
/// });
/// const exampleProvider = new aws.cognito.IdentityProvider("example_provider", {
/// userPoolId: example.id,
/// providerName: "Google",
/// providerType: "Google",
/// providerDetails: {
/// authorize_scopes: "email",
/// client_id: "your client_id",
/// client_secret: "your client_secret",
/// },
/// attributeMapping: {
/// email: "email",
/// username: "sub",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cognito.UserPool("example",
/// name="example-pool",
/// auto_verified_attributes=["email"])
/// example_provider = aws.cognito.IdentityProvider("example_provider",
/// user_pool_id=example.id,
/// provider_name="Google",
/// provider_type="Google",
/// provider_details={
/// "authorize_scopes": "email",
/// "client_id": "your client_id",
/// "client_secret": "your client_secret",
/// },
/// attribute_mapping={
/// "email": "email",
/// "username": "sub",
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
/// Name = "example-pool",
/// AutoVerifiedAttributes = new[]
/// {
/// "email",
/// },
/// });
///
/// var exampleProvider = new Aws.Cognito.IdentityProvider("example_provider", new()
/// {
/// UserPoolId = example.Id,
/// ProviderName = "Google",
/// ProviderType = "Google",
/// ProviderDetails =
/// {
/// { "authorize_scopes", "email" },
/// { "client_id", "your client_id" },
/// { "client_secret", "your client_secret" },
/// },
/// AttributeMapping =
/// {
/// { "email", "email" },
/// { "username", "sub" },
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
/// Name: pulumi.String("example-pool"),
/// AutoVerifiedAttributes: pulumi.StringArray{
/// pulumi.String("email"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cognito.NewIdentityProvider(ctx, "example_provider", &cognito.IdentityProviderArgs{
/// UserPoolId:   example.ID(),
/// ProviderName: pulumi.String("Google"),
/// ProviderType: pulumi.String("Google"),
/// ProviderDetails: pulumi.StringMap{
/// "authorize_scopes": pulumi.String("email"),
/// "client_id":        pulumi.String("your client_id"),
/// "client_secret":    pulumi.String("your client_secret"),
/// },
/// AttributeMapping: pulumi.StringMap{
/// "email":    pulumi.String("email"),
/// "username": pulumi.String("sub"),
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
/// import com.pulumi.aws.cognito.IdentityProvider;
/// import com.pulumi.aws.cognito.IdentityProviderArgs;
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
/// .name("example-pool")
/// .autoVerifiedAttributes("email")
/// .build());
///
/// var exampleProvider = new IdentityProvider("exampleProvider", IdentityProviderArgs.builder()
/// .userPoolId(example.id())
/// .providerName("Google")
/// .providerType("Google")
/// .providerDetails(Map.ofEntries(
/// Map.entry("authorize_scopes", "email"),
/// Map.entry("client_id", "your client_id"),
/// Map.entry("client_secret", "your client_secret")
/// ))
/// .attributeMapping(Map.ofEntries(
/// Map.entry("email", "email"),
/// Map.entry("username", "sub")
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
/// name: example-pool
/// autoVerifiedAttributes:
/// - email
/// exampleProvider:
/// type: aws:cognito:IdentityProvider
/// name: example_provider
/// properties:
/// userPoolId: ${example.id}
/// providerName: Google
/// providerType: Google
/// providerDetails:
/// authorize_scopes: email
/// client_id: your client_id
/// client_secret: your client_secret
/// attributeMapping:
/// email: email
/// username: sub
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.cognito.IdentityProvider`" pulumi-lang-dotnet="`aws.cognito.IdentityProvider`" pulumi-lang-go="`cognito.IdentityProvider`" pulumi-lang-python="`cognito.IdentityProvider`" pulumi-lang-yaml="`aws.cognito.IdentityProvider`" pulumi-lang-java="`aws.cognito.IdentityProvider`">`aws.cognito.IdentityProvider`</span> resources using their User Pool ID and Provider Name. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/identityProvider:IdentityProvider example us-west-2_abc123:CorpAD
/// ```
class IdentityProvider extends CustomResource {
  /// The map of attribute mapping of user pool attributes. [AttributeMapping in AWS API documentation](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_CreateIdentityProvider.html#CognitoUserPools-CreateIdentityProvider-request-AttributeMapping)
  late final Output<Map<String, String>> attributeMapping;

  /// The list of identity providers.
  late final Output<List<String>?> idpIdentifiers;

  /// The map of identity details, such as access token
  late final Output<Map<String, String>> providerDetails;

  /// The provider name
  late final Output<String> providerName;

  /// The provider type.  [See AWS API for valid values](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_CreateIdentityProvider.html#CognitoUserPools-CreateIdentityProvider-request-ProviderType)
  late final Output<String> providerType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The user pool id
  late final Output<String> userPoolId;

  IdentityProvider(
    String name, {
    IdentityProviderArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cognito/identityProvider:IdentityProvider',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attributeMapping =
        registerOutput<Map<String, String>>('attributeMapping');
    this.idpIdentifiers = registerOutput<List<String>?>('idpIdentifiers');
    this.providerDetails =
        registerOutput<Map<String, String>>('providerDetails');
    this.providerName = registerOutput<String>('providerName');
    this.providerType = registerOutput<String>('providerType');
    this.region = registerOutput<String>('region');
    this.userPoolId = registerOutput<String>('userPoolId');
  }
}
