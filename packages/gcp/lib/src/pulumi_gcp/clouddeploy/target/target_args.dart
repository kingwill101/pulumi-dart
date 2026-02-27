// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../target_anthos_cluster/target_anthos_cluster.dart';
import '../target_associated_entity/target_associated_entity.dart';
import '../target_custom_target/target_custom_target.dart';
import '../target_execution_config/target_execution_config.dart';
import '../target_gke/target_gke.dart';
import '../target_multi_target/target_multi_target.dart';
import '../target_run/target_run.dart';

/// The set of arguments for Target.
class TargetArgs {
  /// Optional. User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Information specifying an Anthos Cluster.
  final pulumi.Input<TargetAnthosCluster>? anthosCluster;

  /// Optional. Map of entity IDs to their associated entities. Associated entities allows specifying places other than the deployment target for specific features. For example, the Gateway API canary can be configured to deploy the HTTPRoute to a different cluster(s) than the deployment cluster using associated entities. An entity ID must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^a-z?$`.
  final pulumi.Input<List<TargetAssociatedEntity>>? associatedEntities;

  /// Optional. Information specifying a Custom Target.
  final pulumi.Input<TargetCustomTarget>? customTarget;

  /// Optional. The deploy parameters to use for this target.
  final pulumi.Input<Map<String, String>>? deployParameters;

  /// Optional. Description of the `Target`. Max length is 255 characters.
  final pulumi.Input<String>? description;

  /// Configurations for all execution that relates to this `Target`. Each `ExecutionEnvironmentUsage` value may only be used in a single configuration; using the same value multiple times is an error. When one or more configurations are specified, they must include the `RENDER` and `DEPLOY` `ExecutionEnvironmentUsage` values. When no configurations are specified, execution will use the default specified in `DefaultPool`.
  final pulumi.Input<List<TargetExecutionConfig>>? executionConfigs;

  /// Information specifying a GKE Cluster.
  final pulumi.Input<TargetGke>? gke;

  /// Optional. Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location for the resource
  final pulumi.Input<String> location;

  /// Information specifying a multiTarget.
  final pulumi.Input<TargetMultiTarget>? multiTarget;

  /// Name of the `Target`. Format is `a-z?`.
  ///
  ///
  ///
  /// - - -
  final pulumi.Input<String>? name;

  /// The project for the resource
  final pulumi.Input<String>? project;

  /// Optional. Whether or not the `Target` requires approval.
  final pulumi.Input<bool>? requireApproval;

  /// Information specifying a Cloud Run deployment target.
  final pulumi.Input<TargetRun>? run;

  TargetArgs({
    this.annotations,
    this.anthosCluster,
    this.associatedEntities,
    this.customTarget,
    this.deployParameters,
    this.description,
    this.executionConfigs,
    this.gke,
    this.labels,
    required this.location,
    this.multiTarget,
    this.name,
    this.project,
    this.requireApproval,
    this.run,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final anthosClusterValue = anthosCluster;
    if (anthosClusterValue != null) {
      map['anthosCluster'] = pulumi.Input.mapOptionalInputValue<
          TargetAnthosCluster,
          Map<String, dynamic>>(anthosClusterValue, (value) => value.toMap());
    }
    final associatedEntitiesValue = associatedEntities;
    if (associatedEntitiesValue != null) {
      map['associatedEntities'] = pulumi.Input.mapOptionalInputValue<
              List<TargetAssociatedEntity>, List<Map<String, dynamic>>>(
          associatedEntitiesValue,
          (value) => pulumi.Input.encodeList<TargetAssociatedEntity,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final customTargetValue = customTarget;
    if (customTargetValue != null) {
      map['customTarget'] = pulumi.Input.mapOptionalInputValue<
          TargetCustomTarget,
          Map<String, dynamic>>(customTargetValue, (value) => value.toMap());
    }
    final deployParametersValue = deployParameters;
    if (deployParametersValue != null) {
      map['deployParameters'] = deployParametersValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final executionConfigsValue = executionConfigs;
    if (executionConfigsValue != null) {
      map['executionConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<TargetExecutionConfig>, List<Map<String, dynamic>>>(
          executionConfigsValue,
          (value) => pulumi.Input.encodeList<TargetExecutionConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final gkeValue = gke;
    if (gkeValue != null) {
      map['gke'] =
          pulumi.Input.mapOptionalInputValue<TargetGke, Map<String, dynamic>>(
              gkeValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final multiTargetValue = multiTarget;
    if (multiTargetValue != null) {
      map['multiTarget'] = pulumi.Input.mapOptionalInputValue<TargetMultiTarget,
          Map<String, dynamic>>(multiTargetValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requireApprovalValue = requireApproval;
    if (requireApprovalValue != null) {
      map['requireApproval'] = requireApprovalValue;
    }
    final runValue = run;
    if (runValue != null) {
      map['run'] =
          pulumi.Input.mapOptionalInputValue<TargetRun, Map<String, dynamic>>(
              runValue, (value) => value.toMap());
    }
    return map;
  }

  factory TargetArgs.fromMap(Map<String, dynamic> map) {
    return TargetArgs(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      anthosCluster: pulumi.Input.asOptionalInput<TargetAnthosCluster>(
          map['anthosCluster']),
      associatedEntities:
          pulumi.Input.asOptionalInput<List<TargetAssociatedEntity>>(
              map['associatedEntities']),
      customTarget:
          pulumi.Input.asOptionalInput<TargetCustomTarget>(map['customTarget']),
      deployParameters: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['deployParameters']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      executionConfigs:
          pulumi.Input.asOptionalInput<List<TargetExecutionConfig>>(
              map['executionConfigs']),
      gke: pulumi.Input.asOptionalInput<TargetGke>(map['gke']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      multiTarget:
          pulumi.Input.asOptionalInput<TargetMultiTarget>(map['multiTarget']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requireApproval:
          pulumi.Input.asOptionalInput<bool>(map['requireApproval']),
      run: pulumi.Input.asOptionalInput<TargetRun>(map['run']),
    );
  }
}
