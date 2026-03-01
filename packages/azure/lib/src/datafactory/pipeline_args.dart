// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_pipeline_pipeline_args_doc}
/// The set of arguments for Pipeline.
/// {@endtemplate}
/// {@macro pulumi_datafactory_pipeline_pipeline_args_doc}
class PipelineArgs {
  /// A JSON object that contains the activities that will be associated with the Data Factory Pipeline.
  final pulumi.Input<String>? activitiesJson;
  /// List of tags that can be used for describing the Data Factory Pipeline.
  final pulumi.Input<List<String>>? annotations;
  /// The max number of concurrent runs for the Data Factory Pipeline. Must be between `1` and `50`.
  final pulumi.Input<int>? concurrency;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Pipeline.
  final pulumi.Input<String>? description;
  /// The folder that this Pipeline is in. If not specified, the Pipeline will appear at the root level.
  final pulumi.Input<String>? folder;
  /// The TimeSpan value after which an Azure Monitoring Metric is fired.
  final pulumi.Input<String>? moniterMetricsAfterDuration;
  /// Specifies the name of the Data Factory Pipeline. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Pipeline.
  final pulumi.Input<Map<String, String>>? parameters;
  /// A map of variables to associate with the Data Factory Pipeline.
  final pulumi.Input<Map<String, String>>? variables;

  /// Creates a new [PipelineArgs].
  /// [activitiesJson] A JSON object that contains the activities that will be associated with the Data Factory Pipeline.
  /// [annotations] List of tags that can be used for describing the Data Factory Pipeline.
  /// [concurrency] The max number of concurrent runs for the Data Factory Pipeline. Must be between `1` and `50`.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Pipeline.
  /// [folder] The folder that this Pipeline is in. If not specified, the Pipeline will appear at the root level.
  /// [moniterMetricsAfterDuration] The TimeSpan value after which an Azure Monitoring Metric is fired.
  /// [name] Specifies the name of the Data Factory Pipeline. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Pipeline.
  /// [variables] A map of variables to associate with the Data Factory Pipeline.
  PipelineArgs({
    String? activitiesJson,
    List<String>? annotations,
    int? concurrency,
    required String dataFactoryId,
    String? description,
    String? folder,
    String? moniterMetricsAfterDuration,
    String? name,
    Map<String, String>? parameters,
    Map<String, String>? variables,
  }) :
      activitiesJson = pulumi.Input.asOptionalInput<String>(activitiesJson),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      concurrency = pulumi.Input.asOptionalInput<int>(concurrency),
      dataFactoryId = pulumi.Input.asInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      folder = pulumi.Input.asOptionalInput<String>(folder),
      moniterMetricsAfterDuration = pulumi.Input.asOptionalInput<String>(moniterMetricsAfterDuration),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      variables = pulumi.Input.asOptionalInput<Map<String, String>>(variables);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activitiesJson': ?activitiesJson,
      'annotations': ?annotations,
      'concurrency': ?concurrency,
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'folder': ?folder,
      'moniterMetricsAfterDuration': ?moniterMetricsAfterDuration,
      'name': ?name,
      'parameters': ?parameters,
      'variables': ?variables,
    };
  }

  factory PipelineArgs.fromMap(Map<String, dynamic> map) {
    return PipelineArgs(
      activitiesJson: map['activitiesJson'] == null ? null : map['activitiesJson'] as String,
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<String>(),
      concurrency: map['concurrency'] == null ? null : map['concurrency'] as int,
      dataFactoryId: map['dataFactoryId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      folder: map['folder'] == null ? null : map['folder'] as String,
      moniterMetricsAfterDuration: map['moniterMetricsAfterDuration'] == null ? null : map['moniterMetricsAfterDuration'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
      variables: map['variables'] == null ? null : (map['variables'] as Map).cast<String, String>(),
    );
  }
}

