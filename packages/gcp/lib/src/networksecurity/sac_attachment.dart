import 'package:pulumi/pulumi.dart' as pulumi;
import 'sac_attachment_args.dart';
import 'sac_attachment_symantec_options.dart';

/// Represents a Secure Access Connect (SAC) attachment resource
///
/// To get more information about SacAttachment, see:
///
/// * [API documentation](https://cloud.google.com/secure-access-connect/docs/reference/network-security/rest/v1beta1/projects.locations.sacAttachments)
/// * How-to Guides
/// * [QUICKSTART_TITLE](https://cloud.google.com/secure-access-connect/docs/overview)
///
/// ## Example Usage
///
/// ### Sac Attachment Prisma Access
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.SacAttachment("default", {
///     name: "sac-attachment-name",
///     location: "us-central1",
///     labels: {
///         "label-one": "value-one",
///     },
///     nccGateway: "ncc_gateway_spoke_name",
///     sacRealm: "sac_realm_name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.SacAttachment("default",
///     name="sac-attachment-name",
///     location="us-central1",
///     labels={
///         "label-one": "value-one",
///     },
///     ncc_gateway="ncc_gateway_spoke_name",
///     sac_realm="sac_realm_name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkSecurity.SacAttachment("default", new()
///     {
///         Name = "sac-attachment-name",
///         Location = "us-central1",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         NccGateway = "ncc_gateway_spoke_name",
///         SacRealm = "sac_realm_name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networksecurity.NewSacAttachment(ctx, "default", &networksecurity.SacAttachmentArgs{
/// 			Name:     pulumi.String("sac-attachment-name"),
/// 			Location: pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			NccGateway: pulumi.String("ncc_gateway_spoke_name"),
/// 			SacRealm:   pulumi.String("sac_realm_name"),
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
/// import com.pulumi.gcp.networksecurity.SacAttachment;
/// import com.pulumi.gcp.networksecurity.SacAttachmentArgs;
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
///         var default_ = new SacAttachment("default", SacAttachmentArgs.builder()
///             .name("sac-attachment-name")
///             .location("us-central1")
///             .labels(Map.of("label-one", "value-one"))
///             .nccGateway("ncc_gateway_spoke_name")
///             .sacRealm("sac_realm_name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networksecurity:SacAttachment
///     properties:
///       name: sac-attachment-name
///       location: us-central1
///       labels:
///         label-one: value-one
///       nccGateway: ncc_gateway_spoke_name
///       sacRealm: sac_realm_name
/// ```
///
///
/// ## Import
///
/// SacAttachment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/sacAttachments/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, SacAttachment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/sacAttachment:SacAttachment default projects/{{project}}/locations/{{location}}/sacAttachments/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/sacAttachment:SacAttachment default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/sacAttachment:SacAttachment default {{location}}/{{name}}
/// ```
class SacAttachment extends pulumi.CustomResource {
  /// Case-insensitive ISO-3166 alpha-2 country code used for localization. Only valid for Symantec attachments.
  late final pulumi.Output<String?> country;

  /// Timestamp when the realm was created.
  late final pulumi.Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location of the SACAttachment resource. eg us-central1
  late final pulumi.Output<String> location;

  /// Identifier. Resource name
  late final pulumi.Output<String> name;

  /// NCC Gateway associated with the attachment. This can be input as an ID or a full resource name.
  late final pulumi.Output<String> nccGateway;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// SAC Realm which owns the attachment. This can be input as an ID or a full resource name.
  late final pulumi.Output<String> sacRealm;

  /// State of the attachment.
  late final pulumi.Output<String> state;

  /// Configuration required for Symantec attachments.
  /// Structure is documented below.
  late final pulumi.Output<SacAttachmentSymantecOptions?> symantecOptions;

  /// Case-sensitive tzinfo identifier used for localization. Only valid for Symantec attachments.
  late final pulumi.Output<String?> timeZone;

  /// Timestamp when the realm was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [SacAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SacAttachment]. {@macro pulumi_networksecurity_sac_attachment_sac_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SacAttachment(
    String name, {
    SacAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/sacAttachment:SacAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.country = registerOutput<String?>('country');
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.nccGateway = registerOutput<String>('nccGateway');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.sacRealm = registerOutput<String>('sacRealm');
    this.state = registerOutput<String>('state');
    this.symantecOptions =
        registerOutput<SacAttachmentSymantecOptions?>('symantecOptions');
    this.timeZone = registerOutput<String?>('timeZone');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
