import 'package:pulumi/pulumi.dart';
import 'peering_args.dart';

/// Creates a Peering for Managed AD instance.
///
/// To get more information about Peering, see:
///
/// * [API documentation](https://cloud.google.com/managed-microsoft-ad/reference/rest/v1beta1/projects.locations.global.peerings)
/// * How-to Guides
/// * [Active Directory Domain Peering](https://cloud.google.com/managed-microsoft-ad/docs/domain-peering)
///
/// ## Example Usage
///
/// ### Active Directory Peering Basic
///
///
///
///
/// ## Import
///
/// This resource does not support import.
class Peering extends CustomResource {
  /// The full names of the Google Compute Engine networks to which the instance is connected. Caller needs to make sure that CIDR subnets do not overlap between networks, else peering creation will fail.
  late final Output<String> authorizedNetwork;

  /// Full domain resource path for the Managed AD Domain involved in peering. The resource path should be in the form projects/{projectId}/locations/global/domains/{domainName}
  late final Output<String> domainResource;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Resource labels that can contain user-provided metadata
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Unique name of the peering in this scope including projects and location using the form: projects/{projectId}/locations/global/peerings/{peeringId}.
  late final Output<String> name;

  /// (Required)
  late final Output<String> peeringId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The current state of this Peering.
  late final Output<String?> status;

  /// Additional information about the current status of this peering, if available.
  late final Output<String?> statusMessage;

  Peering(
    String name, {
    PeeringArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:activedirectory/peering:Peering',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.authorizedNetwork = registerOutput<String>('authorizedNetwork');
    this.domainResource = registerOutput<String>('domainResource');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.peeringId = registerOutput<String>('peeringId');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.status = registerOutput<String?>('status');
    this.statusMessage = registerOutput<String?>('statusMessage');
  }
}
