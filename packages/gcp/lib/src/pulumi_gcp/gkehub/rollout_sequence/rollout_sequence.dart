import 'package:pulumi/pulumi.dart';
import '../rollout_sequence_stage/rollout_sequence_stage.dart';
import 'rollout_sequence_args.dart';

/// RolloutSequence defines the desired order of upgrades.
///
/// To get more information about RolloutSequence, see:
///
/// * [API documentation](https://docs.cloud.google.com/kubernetes-engine/fleet-management/docs/reference/rest/v1beta/projects.locations.rolloutSequences)
/// * How-to Guides
/// * [Rollout Sequencing Overview](https://cloud.google.com/kubernetes-engine/docs/concepts/rollout-sequencing-custom-stages/about-rollout-sequencing)
///
/// ## Import
///
/// RolloutSequence can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/rolloutSequences/{{rollout_sequence_id}}`
///
/// * `{{project}}/{{rollout_sequence_id}}`
///
/// * `{{rollout_sequence_id}}`
///
/// When using the `pulumi import` command, RolloutSequence can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkehub/rolloutSequence:RolloutSequence default projects/{{project}}/locations/global/rolloutSequences/{{rollout_sequence_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkehub/rolloutSequence:RolloutSequence default {{project}}/{{rollout_sequence_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkehub/rolloutSequence:RolloutSequence default {{rollout_sequence_id}}
/// ```
class RolloutSequence extends CustomResource {
  /// The timestamp at which the Rollout Sequence was created.
  late final Output<String> createTime;

  /// The timestamp at the Rollout Sequence was deleted.
  late final Output<String> deleteTime;

  /// Human readable display name of the Rollout Sequence.
  late final Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// etag of the Rollout Sequence.
  late final Output<String> etag;

  /// Labels for this Rollout Sequence.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The full resource name of the RolloutSequence.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The user-provided identifier of the RolloutSequence.
  late final Output<String> rolloutSequenceId;

  /// Ordered list of stages that constitute this Rollout Sequence.
  /// Structure is documented below.
  late final Output<List<RolloutSequenceStage>> stages;

  /// Google-generated UUID for this resource.
  late final Output<String> uid;

  /// The timestamp at which the Rollout Sequence was last updated.
  late final Output<String> updateTime;

  RolloutSequence(
    String name, {
    RolloutSequenceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/rolloutSequence:RolloutSequence',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.deleteTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String?>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.etag = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.rolloutSequenceId = Output.createUnknown<String>();
    this.stages = Output.createUnknown<List<RolloutSequenceStage>>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
