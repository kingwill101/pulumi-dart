import 'package:pulumi/pulumi.dart' as pulumi;
import 'trusted_token_issuer_args.dart';
import 'trusted_token_issuer_state.dart';
import 'trusted_token_issuer_trusted_token_issuer_configuration.dart';

/// Resource for managing an AWS SSO Admin Trusted Token Issuer.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getInstances({});
/// const exampleTrustedTokenIssuer = new aws.ssoadmin.TrustedTokenIssuer("example", {
///     trustedTokenIssuerConfiguration: {
///         oidcJwtConfiguration: {
///             claimAttributePath: "email",
///             identityStoreAttributePath: "emails.value",
///             issuerUrl: "https://example.com",
///             jwksRetrievalOption: "OPEN_ID_DISCOVERY",
///         },
///     },
///     name: "example",
///     instanceArn: example.then(example => example.arns?.[0]),
///     trustedTokenIssuerType: "OIDC_JWT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_trusted_token_issuer = aws.ssoadmin.TrustedTokenIssuer("example",
///     trusted_token_issuer_configuration={
///         "oidc_jwt_configuration": {
///             "claim_attribute_path": "email",
///             "identity_store_attribute_path": "emails.value",
///             "issuer_url": "https://example.com",
///             "jwks_retrieval_option": "OPEN_ID_DISCOVERY",
///         },
///     },
///     name="example",
///     instance_arn=example.arns[0],
///     trusted_token_issuer_type="OIDC_JWT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SsoAdmin.GetInstances.Invoke();
///
///     var exampleTrustedTokenIssuer = new Aws.SsoAdmin.TrustedTokenIssuer("example", new()
///     {
///         TrustedTokenIssuerConfiguration = new Aws.SsoAdmin.Inputs.TrustedTokenIssuerTrustedTokenIssuerConfigurationArgs
///         {
///             OidcJwtConfiguration = new Aws.SsoAdmin.Inputs.TrustedTokenIssuerTrustedTokenIssuerConfigurationOidcJwtConfigurationArgs
///             {
///                 ClaimAttributePath = "email",
///                 IdentityStoreAttributePath = "emails.value",
///                 IssuerUrl = "https://example.com",
///                 JwksRetrievalOption = "OPEN_ID_DISCOVERY",
///             },
///         },
///         Name = "example",
///         InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
///         TrustedTokenIssuerType = "OIDC_JWT",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ssoadmin.GetInstances(ctx, &ssoadmin.GetInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ssoadmin.NewTrustedTokenIssuer(ctx, "example", &ssoadmin.TrustedTokenIssuerArgs{
/// 			TrustedTokenIssuerConfiguration: &ssoadmin.TrustedTokenIssuerTrustedTokenIssuerConfigurationArgs{
/// 				OidcJwtConfiguration: &ssoadmin.TrustedTokenIssuerTrustedTokenIssuerConfigurationOidcJwtConfigurationArgs{
/// 					ClaimAttributePath:         pulumi.String("email"),
/// 					IdentityStoreAttributePath: pulumi.String("emails.value"),
/// 					IssuerUrl:                  pulumi.String("https://example.com"),
/// 					JwksRetrievalOption:        pulumi.String("OPEN_ID_DISCOVERY"),
/// 				},
/// 			},
/// 			Name:                   pulumi.String("example"),
/// 			InstanceArn:            pulumi.String(example.Arns[0]),
/// 			TrustedTokenIssuerType: pulumi.String("OIDC_JWT"),
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
/// data "aws_ssoadmin_getinstances" "example" {
/// }
///
/// resource "aws_ssoadmin_trustedtokenissuer" "example" {
///   trusted_token_issuer_configuration = {
///     oidc_jwt_configuration = {
///       claim_attribute_path          = "email"
///       identity_store_attribute_path = "emails.value"
///       issuer_url                    = "https://example.com"
///       jwks_retrieval_option         = "OPEN_ID_DISCOVERY"
///     }
///   }
///   name                      = "example"
///   instance_arn              = data.aws_ssoadmin_getinstances.example.arns[0]
///   trusted_token_issuer_type = "OIDC_JWT"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetInstancesArgs;
/// import com.pulumi.aws.ssoadmin.TrustedTokenIssuer;
/// import com.pulumi.aws.ssoadmin.TrustedTokenIssuerArgs;
/// import com.pulumi.aws.ssoadmin.inputs.TrustedTokenIssuerTrustedTokenIssuerConfigurationArgs;
/// import com.pulumi.aws.ssoadmin.inputs.TrustedTokenIssuerTrustedTokenIssuerConfigurationOidcJwtConfigurationArgs;
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
///         final var example = SsoadminFunctions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         var exampleTrustedTokenIssuer = new TrustedTokenIssuer("exampleTrustedTokenIssuer", TrustedTokenIssuerArgs.builder()
///             .trustedTokenIssuerConfiguration(TrustedTokenIssuerTrustedTokenIssuerConfigurationArgs.builder()
///                 .oidcJwtConfiguration(TrustedTokenIssuerTrustedTokenIssuerConfigurationOidcJwtConfigurationArgs.builder()
///                     .claimAttributePath("email")
///                     .identityStoreAttributePath("emails.value")
///                     .issuerUrl("https://example.com")
///                     .jwksRetrievalOption("OPEN_ID_DISCOVERY")
///                     .build())
///                 .build())
///             .name("example")
///             .instanceArn(example.arns()[0])
///             .trustedTokenIssuerType("OIDC_JWT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleTrustedTokenIssuer:
///     type: aws:ssoadmin:TrustedTokenIssuer
///     name: example
///     properties:
///       trustedTokenIssuerConfiguration:
///         oidcJwtConfiguration:
///           claimAttributePath: email
///           identityStoreAttributePath: emails.value
///           issuerUrl: https://example.com
///           jwksRetrievalOption: OPEN_ID_DISCOVERY
///       name: example
///       instanceArn: ${example.arns[0]}
///       trustedTokenIssuerType: OIDC_JWT
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getInstances
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `arn` (String) ARN of the Trusted Token Issuer.
///
/// #### Optional
///
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SSO Admin Trusted Token Issuer using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/trustedTokenIssuer:TrustedTokenIssuer example arn:aws:sso::123456789012:trustedTokenIssuer/ssoins-lu1ye3gew4mbc7ju/tti-2657c556-9707-11ee-b9d1-0242ac120002
/// ```
class TrustedTokenIssuer extends pulumi.CustomResource {
  /// ARN of the trusted token issuer.
  late final pulumi.Output<String> arn;
  /// A unique, case-sensitive ID that you provide to ensure the idempotency of the request. AWS generates a random value when not provided.
  late final pulumi.Output<String?> clientToken;
  /// ARN of the instance of IAM Identity Center.
  late final pulumi.Output<String> instanceArn;
  /// Name of the trusted token issuer.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// A block that specifies settings that apply to the trusted token issuer, these change depending on the type you specify in `trustedTokenIssuerType`. Documented below.
  late final pulumi.Output<TrustedTokenIssuerTrustedTokenIssuerConfiguration> trustedTokenIssuerConfiguration;
  /// Specifies the type of the trusted token issuer. Valid values are `OIDC_JWT`
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> trustedTokenIssuerType;

  /// Creates a new [TrustedTokenIssuer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrustedTokenIssuer]. {@macro pulumi_ssoadmin_trusted_token_issuer_trusted_token_issuer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrustedTokenIssuer(
    String name, {
    TrustedTokenIssuerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/trustedTokenIssuer:TrustedTokenIssuer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    clientToken = registerOutput<String?>('clientToken');
    instanceArn = registerOutput<String>('instanceArn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    trustedTokenIssuerConfiguration = registerOutput<TrustedTokenIssuerTrustedTokenIssuerConfiguration>('trustedTokenIssuerConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrustedTokenIssuerTrustedTokenIssuerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    trustedTokenIssuerType = registerOutput<String>('trustedTokenIssuerType');
  }

  /// Gets an existing [TrustedTokenIssuer] resource's state with the given [name] and [id].
  static TrustedTokenIssuer get(
    String name,
    pulumi.Input<String> id, {
    TrustedTokenIssuerState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TrustedTokenIssuer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TrustedTokenIssuer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/trustedTokenIssuer:TrustedTokenIssuer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    clientToken = registerOutput<String?>('clientToken');
    instanceArn = registerOutput<String>('instanceArn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    trustedTokenIssuerConfiguration = registerOutput<TrustedTokenIssuerTrustedTokenIssuerConfiguration>('trustedTokenIssuerConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrustedTokenIssuerTrustedTokenIssuerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    trustedTokenIssuerType = registerOutput<String>('trustedTokenIssuerType');
  }

  /// Creates a typed reference to an existing [TrustedTokenIssuer] resource.
  TrustedTokenIssuer.reference(String urn)
    : super(
        'aws:ssoadmin/trustedTokenIssuer:TrustedTokenIssuer',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    clientToken = registerOutput<String?>('clientToken');
    instanceArn = registerOutput<String>('instanceArn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    trustedTokenIssuerConfiguration = registerOutput<TrustedTokenIssuerTrustedTokenIssuerConfiguration>('trustedTokenIssuerConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrustedTokenIssuerTrustedTokenIssuerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    trustedTokenIssuerType = registerOutput<String>('trustedTokenIssuerType');
  }
}
