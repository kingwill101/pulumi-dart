import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_authorization_args.dart';
import 'dns_authorization_dns_resource_record.dart';

/// DnsAuthorization represents a HTTP-reachable backend for a DnsAuthorization.
///
///
///
/// ## Example Usage
///
/// ### Certificate Manager Dns Authorization Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.certificatemanager.DnsAuthorization("default", {
///     name: "dns-auth",
///     location: "global",
///     description: "The default dns",
///     domain: "subdomain.hashicorptest.com",
/// });
/// export const recordNameToInsert = _default.dnsResourceRecords.apply(dnsResourceRecords => dnsResourceRecords[0].name);
/// export const recordTypeToInsert = _default.dnsResourceRecords.apply(dnsResourceRecords => dnsResourceRecords[0].type);
/// export const recordDataToInsert = _default.dnsResourceRecords.apply(dnsResourceRecords => dnsResourceRecords[0].data);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.certificatemanager.DnsAuthorization("default",
///     name="dns-auth",
///     location="global",
///     description="The default dns",
///     domain="subdomain.hashicorptest.com")
/// pulumi.export("recordNameToInsert", default.dns_resource_records[0].name)
/// pulumi.export("recordTypeToInsert", default.dns_resource_records[0].type)
/// pulumi.export("recordDataToInsert", default.dns_resource_records[0].data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.CertificateManager.DnsAuthorization("default", new()
///     {
///         Name = "dns-auth",
///         Location = "global",
///         Description = "The default dns",
///         Domain = "subdomain.hashicorptest.com",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["recordNameToInsert"] = @default.DnsResourceRecords.Apply(dnsResourceRecords => dnsResourceRecords[0].Name),
///         ["recordTypeToInsert"] = @default.DnsResourceRecords.Apply(dnsResourceRecords => dnsResourceRecords[0].Type),
///         ["recordDataToInsert"] = @default.DnsResourceRecords.Apply(dnsResourceRecords => dnsResourceRecords[0].Data),
///     };
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
/// 		_default, err := certificatemanager.NewDnsAuthorization(ctx, "default", &certificatemanager.DnsAuthorizationArgs{
/// 			Name:        pulumi.String("dns-auth"),
/// 			Location:    pulumi.String("global"),
/// 			Description: pulumi.String("The default dns"),
/// 			Domain:      pulumi.String("subdomain.hashicorptest.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("recordNameToInsert", _default.DnsResourceRecords.ApplyT(func(dnsResourceRecords []certificatemanager.DnsAuthorizationDnsResourceRecord) (*string, error) {
/// 			return &dnsResourceRecords[0].Name, nil
/// 		}).(pulumi.StringPtrOutput))
/// 		ctx.Export("recordTypeToInsert", _default.DnsResourceRecords.ApplyT(func(dnsResourceRecords []certificatemanager.DnsAuthorizationDnsResourceRecord) (*string, error) {
/// 			return &dnsResourceRecords[0].Type, nil
/// 		}).(pulumi.StringPtrOutput))
/// 		ctx.Export("recordDataToInsert", _default.DnsResourceRecords.ApplyT(func(dnsResourceRecords []certificatemanager.DnsAuthorizationDnsResourceRecord) (*string, error) {
/// 			return &dnsResourceRecords[0].Data, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.gcp.certificatemanager.DnsAuthorization;
/// import com.pulumi.gcp.certificatemanager.DnsAuthorizationArgs;
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
///         var default_ = new DnsAuthorization("default", DnsAuthorizationArgs.builder()
///             .name("dns-auth")
///             .location("global")
///             .description("The default dns")
///             .domain("subdomain.hashicorptest.com")
///             .build());
///
///         ctx.export("recordNameToInsert", default_.dnsResourceRecords().applyValue(_dnsResourceRecords -> _dnsResourceRecords[0].name()));
///         ctx.export("recordTypeToInsert", default_.dnsResourceRecords().applyValue(_dnsResourceRecords -> _dnsResourceRecords[0].type()));
///         ctx.export("recordDataToInsert", default_.dnsResourceRecords().applyValue(_dnsResourceRecords -> _dnsResourceRecords[0].data()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:certificatemanager:DnsAuthorization
///     properties:
///       name: dns-auth
///       location: global
///       description: The default dns
///       domain: subdomain.hashicorptest.com
/// outputs:
///   recordNameToInsert: ${default.dnsResourceRecords[0].name}
///   recordTypeToInsert: ${default.dnsResourceRecords[0].type}
///   recordDataToInsert: ${default.dnsResourceRecords[0].data}
/// ```
///
/// ### Certificate Manager Dns Authorization Regional
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.certificatemanager.DnsAuthorization("default", {
///     name: "dns-auth",
///     location: "us-central1",
///     description: "reginal dns",
///     type: "PER_PROJECT_RECORD",
///     domain: "subdomain.hashicorptest.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.certificatemanager.DnsAuthorization("default",
///     name="dns-auth",
///     location="us-central1",
///     description="reginal dns",
///     type="PER_PROJECT_RECORD",
///     domain="subdomain.hashicorptest.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.CertificateManager.DnsAuthorization("default", new()
///     {
///         Name = "dns-auth",
///         Location = "us-central1",
///         Description = "reginal dns",
///         Type = "PER_PROJECT_RECORD",
///         Domain = "subdomain.hashicorptest.com",
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
/// 		_, err := certificatemanager.NewDnsAuthorization(ctx, "default", &certificatemanager.DnsAuthorizationArgs{
/// 			Name:        pulumi.String("dns-auth"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("reginal dns"),
/// 			Type:        pulumi.String("PER_PROJECT_RECORD"),
/// 			Domain:      pulumi.String("subdomain.hashicorptest.com"),
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
/// import com.pulumi.gcp.certificatemanager.DnsAuthorization;
/// import com.pulumi.gcp.certificatemanager.DnsAuthorizationArgs;
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
///         var default_ = new DnsAuthorization("default", DnsAuthorizationArgs.builder()
///             .name("dns-auth")
///             .location("us-central1")
///             .description("reginal dns")
///             .type("PER_PROJECT_RECORD")
///             .domain("subdomain.hashicorptest.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:certificatemanager:DnsAuthorization
///     properties:
///       name: dns-auth
///       location: us-central1
///       description: reginal dns
///       type: PER_PROJECT_RECORD
///       domain: subdomain.hashicorptest.com
/// ```
///
///
/// ## Import
///
/// DnsAuthorization can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/dnsAuthorizations/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, DnsAuthorization can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/dnsAuthorization:DnsAuthorization default projects/{{project}}/locations/{{location}}/dnsAuthorizations/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/dnsAuthorization:DnsAuthorization default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/dnsAuthorization:DnsAuthorization default {{location}}/{{name}}
/// ```
class DnsAuthorization extends pulumi.CustomResource {
  /// A human-readable description of the resource.
  late final pulumi.Output<String?> description;

  /// The structure describing the DNS Resource Record that needs to be added
  /// to DNS configuration for the authorization to be usable by
  /// certificate.
  /// Structure is documented below.
  late final pulumi.Output<List<DnsAuthorizationDnsResourceRecord>>
  dnsResourceRecords;

  /// A domain which is being authorized. A DnsAuthorization resource covers a
  /// single domain and its wildcard, e.g. authorization for "example.com" can
  /// be used to issue certificates for "example.com" and "*.example.com".
  late final pulumi.Output<String> domain;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Set of label tags associated with the DNS Authorization resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The Certificate Manager location. If not specified, "global" is used.
  late final pulumi.Output<String?> location;

  /// Name of the resource; provided by the client when the resource is created.
  /// The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
  /// and all following characters must be a dash, underscore, letter or digit.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// type of DNS authorization. If unset during the resource creation, FIXED_RECORD will
  /// be used for global resources, and PER_PROJECT_RECORD will be used for other locations.
  /// FIXED_RECORD DNS authorization uses DNS-01 validation method
  /// PER_PROJECT_RECORD DNS authorization allows for independent management
  /// of Google-managed certificates with DNS authorization across multiple
  /// projects.
  /// Possible values are: `FIXED_RECORD`, `PER_PROJECT_RECORD`.
  late final pulumi.Output<String> type;

  /// Creates a new [DnsAuthorization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DnsAuthorization]. {@macro pulumi_certificatemanager_dns_authorization_dns_authorization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DnsAuthorization(
    String name, {
    DnsAuthorizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:certificatemanager/dnsAuthorization:DnsAuthorization',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.description = registerOutput<String?>('description');
    this.dnsResourceRecords =
        registerOutput<List<DnsAuthorizationDnsResourceRecord>>(
          'dnsResourceRecords',
        );
    this.domain = registerOutput<String>('domain');
    this.effectiveLabels = registerOutput<Map<String, String>>(
      'effectiveLabels',
    );
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.type = registerOutput<String>('type');
  }
}
