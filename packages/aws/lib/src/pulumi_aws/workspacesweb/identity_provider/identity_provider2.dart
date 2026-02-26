import 'package:pulumi/pulumi.dart';
import 'identity_provider_args2.dart';

/// Resource for managing an AWS WorkSpaces Web Identity Provider.
///
/// ## Example Usage
///
/// ### Basic Usage with SAML
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.workspacesweb.Portal("example", {displayName: "example"});
/// const exampleIdentityProvider = new aws.workspacesweb.IdentityProvider("example", {
/// identityProviderName: "example-saml",
/// identityProviderType: "SAML",
/// portalArn: example.portalArn,
/// identityProviderDetails: {
/// MetadataURL: "https://example.com/metadata",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workspacesweb.Portal("example", display_name="example")
/// example_identity_provider = aws.workspacesweb.IdentityProvider("example",
/// identity_provider_name="example-saml",
/// identity_provider_type="SAML",
/// portal_arn=example.portal_arn,
/// identity_provider_details={
/// "MetadataURL": "https://example.com/metadata",
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
/// var example = new Aws.WorkSpacesWeb.Portal("example", new()
/// {
/// DisplayName = "example",
/// });
///
/// var exampleIdentityProvider = new Aws.WorkSpacesWeb.IdentityProvider("example", new()
/// {
/// IdentityProviderName = "example-saml",
/// IdentityProviderType = "SAML",
/// PortalArn = example.PortalArn,
/// IdentityProviderDetails =
/// {
/// { "MetadataURL", "https://example.com/metadata" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspacesweb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := workspacesweb.NewPortal(ctx, "example", &workspacesweb.PortalArgs{
/// DisplayName: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = workspacesweb.NewIdentityProvider(ctx, "example", &workspacesweb.IdentityProviderArgs{
/// IdentityProviderName: pulumi.String("example-saml"),
/// IdentityProviderType: pulumi.String("SAML"),
/// PortalArn:            example.PortalArn,
/// IdentityProviderDetails: pulumi.StringMap{
/// "MetadataURL": pulumi.String("https://example.com/metadata"),
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
/// import com.pulumi.aws.workspacesweb.Portal;
/// import com.pulumi.aws.workspacesweb.PortalArgs;
/// import com.pulumi.aws.workspacesweb.IdentityProvider;
/// import com.pulumi.aws.workspacesweb.IdentityProviderArgs;
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
/// var example = new Portal("example", PortalArgs.builder()
/// .displayName("example")
/// .build());
///
/// var exampleIdentityProvider = new IdentityProvider("exampleIdentityProvider", IdentityProviderArgs.builder()
/// .identityProviderName("example-saml")
/// .identityProviderType("SAML")
/// .portalArn(example.portalArn())
/// .identityProviderDetails(Map.of("MetadataURL", "https://example.com/metadata"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:workspacesweb:Portal
/// properties:
/// displayName: example
/// exampleIdentityProvider:
/// type: aws:workspacesweb:IdentityProvider
/// name: example
/// properties:
/// identityProviderName: example-saml
/// identityProviderType: SAML
/// portalArn: ${example.portalArn}
/// identityProviderDetails:
/// MetadataURL: https://example.com/metadata
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### OIDC Identity Provider
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.workspacesweb.Portal("test", {displayName: "test"});
/// const testIdentityProvider = new aws.workspacesweb.IdentityProvider("test", {
/// identityProviderName: "test-updated",
/// identityProviderType: "OIDC",
/// portalArn: test.portalArn,
/// identityProviderDetails: {
/// client_id: "test-client-id",
/// client_secret: "test-client-secret",
/// oidc_issuer: "https://accounts.google.com",
/// attributes_request_method: "POST",
/// authorize_scopes: "openid, email",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.workspacesweb.Portal("test", display_name="test")
/// test_identity_provider = aws.workspacesweb.IdentityProvider("test",
/// identity_provider_name="test-updated",
/// identity_provider_type="OIDC",
/// portal_arn=test.portal_arn,
/// identity_provider_details={
/// "client_id": "test-client-id",
/// "client_secret": "test-client-secret",
/// "oidc_issuer": "https://accounts.google.com",
/// "attributes_request_method": "POST",
/// "authorize_scopes": "openid, email",
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
/// var test = new Aws.WorkSpacesWeb.Portal("test", new()
/// {
/// DisplayName = "test",
/// });
///
/// var testIdentityProvider = new Aws.WorkSpacesWeb.IdentityProvider("test", new()
/// {
/// IdentityProviderName = "test-updated",
/// IdentityProviderType = "OIDC",
/// PortalArn = test.PortalArn,
/// IdentityProviderDetails =
/// {
/// { "client_id", "test-client-id" },
/// { "client_secret", "test-client-secret" },
/// { "oidc_issuer", "https://accounts.google.com" },
/// { "attributes_request_method", "POST" },
/// { "authorize_scopes", "openid, email" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspacesweb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// test, err := workspacesweb.NewPortal(ctx, "test", &workspacesweb.PortalArgs{
/// DisplayName: pulumi.String("test"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = workspacesweb.NewIdentityProvider(ctx, "test", &workspacesweb.IdentityProviderArgs{
/// IdentityProviderName: pulumi.String("test-updated"),
/// IdentityProviderType: pulumi.String("OIDC"),
/// PortalArn:            test.PortalArn,
/// IdentityProviderDetails: pulumi.StringMap{
/// "client_id":                 pulumi.String("test-client-id"),
/// "client_secret":             pulumi.String("test-client-secret"),
/// "oidc_issuer":               pulumi.String("https://accounts.google.com"),
/// "attributes_request_method": pulumi.String("POST"),
/// "authorize_scopes":          pulumi.String("openid, email"),
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
/// import com.pulumi.aws.workspacesweb.Portal;
/// import com.pulumi.aws.workspacesweb.PortalArgs;
/// import com.pulumi.aws.workspacesweb.IdentityProvider;
/// import com.pulumi.aws.workspacesweb.IdentityProviderArgs;
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
/// var test = new Portal("test", PortalArgs.builder()
/// .displayName("test")
/// .build());
///
/// var testIdentityProvider = new IdentityProvider("testIdentityProvider", IdentityProviderArgs.builder()
/// .identityProviderName("test-updated")
/// .identityProviderType("OIDC")
/// .portalArn(test.portalArn())
/// .identityProviderDetails(Map.ofEntries(
/// Map.entry("client_id", "test-client-id"),
/// Map.entry("client_secret", "test-client-secret"),
/// Map.entry("oidc_issuer", "https://accounts.google.com"),
/// Map.entry("attributes_request_method", "POST"),
/// Map.entry("authorize_scopes", "openid, email")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:workspacesweb:Portal
/// properties:
/// displayName: test
/// testIdentityProvider:
/// type: aws:workspacesweb:IdentityProvider
/// name: test
/// properties:
/// identityProviderName: test-updated
/// identityProviderType: OIDC
/// portalArn: ${test.portalArn}
/// identityProviderDetails:
/// client_id: test-client-id
/// client_secret: test-client-secret
/// oidc_issuer: https://accounts.google.com
/// attributes_request_method: POST
/// authorize_scopes: openid, email
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Web Identity Provider using the <span pulumi-lang-nodejs="`identityProviderArn`" pulumi-lang-dotnet="`IdentityProviderArn`" pulumi-lang-go="`identityProviderArn`" pulumi-lang-python="`identity_provider_arn`" pulumi-lang-yaml="`identityProviderArn`" pulumi-lang-java="`identityProviderArn`">`identity_provider_arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:workspacesweb/identityProvider:IdentityProvider example arn:aws:workspaces-web:us-west-2:123456789012:identityprovider/abcdef12345678/12345678-1234-1234-1234-123456789012
/// ```
class IdentityProvider2 extends CustomResource {
  /// ARN of the identity provider.
  late final Output<String> identityProviderArn;

  /// Identity provider details. The following list describes the provider detail keys for each identity provider type:
  /// * For Google and Login with Amazon:
  late final Output<Map<String, String>> identityProviderDetails;

  /// Identity provider name.
  late final Output<String> identityProviderName;

  /// Identity provider type. Valid values: `SAML`, `Facebook`, `Google`, `LoginWithAmazon`, `SignInWithApple`, `OIDC`.
  late final Output<String> identityProviderType;

  /// ARN of the web portal. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  late final Output<String> portalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  IdentityProvider2(
    String name, {
    IdentityProviderArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/identityProvider:IdentityProvider',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.identityProviderArn = registerOutput<String>('identityProviderArn');
    this.identityProviderDetails =
        registerOutput<Map<String, String>>('identityProviderDetails');
    this.identityProviderName = registerOutput<String>('identityProviderName');
    this.identityProviderType = registerOutput<String>('identityProviderType');
    this.portalArn = registerOutput<String>('portalArn');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
