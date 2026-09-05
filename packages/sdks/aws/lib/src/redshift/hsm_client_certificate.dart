import 'package:pulumi/pulumi.dart' as pulumi;
import 'hsm_client_certificate_args.dart';
import 'hsm_client_certificate_state.dart';

/// Creates an HSM client certificate that an Amazon Redshift cluster will use to connect to the client's HSM in order to store and retrieve the keys used to encrypt the cluster databases.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshift.HsmClientCertificate("example", {hsmClientCertificateIdentifier: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.HsmClientCertificate("example", hsm_client_certificate_identifier="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.RedShift.HsmClientCertificate("example", new()
///     {
///         HsmClientCertificateIdentifier = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redshift.NewHsmClientCertificate(ctx, "example", &redshift.HsmClientCertificateArgs{
/// 			HsmClientCertificateIdentifier: pulumi.String("example"),
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
/// resource "aws_redshift_hsmclientcertificate" "example" {
///   hsm_client_certificate_identifier = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshift.HsmClientCertificate;
/// import com.pulumi.aws.redshift.HsmClientCertificateArgs;
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
///         var example = new HsmClientCertificate("example", HsmClientCertificateArgs.builder()
///             .hsmClientCertificateIdentifier("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:redshift:HsmClientCertificate
///     properties:
///       hsmClientCertificateIdentifier: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift HSM Client Certificates using `hsmClientCertificateIdentifier`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/hsmClientCertificate:HsmClientCertificate test example
/// ```
class HsmClientCertificate extends pulumi.CustomResource {
  /// ARN of the Hsm Client Certificate.
  late final pulumi.Output<String> arn;
  /// The identifier of the HSM client certificate.
  late final pulumi.Output<String> hsmClientCertificateIdentifier;
  /// The public key that the Amazon Redshift cluster will use to connect to the HSM. You must register the public key in the HSM.
  late final pulumi.Output<String> hsmClientCertificatePublicKey;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [HsmClientCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HsmClientCertificate]. {@macro pulumi_redshift_hsm_client_certificate_hsm_client_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HsmClientCertificate(
    String name, {
    HsmClientCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/hsmClientCertificate:HsmClientCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    hsmClientCertificateIdentifier = registerOutput<String>('hsmClientCertificateIdentifier');
    hsmClientCertificatePublicKey = registerOutput<String>('hsmClientCertificatePublicKey');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [HsmClientCertificate] resource's state with the given [name] and [id].
  static HsmClientCertificate get(
    String name,
    pulumi.Input<String> id, {
    HsmClientCertificateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return HsmClientCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  HsmClientCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/hsmClientCertificate:HsmClientCertificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    hsmClientCertificateIdentifier = registerOutput<String>('hsmClientCertificateIdentifier');
    hsmClientCertificatePublicKey = registerOutput<String>('hsmClientCertificatePublicKey');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [HsmClientCertificate] resource.
  HsmClientCertificate.reference(String urn)
    : super(
        'aws:redshift/hsmClientCertificate:HsmClientCertificate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    hsmClientCertificateIdentifier = registerOutput<String>('hsmClientCertificateIdentifier');
    hsmClientCertificatePublicKey = registerOutput<String>('hsmClientCertificatePublicKey');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
