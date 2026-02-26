import 'package:pulumi/pulumi.dart';
import '../email_identity_dkim_signing_attributes/email_identity_dkim_signing_attributes.dart';
import 'email_identity_args2.dart';

/// Resource for managing an AWS SESv2 (Simple Email V2) Email Identity.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// ### Email Address Identity
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sesv2.EmailIdentity("example", {emailIdentity: "testing@example.com"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.EmailIdentity("example", email_identity="testing@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.SesV2.EmailIdentity("example", new()
/// {
/// EmailIdentityDetails = "testing@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sesv2.NewEmailIdentity(ctx, "example", &sesv2.EmailIdentityArgs{
/// EmailIdentity: pulumi.String("testing@example.com"),
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
/// import com.pulumi.aws.sesv2.EmailIdentity;
/// import com.pulumi.aws.sesv2.EmailIdentityArgs;
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
/// var example = new EmailIdentity("example", EmailIdentityArgs.builder()
/// .emailIdentity("testing@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:sesv2:EmailIdentity
/// properties:
/// emailIdentity: testing@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Domain Identity
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sesv2.EmailIdentity("example", {emailIdentity: "example.com"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.EmailIdentity("example", email_identity="example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.SesV2.EmailIdentity("example", new()
/// {
/// EmailIdentityDetails = "example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sesv2.NewEmailIdentity(ctx, "example", &sesv2.EmailIdentityArgs{
/// EmailIdentity: pulumi.String("example.com"),
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
/// import com.pulumi.aws.sesv2.EmailIdentity;
/// import com.pulumi.aws.sesv2.EmailIdentityArgs;
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
/// var example = new EmailIdentity("example", EmailIdentityArgs.builder()
/// .emailIdentity("example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:sesv2:EmailIdentity
/// properties:
/// emailIdentity: example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Configuration Set
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sesv2.ConfigurationSet("example", {configurationSetName: "example"});
/// const exampleEmailIdentity = new aws.sesv2.EmailIdentity("example", {
/// emailIdentity: "example.com",
/// configurationSetName: example.configurationSetName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.ConfigurationSet("example", configuration_set_name="example")
/// example_email_identity = aws.sesv2.EmailIdentity("example",
/// email_identity="example.com",
/// configuration_set_name=example.configuration_set_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.SesV2.ConfigurationSet("example", new()
/// {
/// ConfigurationSetName = "example",
/// });
///
/// var exampleEmailIdentity = new Aws.SesV2.EmailIdentity("example", new()
/// {
/// EmailIdentityDetails = "example.com",
/// ConfigurationSetName = example.ConfigurationSetName,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := sesv2.NewConfigurationSet(ctx, "example", &sesv2.ConfigurationSetArgs{
/// ConfigurationSetName: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = sesv2.NewEmailIdentity(ctx, "example", &sesv2.EmailIdentityArgs{
/// EmailIdentity:        pulumi.String("example.com"),
/// ConfigurationSetName: example.ConfigurationSetName,
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
/// import com.pulumi.aws.sesv2.ConfigurationSet;
/// import com.pulumi.aws.sesv2.ConfigurationSetArgs;
/// import com.pulumi.aws.sesv2.EmailIdentity;
/// import com.pulumi.aws.sesv2.EmailIdentityArgs;
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
/// var example = new ConfigurationSet("example", ConfigurationSetArgs.builder()
/// .configurationSetName("example")
/// .build());
///
/// var exampleEmailIdentity = new EmailIdentity("exampleEmailIdentity", EmailIdentityArgs.builder()
/// .emailIdentity("example.com")
/// .configurationSetName(example.configurationSetName())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:sesv2:ConfigurationSet
/// properties:
/// configurationSetName: example
/// exampleEmailIdentity:
/// type: aws:sesv2:EmailIdentity
/// name: example
/// properties:
/// emailIdentity: example.com
/// configurationSetName: ${example.configurationSetName}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### DKIM Signing Attributes (BYODKIM)
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sesv2.EmailIdentity("example", {
/// emailIdentity: "example.com",
/// dkimSigningAttributes: {
/// domainSigningPrivateKey: "MIIJKAIBAAKCAgEA2Se7p8zvnI4yh+Gh9j2rG5e2aRXjg03Y8saiupLnadPH9xvM...",
/// domainSigningSelector: "example",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.EmailIdentity("example",
/// email_identity="example.com",
/// dkim_signing_attributes={
/// "domain_signing_private_key": "MIIJKAIBAAKCAgEA2Se7p8zvnI4yh+Gh9j2rG5e2aRXjg03Y8saiupLnadPH9xvM...",
/// "domain_signing_selector": "example",
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
/// var example = new Aws.SesV2.EmailIdentity("example", new()
/// {
/// EmailIdentityDetails = "example.com",
/// DkimSigningAttributes = new Aws.SesV2.Inputs.EmailIdentityDkimSigningAttributesArgs
/// {
/// DomainSigningPrivateKey = "MIIJKAIBAAKCAgEA2Se7p8zvnI4yh+Gh9j2rG5e2aRXjg03Y8saiupLnadPH9xvM...",
/// DomainSigningSelector = "example",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sesv2.NewEmailIdentity(ctx, "example", &sesv2.EmailIdentityArgs{
/// EmailIdentity: pulumi.String("example.com"),
/// DkimSigningAttributes: &sesv2.EmailIdentityDkimSigningAttributesArgs{
/// DomainSigningPrivateKey: pulumi.String("MIIJKAIBAAKCAgEA2Se7p8zvnI4yh+Gh9j2rG5e2aRXjg03Y8saiupLnadPH9xvM..."),
/// DomainSigningSelector:   pulumi.String("example"),
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
/// import com.pulumi.aws.sesv2.EmailIdentity;
/// import com.pulumi.aws.sesv2.EmailIdentityArgs;
/// import com.pulumi.aws.sesv2.inputs.EmailIdentityDkimSigningAttributesArgs;
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
/// var example = new EmailIdentity("example", EmailIdentityArgs.builder()
/// .emailIdentity("example.com")
/// .dkimSigningAttributes(EmailIdentityDkimSigningAttributesArgs.builder()
/// .domainSigningPrivateKey("MIIJKAIBAAKCAgEA2Se7p8zvnI4yh+Gh9j2rG5e2aRXjg03Y8saiupLnadPH9xvM...")
/// .domainSigningSelector("example")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:sesv2:EmailIdentity
/// properties:
/// emailIdentity: example.com
/// dkimSigningAttributes:
/// domainSigningPrivateKey: MIIJKAIBAAKCAgEA2Se7p8zvnI4yh+Gh9j2rG5e2aRXjg03Y8saiupLnadPH9xvM...
/// domainSigningSelector: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import SESv2 (Simple Email V2) Email Identity using the <span pulumi-lang-nodejs="`emailIdentity`" pulumi-lang-dotnet="`EmailIdentity`" pulumi-lang-go="`emailIdentity`" pulumi-lang-python="`email_identity`" pulumi-lang-yaml="`emailIdentity`" pulumi-lang-java="`emailIdentity`">`email_identity`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/emailIdentity:EmailIdentity example example.com
/// ```
class EmailIdentity2 extends CustomResource {
  /// ARN of the Email Identity.
  late final Output<String> arn;

  /// The configuration set to use by default when sending from this identity. Note that any configuration set defined in the email sending request takes precedence.
  late final Output<String?> configurationSetName;

  /// The configuration of the DKIM authentication settings for an email domain identity.
  late final Output<EmailIdentityDkimSigningAttributes> dkimSigningAttributes;

  /// The email address or domain to verify.
  ///
  /// The following arguments are optional:
  late final Output<String> emailIdentity;

  /// The email identity type. Valid values: `EMAIL_ADDRESS`, `DOMAIN`.
  late final Output<String> identityType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The verification status of the identity. The status can be one of the following: `PENDING`, `SUCCESS`, `FAILED`, `TEMPORARY_FAILURE`, and `NOT_STARTED`.
  late final Output<String> verificationStatus;

  /// Specifies whether or not the identity is verified.
  late final Output<bool> verifiedForSendingStatus;

  EmailIdentity2(
    String name, {
    EmailIdentityArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/emailIdentity:EmailIdentity',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.configurationSetName = registerOutput<String?>('configurationSetName');
    this.dkimSigningAttributes =
        registerOutput<EmailIdentityDkimSigningAttributes>(
            'dkimSigningAttributes');
    this.emailIdentity = registerOutput<String>('emailIdentity');
    this.identityType = registerOutput<String>('identityType');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.verificationStatus = registerOutput<String>('verificationStatus');
    this.verifiedForSendingStatus =
        registerOutput<bool>('verifiedForSendingStatus');
  }
}
