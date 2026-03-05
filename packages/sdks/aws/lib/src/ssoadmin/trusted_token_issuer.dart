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
///     name: "example",
///     instanceArn: example.then(example => example.arns?.[0]),
///     trustedTokenIssuerType: "OIDC_JWT",
///     trustedTokenIssuerConfiguration: {
///         oidcJwtConfiguration: {
///             claimAttributePath: "email",
///             identityStoreAttributePath: "emails.value",
///             issuerUrl: "https://example.com",
///             jwksRetrievalOption: "OPEN_ID_DISCOVERY",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_trusted_token_issuer = aws.ssoadmin.TrustedTokenIssuer("example",
///     name="example",
///     instance_arn=example.arns[0],
///     trusted_token_issuer_type="OIDC_JWT",
///     trusted_token_issuer_configuration={
///         "oidc_jwt_configuration": {
///             "claim_attribute_path": "email",
///             "identity_store_attribute_path": "emails.value",
///             "issuer_url": "https://example.com",
///             "jwks_retrieval_option": "OPEN_ID_DISCOVERY",
///         },
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
///     var example = Aws.SsoAdmin.GetInstances.Invoke();
///
///     var exampleTrustedTokenIssuer = new Aws.SsoAdmin.TrustedTokenIssuer("example", new()
///     {
///         Name = "example",
///         InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
///         TrustedTokenIssuerType = "OIDC_JWT",
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
/// 			Name:                   pulumi.String("example"),
/// 			InstanceArn:            pulumi.String(example.Arns[0]),
/// 			TrustedTokenIssuerType: pulumi.String("OIDC_JWT"),
/// 			TrustedTokenIssuerConfiguration: &ssoadmin.TrustedTokenIssuerTrustedTokenIssuerConfigurationArgs{
/// 				OidcJwtConfiguration: &ssoadmin.TrustedTokenIssuerTrustedTokenIssuerConfigurationOidcJwtConfigurationArgs{
/// 					ClaimAttributePath:         pulumi.String("email"),
/// 					IdentityStoreAttributePath: pulumi.String("emails.value"),
/// 					IssuerUrl:                  pulumi.String("https://example.com"),
/// 					JwksRetrievalOption:        pulumi.String("OPEN_ID_DISCOVERY"),
/// 				},
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
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetInstancesArgs;
/// import com.pulumi.aws.ssoadmin.TrustedTokenIssuer;
/// import com.pulumi.aws.ssoadmin.TrustedTokenIssuerArgs;
/// import com.pulumi.aws.ssoadmin.inputs.TrustedTokenIssuerTrustedTokenIssuerConfigurationArgs;
/// import com.pulumi.aws.ssoadmin.inputs.TrustedTokenIssuerTrustedTokenIssuerConfigurationOidcJwtConfigurationArgs;
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
///         final var example = SsoadminFunctions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         var exampleTrustedTokenIssuer = new TrustedTokenIssuer("exampleTrustedTokenIssuer", TrustedTokenIssuerArgs.builder()
///             .name("example")
///             .instanceArn(example.arns()[0])
///             .trustedTokenIssuerType("OIDC_JWT")
///             .trustedTokenIssuerConfiguration(TrustedTokenIssuerTrustedTokenIssuerConfigurationArgs.builder()
///                 .oidcJwtConfiguration(TrustedTokenIssuerTrustedTokenIssuerConfigurationOidcJwtConfigurationArgs.builder()
///                     .claimAttributePath("email")
///                     .identityStoreAttributePath("emails.value")
///                     .issuerUrl("https://example.com")
///                     .jwksRetrievalOption("OPEN_ID_DISCOVERY")
///                     .build())
///                 .build())
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
///       name: example
///       instanceArn: ${example.arns[0]}
///       trustedTokenIssuerType: OIDC_JWT
///       trustedTokenIssuerConfiguration:
///         oidcJwtConfiguration:
///           claimAttributePath: email
///           identityStoreAttributePath: emails.value
///           issuerUrl: https://example.com
///           jwksRetrievalOption: OPEN_ID_DISCOVERY
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
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// A block that specifies settings that apply to the trusted token issuer, these change depending on the type you specify in `trusted_token_issuer_type`. Documented below.
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    clientToken = registerOutput<String?>('clientToken');
    instanceArn = registerOutput<String>('instanceArn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    trustedTokenIssuerConfiguration = registerOutput<TrustedTokenIssuerTrustedTokenIssuerConfiguration>('trustedTokenIssuerConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrustedTokenIssuerTrustedTokenIssuerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    trustedTokenIssuerType = registerOutput<String>('trustedTokenIssuerType');
  }

  /// Gets an existing [TrustedTokenIssuer] resource's state with the given [name] and [id].
  static TrustedTokenIssuer get(
    String name,
    pulumi.Input<String> id, {
    TrustedTokenIssuerState? state,
  }) {
    return TrustedTokenIssuer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    trustedTokenIssuerConfiguration = registerOutput<TrustedTokenIssuerTrustedTokenIssuerConfiguration>('trustedTokenIssuerConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrustedTokenIssuerTrustedTokenIssuerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    trustedTokenIssuerType = registerOutput<String>('trustedTokenIssuerType');
  }
}
