import 'package:pulumi/pulumi.dart' as pulumi;
import 'uploaded_certificate_args.dart';

/// Upload a TLS certificate to Hetzner Cloud.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const sampleCertificate = new hcloud.UploadedCertificate("sample_certificate", {
///     name: "test-certificate-%d",
///     privateKey: `-----BEGIN RSA PRIVATE KEY-----
/// MIIEpQIBAAKCAQEAorPccsHibgGLJIub5Sb1yvDvARifoKzg7MIhyAYLnJkGn9B1
/// ...
/// AHcjLFCNvobInLHTTmCoAxYBmEv2eakas0+n4g/LM2Ukaw1Bz+3VrVo=
/// -----END RSA PRIVATE KEY-----
/// `,
///     certificate: `-----BEGIN CERTIFICATE-----
/// MIIDMDCCAhigAwIBAgIIJgROscP8RRUwDQYJKoZIhvcNAQELBQAwIDEeMBwGA1UE
/// ...
/// TKS8gQ==
/// -----END CERTIFICATE-----
/// `,
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
/// sample_certificate = hcloud.UploadedCertificate("sample_certificate",
///     name="test-certificate-%d",
///     private_key="""-----BEGIN RSA PRIVATE KEY-----
/// MIIEpQIBAAKCAQEAorPccsHibgGLJIub5Sb1yvDvARifoKzg7MIhyAYLnJkGn9B1
/// ...
/// AHcjLFCNvobInLHTTmCoAxYBmEv2eakas0+n4g/LM2Ukaw1Bz+3VrVo=
/// -----END RSA PRIVATE KEY-----
/// """,
///     certificate="""-----BEGIN CERTIFICATE-----
/// MIIDMDCCAhigAwIBAgIIJgROscP8RRUwDQYJKoZIhvcNAQELBQAwIDEeMBwGA1UE
/// ...
/// TKS8gQ==
/// -----END CERTIFICATE-----
/// """,
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
///     var sampleCertificate = new HCloud.UploadedCertificate("sample_certificate", new()
///     {
///         Name = "test-certificate-%d",
///         PrivateKey = @"-----BEGIN RSA PRIVATE KEY-----
/// MIIEpQIBAAKCAQEAorPccsHibgGLJIub5Sb1yvDvARifoKzg7MIhyAYLnJkGn9B1
/// ...
/// AHcjLFCNvobInLHTTmCoAxYBmEv2eakas0+n4g/LM2Ukaw1Bz+3VrVo=
/// -----END RSA PRIVATE KEY-----
/// ",
///         Certificate = @"-----BEGIN CERTIFICATE-----
/// MIIDMDCCAhigAwIBAgIIJgROscP8RRUwDQYJKoZIhvcNAQELBQAwIDEeMBwGA1UE
/// ...
/// TKS8gQ==
/// -----END CERTIFICATE-----
/// ",
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
/// 		_, err := hcloud.NewUploadedCertificate(ctx, "sample_certificate", &hcloud.UploadedCertificateArgs{
/// 			Name: pulumi.String("test-certificate-%d"),
/// 			PrivateKey: pulumi.String(`-----BEGIN RSA PRIVATE KEY-----
/// MIIEpQIBAAKCAQEAorPccsHibgGLJIub5Sb1yvDvARifoKzg7MIhyAYLnJkGn9B1
/// ...
/// AHcjLFCNvobInLHTTmCoAxYBmEv2eakas0+n4g/LM2Ukaw1Bz+3VrVo=
/// -----END RSA PRIVATE KEY-----
/// `),
/// 			Certificate: pulumi.String(`-----BEGIN CERTIFICATE-----
/// MIIDMDCCAhigAwIBAgIIJgROscP8RRUwDQYJKoZIhvcNAQELBQAwIDEeMBwGA1UE
/// ...
/// TKS8gQ==
/// -----END CERTIFICATE-----
/// `),
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
/// import com.pulumi.hcloud.UploadedCertificate;
/// import com.pulumi.hcloud.UploadedCertificateArgs;
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
///         var sampleCertificate = new UploadedCertificate("sampleCertificate", UploadedCertificateArgs.builder()
///             .name("test-certificate-%d")
///             .privateKey("""
/// -----BEGIN RSA PRIVATE KEY-----
/// MIIEpQIBAAKCAQEAorPccsHibgGLJIub5Sb1yvDvARifoKzg7MIhyAYLnJkGn9B1
/// ...
/// AHcjLFCNvobInLHTTmCoAxYBmEv2eakas0+n4g/LM2Ukaw1Bz+3VrVo=
/// -----END RSA PRIVATE KEY-----
///             """)
///             .certificate("""
/// -----BEGIN CERTIFICATE-----
/// MIIDMDCCAhigAwIBAgIIJgROscP8RRUwDQYJKoZIhvcNAQELBQAwIDEeMBwGA1UE
/// ...
/// TKS8gQ==
/// -----END CERTIFICATE-----
///             """)
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
///   sampleCertificate:
///     type: hcloud:UploadedCertificate
///     name: sample_certificate
///     properties:
///       name: test-certificate-%d
///       privateKey: |
///         -----BEGIN RSA PRIVATE KEY-----
///         MIIEpQIBAAKCAQEAorPccsHibgGLJIub5Sb1yvDvARifoKzg7MIhyAYLnJkGn9B1
///         ...
///         AHcjLFCNvobInLHTTmCoAxYBmEv2eakas0+n4g/LM2Ukaw1Bz+3VrVo=
///         -----END RSA PRIVATE KEY-----
///       certificate: |
///         -----BEGIN CERTIFICATE-----
///         MIIDMDCCAhigAwIBAgIIJgROscP8RRUwDQYJKoZIhvcNAQELBQAwIDEeMBwGA1UE
///         ...
///         TKS8gQ==
///         -----END CERTIFICATE-----
///       labels:
///         label_1: value_1
///         label_2: value_2
/// ```
///
///
/// ## Import
///
/// Uploaded certificates can be imported using their `id`:
///
/// ```sh
/// $ pulumi import hcloud:index/uploadedCertificate:UploadedCertificate example "$CERTIFICATE_ID"
/// ```
class UploadedCertificate extends pulumi.CustomResource {
  /// PEM encoded TLS certificate.
  late final pulumi.Output<String> certificate;
  /// (string) Point in time when the Certificate was created at Hetzner Cloud (in ISO-8601 format).
  late final pulumi.Output<String> created;
  /// (list) Domains and subdomains covered by the certificate.
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
  /// PEM encoded private key belonging to the certificate.
  late final pulumi.Output<String> privateKey;
  late final pulumi.Output<String> type;

  /// Creates a new [UploadedCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UploadedCertificate]. {@macro pulumi_index_uploaded_certificate_uploaded_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UploadedCertificate(
    String name, {
    UploadedCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/uploadedCertificate:UploadedCertificate',
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
    this.privateKey = registerOutput<String>('privateKey');
    this.type = registerOutput<String>('type');
  }
}
