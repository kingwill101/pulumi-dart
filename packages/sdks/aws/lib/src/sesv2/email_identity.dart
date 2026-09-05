import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_identity_args.dart';
import 'email_identity_dkim_signing_attributes.dart';
import 'email_identity_state.dart';

/// Resource for managing an AWS SESv2 (Simple Email V2) Email Identity.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// ### Email Address Identity
///
///
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
///     var example = new Aws.SesV2.EmailIdentity("example", new()
///     {
///         EmailIdentityDetails = "testing@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sesv2.NewEmailIdentity(ctx, "example", &sesv2.EmailIdentityArgs{
/// 			EmailIdentity: pulumi.String("testing@example.com"),
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
/// resource "aws_sesv2_emailidentity" "example" {
///   email_identity = "testing@example.com"
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
///         var example = new EmailIdentity("example", EmailIdentityArgs.builder()
///             .emailIdentity("testing@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sesv2:EmailIdentity
///     properties:
///       emailIdentity: testing@example.com
/// ```
///
///
/// ### Domain Identity
///
///
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
///     var example = new Aws.SesV2.EmailIdentity("example", new()
///     {
///         EmailIdentityDetails = "example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sesv2.NewEmailIdentity(ctx, "example", &sesv2.EmailIdentityArgs{
/// 			EmailIdentity: pulumi.String("example.com"),
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
/// resource "aws_sesv2_emailidentity" "example" {
///   email_identity = "example.com"
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
///         var example = new EmailIdentity("example", EmailIdentityArgs.builder()
///             .emailIdentity("example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sesv2:EmailIdentity
///     properties:
///       emailIdentity: example.com
/// ```
///
///
/// ### Configuration Set
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sesv2.ConfigurationSet("example", {configurationSetName: "example"});
/// const exampleEmailIdentity = new aws.sesv2.EmailIdentity("example", {
///     emailIdentity: "example.com",
///     configurationSetName: example.configurationSetName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.ConfigurationSet("example", configuration_set_name="example")
/// example_email_identity = aws.sesv2.EmailIdentity("example",
///     email_identity="example.com",
///     configuration_set_name=example.configuration_set_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SesV2.ConfigurationSet("example", new()
///     {
///         ConfigurationSetName = "example",
///     });
///
///     var exampleEmailIdentity = new Aws.SesV2.EmailIdentity("example", new()
///     {
///         EmailIdentityDetails = "example.com",
///         ConfigurationSetName = example.ConfigurationSetName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := sesv2.NewConfigurationSet(ctx, "example", &sesv2.ConfigurationSetArgs{
/// 			ConfigurationSetName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sesv2.NewEmailIdentity(ctx, "example", &sesv2.EmailIdentityArgs{
/// 			EmailIdentity:        pulumi.String("example.com"),
/// 			ConfigurationSetName: example.ConfigurationSetName,
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
/// resource "aws_sesv2_configurationset" "example" {
///   configuration_set_name = "example"
/// }
/// resource "aws_sesv2_emailidentity" "example" {
///   email_identity         = "example.com"
///   configuration_set_name = aws_sesv2_configurationset.example.configuration_set_name
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
///         var example = new ConfigurationSet("example", ConfigurationSetArgs.builder()
///             .configurationSetName("example")
///             .build());
///
///         var exampleEmailIdentity = new EmailIdentity("exampleEmailIdentity", EmailIdentityArgs.builder()
///             .emailIdentity("example.com")
///             .configurationSetName(example.configurationSetName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sesv2:ConfigurationSet
///     properties:
///       configurationSetName: example
///   exampleEmailIdentity:
///     type: aws:sesv2:EmailIdentity
///     name: example
///     properties:
///       emailIdentity: example.com
///       configurationSetName: ${example.configurationSetName}
/// ```
///
///
/// ### DKIM Signing Attributes (BYODKIM)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sesv2.EmailIdentity("example", {
///     dkimSigningAttributes: {
///         domainSigningPrivateKey: "MIIJKAIBAAKCAgEA2Se7p8zvnI4yh+Gh9j2rG5e2aRXjg03Y8saiupLnadPH9xvM...",
///         domainSigningSelector: "example",
///     },
///     emailIdentity: "example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.EmailIdentity("example",
///     dkim_signing_attributes={
///         "domain_signing_private_key": "MIIJKAIBAAKCAgEA2Se7p8zvnI4yh+Gh9j2rG5e2aRXjg03Y8saiupLnadPH9xvM...",
///         "domain_signing_selector": "example",
///     },
///     email_identity="example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SesV2.EmailIdentity("example", new()
///     {
///         DkimSigningAttributes = new Aws.SesV2.Inputs.EmailIdentityDkimSigningAttributesArgs
///         {
///             DomainSigningPrivateKey = "MIIJKAIBAAKCAgEA2Se7p8zvnI4yh+Gh9j2rG5e2aRXjg03Y8saiupLnadPH9xvM...",
///             DomainSigningSelector = "example",
///         },
///         EmailIdentityDetails = "example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sesv2.NewEmailIdentity(ctx, "example", &sesv2.EmailIdentityArgs{
/// 			DkimSigningAttributes: &sesv2.EmailIdentityDkimSigningAttributesArgs{
/// 				DomainSigningPrivateKey: pulumi.String("MIIJKAIBAAKCAgEA2Se7p8zvnI4yh+Gh9j2rG5e2aRXjg03Y8saiupLnadPH9xvM..."),
/// 				DomainSigningSelector:   pulumi.String("example"),
/// 			},
/// 			EmailIdentity: pulumi.String("example.com"),
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
/// resource "aws_sesv2_emailidentity" "example" {
///   dkim_signing_attributes = {
///     domain_signing_private_key = "MIIJKAIBAAKCAgEA2Se7p8zvnI4yh+Gh9j2rG5e2aRXjg03Y8saiupLnadPH9xvM..."
///     domain_signing_selector    = "example"
///   }
///   #PEM private key without headers or newline characters
///   email_identity = "example.com"
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
///         var example = new EmailIdentity("example", EmailIdentityArgs.builder()
///             .dkimSigningAttributes(EmailIdentityDkimSigningAttributesArgs.builder()
///                 .domainSigningPrivateKey("MIIJKAIBAAKCAgEA2Se7p8zvnI4yh+Gh9j2rG5e2aRXjg03Y8saiupLnadPH9xvM...")
///                 .domainSigningSelector("example")
///                 .build())
///             .emailIdentity("example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sesv2:EmailIdentity
///     properties:
///       dkimSigningAttributes:
///         domainSigningPrivateKey: MIIJKAIBAAKCAgEA2Se7p8zvnI4yh+Gh9j2rG5e2aRXjg03Y8saiupLnadPH9xvM...
///         domainSigningSelector: example
///       emailIdentity: example.com
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SESv2 (Simple Email V2) Email Identity using the `emailIdentity`. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/emailIdentity:EmailIdentity example example.com
/// ```
class EmailIdentity extends pulumi.CustomResource {
  /// ARN of the Email Identity.
  late final pulumi.Output<String> arn;
  /// Configuration set to use by default when sending from this identity. Any configuration set defined in the email sending request takes precedence.
  late final pulumi.Output<String?> configurationSetName;
  /// Configuration block for the DKIM authentication settings for an email domain identity. See `dkimSigningAttributes` Block below.
  late final pulumi.Output<EmailIdentityDkimSigningAttributes> dkimSigningAttributes;
  /// Email address or domain to verify.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> emailIdentity;
  /// Email identity type. Valid values: `EMAIL_ADDRESS`, `DOMAIN`.
  late final pulumi.Output<String> identityType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Verification status of the identity. One of `PENDING`, `SUCCESS`, `FAILED`, `TEMPORARY_FAILURE`, and `NOT_STARTED`.
  late final pulumi.Output<String> verificationStatus;
  /// Whether the identity is verified.
  late final pulumi.Output<bool> verifiedForSendingStatus;

  /// Creates a new [EmailIdentity].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EmailIdentity]. {@macro pulumi_sesv2_email_identity_email_identity_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EmailIdentity(
    String name, {
    EmailIdentityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/emailIdentity:EmailIdentity',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    configurationSetName = registerOutput<String?>('configurationSetName');
    dkimSigningAttributes = registerOutput<EmailIdentityDkimSigningAttributes>('dkimSigningAttributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EmailIdentityDkimSigningAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    emailIdentity = registerOutput<String>('emailIdentity');
    identityType = registerOutput<String>('identityType');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    verificationStatus = registerOutput<String>('verificationStatus');
    verifiedForSendingStatus = registerOutput<bool>('verifiedForSendingStatus');
  }

  /// Gets an existing [EmailIdentity] resource's state with the given [name] and [id].
  static EmailIdentity get(
    String name,
    pulumi.Input<String> id, {
    EmailIdentityState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EmailIdentity._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EmailIdentity._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/emailIdentity:EmailIdentity',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    configurationSetName = registerOutput<String?>('configurationSetName');
    dkimSigningAttributes = registerOutput<EmailIdentityDkimSigningAttributes>('dkimSigningAttributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EmailIdentityDkimSigningAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    emailIdentity = registerOutput<String>('emailIdentity');
    identityType = registerOutput<String>('identityType');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    verificationStatus = registerOutput<String>('verificationStatus');
    verifiedForSendingStatus = registerOutput<bool>('verifiedForSendingStatus');
  }

  /// Creates a typed reference to an existing [EmailIdentity] resource.
  EmailIdentity.reference(String urn)
    : super(
        'aws:sesv2/emailIdentity:EmailIdentity',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    configurationSetName = registerOutput<String?>('configurationSetName');
    dkimSigningAttributes = registerOutput<EmailIdentityDkimSigningAttributes>('dkimSigningAttributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EmailIdentityDkimSigningAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    emailIdentity = registerOutput<String>('emailIdentity');
    identityType = registerOutput<String>('identityType');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    verificationStatus = registerOutput<String>('verificationStatus');
    verifiedForSendingStatus = registerOutput<bool>('verifiedForSendingStatus');
  }
}
