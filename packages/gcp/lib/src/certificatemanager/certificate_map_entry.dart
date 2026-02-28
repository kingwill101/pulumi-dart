import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_map_entry_args.dart';

/// CertificateMapEntry is a list of certificate configurations,
/// that have been issued for a particular hostname
///
///
///
/// ## Example Usage
///
/// ### Certificate Manager Certificate Map Entry Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const certificateMap = new gcp.certificatemanager.CertificateMap("certificate_map", {
///     name: "cert-map-entry",
///     description: "My acceptance test certificate map",
///     labels: {
///         terraform: "true",
///         "acc-test": "true",
///     },
/// });
/// const instance = new gcp.certificatemanager.DnsAuthorization("instance", {
///     name: "dns-auth",
///     description: "The default dnss",
///     domain: "subdomain.hashicorptest.com",
/// });
/// const instance2 = new gcp.certificatemanager.DnsAuthorization("instance2", {
///     name: "dns-auth2",
///     description: "The default dnss",
///     domain: "subdomain2.hashicorptest.com",
/// });
/// const certificate = new gcp.certificatemanager.Certificate("certificate", {
///     name: "cert-map-entry",
///     description: "The default cert",
///     scope: "DEFAULT",
///     managed: {
///         domains: [
///             instance.domain,
///             instance2.domain,
///         ],
///         dnsAuthorizations: [
///             instance.id,
///             instance2.id,
///         ],
///     },
/// });
/// const _default = new gcp.certificatemanager.CertificateMapEntry("default", {
///     name: "cert-map-entry",
///     description: "My acceptance test certificate map entry",
///     map: certificateMap.name,
///     labels: {
///         terraform: "true",
///         "acc-test": "true",
///     },
///     certificates: [certificate.id],
///     matcher: "PRIMARY",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// certificate_map = gcp.certificatemanager.CertificateMap("certificate_map",
///     name="cert-map-entry",
///     description="My acceptance test certificate map",
///     labels={
///         "terraform": "true",
///         "acc-test": "true",
///     })
/// instance = gcp.certificatemanager.DnsAuthorization("instance",
///     name="dns-auth",
///     description="The default dnss",
///     domain="subdomain.hashicorptest.com")
/// instance2 = gcp.certificatemanager.DnsAuthorization("instance2",
///     name="dns-auth2",
///     description="The default dnss",
///     domain="subdomain2.hashicorptest.com")
/// certificate = gcp.certificatemanager.Certificate("certificate",
///     name="cert-map-entry",
///     description="The default cert",
///     scope="DEFAULT",
///     managed={
///         "domains": [
///             instance.domain,
///             instance2.domain,
///         ],
///         "dns_authorizations": [
///             instance.id,
///             instance2.id,
///         ],
///     })
/// default = gcp.certificatemanager.CertificateMapEntry("default",
///     name="cert-map-entry",
///     description="My acceptance test certificate map entry",
///     map=certificate_map.name,
///     labels={
///         "terraform": "true",
///         "acc-test": "true",
///     },
///     certificates=[certificate.id],
///     matcher="PRIMARY")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var certificateMap = new Gcp.CertificateManager.CertificateMap("certificate_map", new()
///     {
///         Name = "cert-map-entry",
///         Description = "My acceptance test certificate map",
///         Labels =
///         {
///             { "terraform", "true" },
///             { "acc-test", "true" },
///         },
///     });
///
///     var instance = new Gcp.CertificateManager.DnsAuthorization("instance", new()
///     {
///         Name = "dns-auth",
///         Description = "The default dnss",
///         Domain = "subdomain.hashicorptest.com",
///     });
///
///     var instance2 = new Gcp.CertificateManager.DnsAuthorization("instance2", new()
///     {
///         Name = "dns-auth2",
///         Description = "The default dnss",
///         Domain = "subdomain2.hashicorptest.com",
///     });
///
///     var certificate = new Gcp.CertificateManager.Certificate("certificate", new()
///     {
///         Name = "cert-map-entry",
///         Description = "The default cert",
///         Scope = "DEFAULT",
///         Managed = new Gcp.CertificateManager.Inputs.CertificateManagedArgs
///         {
///             Domains = new[]
///             {
///                 instance.Domain,
///                 instance2.Domain,
///             },
///             DnsAuthorizations = new[]
///             {
///                 instance.Id,
///                 instance2.Id,
///             },
///         },
///     });
///
///     var @default = new Gcp.CertificateManager.CertificateMapEntry("default", new()
///     {
///         Name = "cert-map-entry",
///         Description = "My acceptance test certificate map entry",
///         Map = certificateMap.Name,
///         Labels =
///         {
///             { "terraform", "true" },
///             { "acc-test", "true" },
///         },
///         Certificates = new[]
///         {
///             certificate.Id,
///         },
///         Matcher = "PRIMARY",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificatemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		certificateMap, err := certificatemanager.NewCertificateMapResource(ctx, "certificate_map", &certificatemanager.CertificateMapResourceArgs{
/// 			Name:        pulumi.String("cert-map-entry"),
/// 			Description: pulumi.String("My acceptance test certificate map"),
/// 			Labels: pulumi.StringMap{
/// 				"terraform": pulumi.String("true"),
/// 				"acc-test":  pulumi.String("true"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instance, err := certificatemanager.NewDnsAuthorization(ctx, "instance", &certificatemanager.DnsAuthorizationArgs{
/// 			Name:        pulumi.String("dns-auth"),
/// 			Description: pulumi.String("The default dnss"),
/// 			Domain:      pulumi.String("subdomain.hashicorptest.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instance2, err := certificatemanager.NewDnsAuthorization(ctx, "instance2", &certificatemanager.DnsAuthorizationArgs{
/// 			Name:        pulumi.String("dns-auth2"),
/// 			Description: pulumi.String("The default dnss"),
/// 			Domain:      pulumi.String("subdomain2.hashicorptest.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		certificate, err := certificatemanager.NewCertificate(ctx, "certificate", &certificatemanager.CertificateArgs{
/// 			Name:        pulumi.String("cert-map-entry"),
/// 			Description: pulumi.String("The default cert"),
/// 			Scope:       pulumi.String("DEFAULT"),
/// 			Managed: &certificatemanager.CertificateManagedArgs{
/// 				Domains: pulumi.StringArray{
/// 					instance.Domain,
/// 					instance2.Domain,
/// 				},
/// 				DnsAuthorizations: pulumi.StringArray{
/// 					instance.ID(),
/// 					instance2.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = certificatemanager.NewCertificateMapEntry(ctx, "default", &certificatemanager.CertificateMapEntryArgs{
/// 			Name:        pulumi.String("cert-map-entry"),
/// 			Description: pulumi.String("My acceptance test certificate map entry"),
/// 			Map:         certificateMap.Name,
/// 			Labels: pulumi.StringMap{
/// 				"terraform": pulumi.String("true"),
/// 				"acc-test":  pulumi.String("true"),
/// 			},
/// 			Certificates: pulumi.StringArray{
/// 				certificate.ID(),
/// 			},
/// 			Matcher: pulumi.String("PRIMARY"),
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
/// import com.pulumi.gcp.certificatemanager.CertificateMap;
/// import com.pulumi.gcp.certificatemanager.CertificateMapArgs;
/// import com.pulumi.gcp.certificatemanager.DnsAuthorization;
/// import com.pulumi.gcp.certificatemanager.DnsAuthorizationArgs;
/// import com.pulumi.gcp.certificatemanager.Certificate;
/// import com.pulumi.gcp.certificatemanager.CertificateArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.CertificateManagedArgs;
/// import com.pulumi.gcp.certificatemanager.CertificateMapEntry;
/// import com.pulumi.gcp.certificatemanager.CertificateMapEntryArgs;
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
///         var certificateMap = new CertificateMap("certificateMap", CertificateMapArgs.builder()
///             .name("cert-map-entry")
///             .description("My acceptance test certificate map")
///             .labels(Map.ofEntries(
///                 Map.entry("terraform", "true"),
///                 Map.entry("acc-test", "true")
///             ))
///             .build());
///
///         var instance = new DnsAuthorization("instance", DnsAuthorizationArgs.builder()
///             .name("dns-auth")
///             .description("The default dnss")
///             .domain("subdomain.hashicorptest.com")
///             .build());
///
///         var instance2 = new DnsAuthorization("instance2", DnsAuthorizationArgs.builder()
///             .name("dns-auth2")
///             .description("The default dnss")
///             .domain("subdomain2.hashicorptest.com")
///             .build());
///
///         var certificate = new Certificate("certificate", CertificateArgs.builder()
///             .name("cert-map-entry")
///             .description("The default cert")
///             .scope("DEFAULT")
///             .managed(CertificateManagedArgs.builder()
///                 .domains(
///                     instance.domain(),
///                     instance2.domain())
///                 .dnsAuthorizations(
///                     instance.id(),
///                     instance2.id())
///                 .build())
///             .build());
///
///         var default_ = new CertificateMapEntry("default", CertificateMapEntryArgs.builder()
///             .name("cert-map-entry")
///             .description("My acceptance test certificate map entry")
///             .map(certificateMap.name())
///             .labels(Map.ofEntries(
///                 Map.entry("terraform", "true"),
///                 Map.entry("acc-test", "true")
///             ))
///             .certificates(certificate.id())
///             .matcher("PRIMARY")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   certificateMap:
///     type: gcp:certificatemanager:CertificateMap
///     name: certificate_map
///     properties:
///       name: cert-map-entry
///       description: My acceptance test certificate map
///       labels:
///         terraform: true
///         acc-test: true
///   default:
///     type: gcp:certificatemanager:CertificateMapEntry
///     properties:
///       name: cert-map-entry
///       description: My acceptance test certificate map entry
///       map: ${certificateMap.name}
///       labels:
///         terraform: true
///         acc-test: true
///       certificates:
///         - ${certificate.id}
///       matcher: PRIMARY
///   certificate:
///     type: gcp:certificatemanager:Certificate
///     properties:
///       name: cert-map-entry
///       description: The default cert
///       scope: DEFAULT
///       managed:
///         domains:
///           - ${instance.domain}
///           - ${instance2.domain}
///         dnsAuthorizations:
///           - ${instance.id}
///           - ${instance2.id}
///   instance:
///     type: gcp:certificatemanager:DnsAuthorization
///     properties:
///       name: dns-auth
///       description: The default dnss
///       domain: subdomain.hashicorptest.com
///   instance2:
///     type: gcp:certificatemanager:DnsAuthorization
///     properties:
///       name: dns-auth2
///       description: The default dnss
///       domain: subdomain2.hashicorptest.com
/// ```
///
///
/// ## Import
///
/// CertificateMapEntry can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/certificateMaps/{{map}}/certificateMapEntries/{{name}}`
///
/// * `{{project}}/{{map}}/{{name}}`
///
/// * `{{map}}/{{name}}`
///
/// When using the `pulumi import` command, CertificateMapEntry can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/certificateMapEntry:CertificateMapEntry default projects/{{project}}/locations/global/certificateMaps/{{map}}/certificateMapEntries/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/certificateMapEntry:CertificateMapEntry default {{project}}/{{map}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/certificateMapEntry:CertificateMapEntry default {{map}}/{{name}}
/// ```
class CertificateMapEntry extends pulumi.CustomResource {
  /// A set of Certificates defines for the given hostname.
  /// There can be defined up to fifteen certificates in each Certificate Map Entry.
  /// Each certificate must match pattern projects/*/locations/*/certificates/*.
  late final pulumi.Output<List<String>> certificates;

  /// Creation timestamp of a Certificate Map Entry. Timestamp in RFC3339 UTC "Zulu" format,
  /// with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;

  /// A human-readable description of the resource.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// A Hostname (FQDN, e.g. example.com) or a wildcard hostname expression (*.example.com)
  /// for a set of hostnames with common suffix. Used as Server Name Indication (SNI) for
  /// selecting a proper certificate.
  late final pulumi.Output<String?> hostname;

  /// Set of labels associated with a Certificate Map Entry.
  /// An object containing a list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// A map entry that is inputted into the certificate map
  late final pulumi.Output<String> map;

  /// A predefined matcher for particular cases, other than SNI selection
  late final pulumi.Output<String?> matcher;

  /// A user-defined name of the Certificate Map Entry. Certificate Map Entry
  /// names must be unique globally and match pattern
  /// 'projects/*/locations/*/certificateMaps/*/certificateMapEntries/*'
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// A serving state of this Certificate Map Entry.
  late final pulumi.Output<String> state;

  /// Update timestamp of a Certificate Map Entry. Timestamp in RFC3339 UTC "Zulu" format,
  /// with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [CertificateMapEntry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CertificateMapEntry]. {@macro pulumi_certificatemanager_certificate_map_entry_certificate_map_entry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CertificateMapEntry(
    String name, {
    CertificateMapEntryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:certificatemanager/certificateMapEntry:CertificateMapEntry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.certificates = registerOutput<List<String>>('certificates');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.hostname = registerOutput<String?>('hostname');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.map = registerOutput<String>('map');
    this.matcher = registerOutput<String?>('matcher');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
