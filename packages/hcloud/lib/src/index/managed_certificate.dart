import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_certificate_args.dart';

/// Obtain a Hetzner Cloud managed TLS certificate.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const managedCert = new hcloud.ManagedCertificate("managed_cert", {
///     name: "managed_cert",
///     domainNames: [
///         "*.example.com",
///         "example.com",
///     ],
///     labels: {
///         label_1: "value_1",
///         label_2: "value_2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// managed_cert = hcloud.ManagedCertificate("managed_cert",
///     name="managed_cert",
///     domain_names=[
///         "*.example.com",
///         "example.com",
///     ],
///     labels={
///         "label_1": "value_1",
///         "label_2": "value_2",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedCert = new HCloud.ManagedCertificate("managed_cert", new()
///     {
///         Name = "managed_cert",
///         DomainNames = new[]
///         {
///             "*.example.com",
///             "example.com",
///         },
///         Labels =
///         {
///             { "label_1", "value_1" },
///             { "label_2", "value_2" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.NewManagedCertificate(ctx, "managed_cert", &hcloud.ManagedCertificateArgs{
/// 			Name: pulumi.String("managed_cert"),
/// 			DomainNames: pulumi.StringArray{
/// 				pulumi.String("*.example.com"),
/// 				pulumi.String("example.com"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"label_1": pulumi.String("value_1"),
/// 				"label_2": pulumi.String("value_2"),
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
/// import com.pulumi.hcloud.ManagedCertificate;
/// import com.pulumi.hcloud.ManagedCertificateArgs;
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
///         var managedCert = new ManagedCertificate("managedCert", ManagedCertificateArgs.builder()
///             .name("managed_cert")
///             .domainNames(
///                 "*.example.com",
///                 "example.com")
///             .labels(Map.ofEntries(
///                 Map.entry("label_1", "value_1"),
///                 Map.entry("label_2", "value_2")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   managedCert:
///     type: hcloud:ManagedCertificate
///     name: managed_cert
///     properties:
///       name: managed_cert
///       domainNames:
///         - '*.example.com'
///         - example.com
///       labels:
///         label_1: value_1
///         label_2: value_2
/// ```
///
///
/// ## Import
///
/// Managed certificates can be imported using their `id`:
///
/// ```sh
/// $ pulumi import hcloud:index/managedCertificate:ManagedCertificate example "$CERTIFICATE_ID"
/// ```
class ManagedCertificate extends pulumi.CustomResource {
  /// (string) PEM encoded TLS certificate.
  late final pulumi.Output<String> certificate;
  /// (string) Point in time when the Certificate was created at Hetzner Cloud (in ISO-8601 format).
  late final pulumi.Output<String> created;
  /// Domain names for which a certificate
  /// should be obtained.
  late final pulumi.Output<List<String>> domainNames;
  /// (string) Fingerprint of the certificate.
  late final pulumi.Output<String> fingerprint;
  /// User-defined labels (key-value pairs) the
  /// certificate should be created with.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Name of the Certificate.
  late final pulumi.Output<String> name;
  /// (string) Point in time when the Certificate stops being valid (in ISO-8601 format).
  late final pulumi.Output<String> notValidAfter;
  /// (string) Point in time when the Certificate becomes valid (in ISO-8601 format).
  late final pulumi.Output<String> notValidBefore;
  late final pulumi.Output<String> type;

  /// Creates a new [ManagedCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedCertificate]. {@macro pulumi_index_managed_certificate_managed_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedCertificate(
    String name, {
    ManagedCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/managedCertificate:ManagedCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.certificate = registerOutput<String>('certificate');
    this.created = registerOutput<String>('created');
    this.domainNames = registerOutput<List<String>>('domainNames');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.notValidAfter = registerOutput<String>('notValidAfter');
    this.notValidBefore = registerOutput<String>('notValidBefore');
    this.type = registerOutput<String>('type');
  }
}
