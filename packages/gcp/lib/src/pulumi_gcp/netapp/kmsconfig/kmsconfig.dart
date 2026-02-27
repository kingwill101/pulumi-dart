import 'package:pulumi/pulumi.dart' as pulumi;
import 'kmsconfig_args.dart';

/// NetApp Volumes always encrypts your data at rest using volume-specific keys.
///
/// A CMEK policy (customer-managed encryption key) warps such volume-specific keys in a key stored in Cloud Key Management Service (KMS).
///
///
/// To get more information about kmsconfig, see:
///
/// * [API documentation](https://cloud.google.com/netapp/volumes/docs/reference/rest/v1/projects.locations.kmsConfigs)
/// * How-to Guides
/// * [Documentation](https://cloud.google.com/netapp/volumes/docs/configure-and-use/cmek/cmek-overview)
///
/// ## Example Usage
///
/// ### Kms Config Create
///
///
///
///
/// ## Import
///
/// kmsconfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/kmsConfigs/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, kmsconfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:netapp/kmsconfig:Kmsconfig default projects/{{project}}/locations/{{location}}/kmsConfigs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/kmsconfig:Kmsconfig default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/kmsconfig:Kmsconfig default {{location}}/{{name}}
/// ```
class Kmsconfig extends pulumi.CustomResource {
  /// Resource name of the KMS key to use. Only regional keys are supported. Format: `projects/{{project}}/locations/{{location}}/keyRings/{{key_ring}}/cryptoKeys/{{key}}`.
  late final pulumi.Output<String> cryptoKeyName;

  /// Description for the CMEK policy.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Access to the key needs to be granted. The instructions contain gcloud commands to run to grant access.
  /// To make the policy work, a CMEK policy check is required, which verifies key access.
  late final pulumi.Output<String> instructions;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Name of the policy location. CMEK policies apply to the whole region.
  late final pulumi.Output<String> location;

  /// Name of the CMEK policy.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The Service account which needs to have access to the  provided KMS key.
  late final pulumi.Output<String> serviceAccount;

  Kmsconfig(
    String name, {
    KmsconfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:netapp/kmsconfig:Kmsconfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cryptoKeyName = registerOutput<String>('cryptoKeyName');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.instructions = registerOutput<String>('instructions');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.serviceAccount = registerOutput<String>('serviceAccount');
  }
}
