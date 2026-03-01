// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_mover_job_definition_mover_job_definition_args_doc}
/// The set of arguments for MoverJobDefinition.
/// {@endtemplate}
/// {@macro pulumi_storage_mover_job_definition_mover_job_definition_args_doc}
class MoverJobDefinitionArgs {
  /// Specifies the name of the Storage Mover Agent to assign for new Job Runs of this Storage Mover Job Definition.
  final pulumi.Input<String>? agentName;
  /// Specifies the strategy to use for copy. Possible values are `Additive` and `Mirror`.
  final pulumi.Input<String> copyMode;
  /// Specifies a description for this Storage Mover Job Definition.
  final pulumi.Input<String>? description;
  /// Specifies the name which should be used for this Storage Mover Job Definition. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Storage Mover Source Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String> sourceName;
  /// Specifies the sub path to use when reading from the Storage Mover Source Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sourceSubPath;
  /// Specifies the ID of the Storage Mover Project. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageMoverProjectId;
  /// Specifies the name of the Storage Mover target Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String> targetName;
  /// Specifies the sub path to use when writing to the Storage Mover Target Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? targetSubPath;

  /// Creates a new [MoverJobDefinitionArgs].
  /// [agentName] Specifies the name of the Storage Mover Agent to assign for new Job Runs of this Storage Mover Job Definition.
  /// [copyMode] Specifies the strategy to use for copy. Possible values are `Additive` and `Mirror`.
  /// [description] Specifies a description for this Storage Mover Job Definition.
  /// [name] Specifies the name which should be used for this Storage Mover Job Definition. Changing this forces a new resource to be created.
  /// [sourceName] Specifies the name of the Storage Mover Source Endpoint. Changing this forces a new resource to be created.
  /// [sourceSubPath] Specifies the sub path to use when reading from the Storage Mover Source Endpoint. Changing this forces a new resource to be created.
  /// [storageMoverProjectId] Specifies the ID of the Storage Mover Project. Changing this forces a new resource to be created.
  /// [targetName] Specifies the name of the Storage Mover target Endpoint. Changing this forces a new resource to be created.
  /// [targetSubPath] Specifies the sub path to use when writing to the Storage Mover Target Endpoint. Changing this forces a new resource to be created.
  MoverJobDefinitionArgs({
    String? agentName,
    required String copyMode,
    String? description,
    String? name,
    required String sourceName,
    String? sourceSubPath,
    required String storageMoverProjectId,
    required String targetName,
    String? targetSubPath,
  }) :
      agentName = pulumi.Input.asOptionalInput<String>(agentName),
      copyMode = pulumi.Input.asInput<String>(copyMode),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      sourceName = pulumi.Input.asInput<String>(sourceName),
      sourceSubPath = pulumi.Input.asOptionalInput<String>(sourceSubPath),
      storageMoverProjectId = pulumi.Input.asInput<String>(storageMoverProjectId),
      targetName = pulumi.Input.asInput<String>(targetName),
      targetSubPath = pulumi.Input.asOptionalInput<String>(targetSubPath);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentName': ?agentName,
      'copyMode': copyMode,
      'description': ?description,
      'name': ?name,
      'sourceName': sourceName,
      'sourceSubPath': ?sourceSubPath,
      'storageMoverProjectId': storageMoverProjectId,
      'targetName': targetName,
      'targetSubPath': ?targetSubPath,
    };
  }

  factory MoverJobDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return MoverJobDefinitionArgs(
      agentName: map['agentName'] == null ? null : map['agentName'] as String,
      copyMode: map['copyMode'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      sourceName: map['sourceName'] as String,
      sourceSubPath: map['sourceSubPath'] == null ? null : map['sourceSubPath'] as String,
      storageMoverProjectId: map['storageMoverProjectId'] as String,
      targetName: map['targetName'] as String,
      targetSubPath: map['targetSubPath'] == null ? null : map['targetSubPath'] as String,
    );
  }
}

