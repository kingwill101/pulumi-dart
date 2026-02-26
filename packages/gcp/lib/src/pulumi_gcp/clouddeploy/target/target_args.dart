// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
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
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveAnnotations`" pulumi-lang-dotnet="`EffectiveAnnotations`" pulumi-lang-go="`effectiveAnnotations`" pulumi-lang-python="`effective_annotations`" pulumi-lang-yaml="`effectiveAnnotations`" pulumi-lang-java="`effectiveAnnotations`">`effective_annotations`</span> for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

  /// Information specifying an Anthos Cluster.
  final Input<TargetAnthosCluster>? anthosCluster;

  /// Optional. Map of entity IDs to their associated entities. Associated entities allows specifying places other than the deployment target for specific features. For example, the Gateway API canary can be configured to deploy the HTTPRoute to a different cluster(s) than the deployment cluster using associated entities. An entity ID must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^a-z?$`.
  final Input<List<TargetAssociatedEntity>>? associatedEntities;

  /// Optional. Information specifying a Custom Target.
  final Input<TargetCustomTarget>? customTarget;

  /// Optional. The deploy parameters to use for this target.
  final Input<Map<String, String>>? deployParameters;

  /// Optional. Description of the `Target`. Max length is 255 characters.
  final Input<String>? description;

  /// Configurations for all execution that relates to this `Target`. Each `ExecutionEnvironmentUsage` value may only be used in a single configuration; using the same value multiple times is an error. When one or more configurations are specified, they must include the `RENDER` and `DEPLOY` `ExecutionEnvironmentUsage` values. When no configurations are specified, execution will use the default specified in `DefaultPool`.
  final Input<List<TargetExecutionConfig>>? executionConfigs;

  /// Information specifying a GKE Cluster.
  final Input<TargetGke>? gke;

  /// Optional. Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location for the resource
  final Input<String> location;

  /// Information specifying a multiTarget.
  final Input<TargetMultiTarget>? multiTarget;

  /// Name of the `Target`. Format is `a-z?`.
  ///
  ///
  ///
  /// - - -
  final Input<String>? name;

  /// The project for the resource
  final Input<String>? project;

  /// Optional. Whether or not the `Target` requires approval.
  final Input<bool>? requireApproval;

  /// Information specifying a Cloud Run deployment target.
  final Input<TargetRun>? run;

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
      map['anthosCluster'] = Input.mapOptionalInputValue<TargetAnthosCluster,
          Map<String, dynamic>>(anthosClusterValue, (value) => value.toMap());
    }
    final associatedEntitiesValue = associatedEntities;
    if (associatedEntitiesValue != null) {
      map['associatedEntities'] = Input.mapOptionalInputValue<
              List<TargetAssociatedEntity>, List<Map<String, dynamic>>>(
          associatedEntitiesValue,
          (value) =>
              Input.encodeList<TargetAssociatedEntity, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final customTargetValue = customTarget;
    if (customTargetValue != null) {
      map['customTarget'] =
          Input.mapOptionalInputValue<TargetCustomTarget, Map<String, dynamic>>(
              customTargetValue, (value) => value.toMap());
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
      map['executionConfigs'] = Input.mapOptionalInputValue<
              List<TargetExecutionConfig>, List<Map<String, dynamic>>>(
          executionConfigsValue,
          (value) =>
              Input.encodeList<TargetExecutionConfig, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final gkeValue = gke;
    if (gkeValue != null) {
      map['gke'] = Input.mapOptionalInputValue<TargetGke, Map<String, dynamic>>(
          gkeValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final multiTargetValue = multiTarget;
    if (multiTargetValue != null) {
      map['multiTarget'] =
          Input.mapOptionalInputValue<TargetMultiTarget, Map<String, dynamic>>(
              multiTargetValue, (value) => value.toMap());
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
      map['run'] = Input.mapOptionalInputValue<TargetRun, Map<String, dynamic>>(
          runValue, (value) => value.toMap());
    }
    return map;
  }

  factory TargetArgs.fromMap(Map<String, dynamic> map) {
    return TargetArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      anthosCluster:
          Input.asOptionalInput<TargetAnthosCluster>(map['anthosCluster']),
      associatedEntities: Input.asOptionalInput<List<TargetAssociatedEntity>>(
          map['associatedEntities']),
      customTarget:
          Input.asOptionalInput<TargetCustomTarget>(map['customTarget']),
      deployParameters:
          Input.asOptionalInput<Map<String, String>>(map['deployParameters']),
      description: Input.asOptionalInput<String>(map['description']),
      executionConfigs: Input.asOptionalInput<List<TargetExecutionConfig>>(
          map['executionConfigs']),
      gke: Input.asOptionalInput<TargetGke>(map['gke']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      multiTarget: Input.asOptionalInput<TargetMultiTarget>(map['multiTarget']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      requireApproval: Input.asOptionalInput<bool>(map['requireApproval']),
      run: Input.asOptionalInput<TargetRun>(map['run']),
    );
  }
}
