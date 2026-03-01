import 'package:pulumi/pulumi.dart' as pulumi;
import 'rollout_sequence_args.dart';
import 'rollout_sequence_stage.dart';

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
class RolloutSequence extends pulumi.CustomResource {
  /// The timestamp at which the Rollout Sequence was created.
  late final pulumi.Output<String> createTime;
  /// The timestamp at the Rollout Sequence was deleted.
  late final pulumi.Output<String> deleteTime;
  /// Human readable display name of the Rollout Sequence.
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// etag of the Rollout Sequence.
  late final pulumi.Output<String> etag;
  /// Labels for this Rollout Sequence.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The full resource name of the RolloutSequence.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The user-provided identifier of the RolloutSequence.
  late final pulumi.Output<String> rolloutSequenceId;
  /// Ordered list of stages that constitute this Rollout Sequence.
  /// Structure is documented below.
  late final pulumi.Output<List<RolloutSequenceStage>> stages;
  /// Google-generated UUID for this resource.
  late final pulumi.Output<String> uid;
  /// The timestamp at which the Rollout Sequence was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [RolloutSequence].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RolloutSequence]. {@macro pulumi_gkehub_rollout_sequence_rollout_sequence_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RolloutSequence(
    String name, {
    RolloutSequenceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/rolloutSequence:RolloutSequence',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.rolloutSequenceId = registerOutput<String>('rolloutSequenceId');
    this.stages = registerOutput<List<RolloutSequenceStage>>('stages');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
