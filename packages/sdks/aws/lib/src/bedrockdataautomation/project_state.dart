// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_custom_output_configuration.dart';
import 'project_data_automation_library_configuration.dart';
import 'project_encryption_configuration.dart';
import 'project_override_configuration.dart';
import 'project_standard_output_configuration.dart';
import 'project_timeouts.dart';

/// Input properties used for looking up and filtering Project resources.
class ProjectState {
  /// ARN of the project.
  final pulumi.Input<String?>? arn;
  /// Time the project was created, in RFC3339 format.
  final pulumi.Input<String?>? creationTime;
  /// Blueprints used for custom output. See `customOutputConfiguration` Block below.
  final pulumi.Input<ProjectCustomOutputConfiguration?>? customOutputConfiguration;
  /// Data automation libraries used by the project. See `dataAutomationLibraryConfiguration` Block below.
  final pulumi.Input<ProjectDataAutomationLibraryConfiguration?>? dataAutomationLibraryConfiguration;
  /// Description of the project.
  final pulumi.Input<String?>? description;
  /// Encryption settings for the project. See `encryptionConfiguration` Block below.
  final pulumi.Input<ProjectEncryptionConfiguration?>? encryptionConfiguration;
  /// Time the project was last modified, in RFC3339 format.
  final pulumi.Input<String?>? lastModifiedTime;
  /// Name of the project. Changing this value forces a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Processing overrides for each modality. See `overrideConfiguration` Block below.
  final pulumi.Input<ProjectOverrideConfiguration?>? overrideConfiguration;
  /// Stage of the project.
  final pulumi.Input<String?>? projectStage;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Standard output to extract for each modality. See `standardOutputConfiguration` Block below.
  final pulumi.Input<ProjectStandardOutputConfiguration?>? standardOutputConfiguration;
  /// Status of the project.
  final pulumi.Input<String?>? status;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<ProjectTimeouts?>? timeouts;
  /// Type of API the project works with. Valid values: `ASYNC`, `SYNC`. Defaults to `ASYNC`. Changing this value forces a new resource.
  final pulumi.Input<String?>? type;

  /// Creates a new [ProjectState].
  /// [arn] ARN of the project.
  /// [creationTime] Time the project was created, in RFC3339 format.
  /// [customOutputConfiguration] Blueprints used for custom output. See `customOutputConfiguration` Block below.
  /// [dataAutomationLibraryConfiguration] Data automation libraries used by the project. See `dataAutomationLibraryConfiguration` Block below.
  /// [description] Description of the project.
  /// [encryptionConfiguration] Encryption settings for the project. See `encryptionConfiguration` Block below.
  /// [lastModifiedTime] Time the project was last modified, in RFC3339 format.
  /// [name] Name of the project. Changing this value forces a new resource.
  /// [overrideConfiguration] Processing overrides for each modality. See `overrideConfiguration` Block below.
  /// [projectStage] Stage of the project.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [standardOutputConfiguration] Standard output to extract for each modality. See `standardOutputConfiguration` Block below.
  /// [status] Status of the project.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  /// [type] Type of API the project works with. Valid values: `ASYNC`, `SYNC`. Defaults to `ASYNC`. Changing this value forces a new resource.
  const ProjectState({
    this.arn,
    this.creationTime,
    this.customOutputConfiguration,
    this.dataAutomationLibraryConfiguration,
    this.description,
    this.encryptionConfiguration,
    this.lastModifiedTime,
    this.name,
    this.overrideConfiguration,
    this.projectStage,
    this.region,
    this.standardOutputConfiguration,
    this.status,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'creationTime': ?creationTime,
      'customOutputConfiguration': ?pulumi.Input.mapOptionalInputValue<ProjectCustomOutputConfiguration, Map<String, dynamic>>(customOutputConfiguration, (value) => value.toMap()),
      'dataAutomationLibraryConfiguration': ?pulumi.Input.mapOptionalInputValue<ProjectDataAutomationLibraryConfiguration, Map<String, dynamic>>(dataAutomationLibraryConfiguration, (value) => value.toMap()),
      'description': ?description,
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<ProjectEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'lastModifiedTime': ?lastModifiedTime,
      'name': ?name,
      'overrideConfiguration': ?pulumi.Input.mapOptionalInputValue<ProjectOverrideConfiguration, Map<String, dynamic>>(overrideConfiguration, (value) => value.toMap()),
      'projectStage': ?projectStage,
      'region': ?region,
      'standardOutputConfiguration': ?pulumi.Input.mapOptionalInputValue<ProjectStandardOutputConfiguration, Map<String, dynamic>>(standardOutputConfiguration, (value) => value.toMap()),
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ProjectTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory ProjectState.fromMap(Map<String, dynamic> map) {
    return ProjectState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customOutputConfiguration: (() { final guardedValue = map['customOutputConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectCustomOutputConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataAutomationLibraryConfiguration: (() { final guardedValue = map['dataAutomationLibraryConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectDataAutomationLibraryConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionConfiguration: (() { final guardedValue = map['encryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      overrideConfiguration: (() { final guardedValue = map['overrideConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectOverrideConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      projectStage: (() { final guardedValue = map['projectStage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      standardOutputConfiguration: (() { final guardedValue = map['standardOutputConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectStandardOutputConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
