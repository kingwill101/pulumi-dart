// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_custom_output_configuration.dart';
import 'project_data_automation_library_configuration.dart';
import 'project_encryption_configuration.dart';
import 'project_override_configuration.dart';
import 'project_standard_output_configuration.dart';
import 'project_timeouts.dart';

/// {@template pulumi_bedrockdataautomation_project_project_args_doc}
/// The set of arguments for Project.
/// {@endtemplate}
/// {@macro pulumi_bedrockdataautomation_project_project_args_doc}
class ProjectArgs {
  /// Blueprints used for custom output. See `customOutputConfiguration` Block below.
  final pulumi.Input<ProjectCustomOutputConfiguration?>? customOutputConfiguration;
  /// Data automation libraries used by the project. See `dataAutomationLibraryConfiguration` Block below.
  final pulumi.Input<ProjectDataAutomationLibraryConfiguration?>? dataAutomationLibraryConfiguration;
  /// Description of the project.
  final pulumi.Input<String?>? description;
  /// Encryption settings for the project. See `encryptionConfiguration` Block below.
  final pulumi.Input<ProjectEncryptionConfiguration?>? encryptionConfiguration;
  /// Name of the project. Changing this value forces a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Processing overrides for each modality. See `overrideConfiguration` Block below.
  final pulumi.Input<ProjectOverrideConfiguration?>? overrideConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Standard output to extract for each modality. See `standardOutputConfiguration` Block below.
  final pulumi.Input<ProjectStandardOutputConfiguration?>? standardOutputConfiguration;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<ProjectTimeouts?>? timeouts;
  /// Type of API the project works with. Valid values: `ASYNC`, `SYNC`. Defaults to `ASYNC`. Changing this value forces a new resource.
  final pulumi.Input<String?>? type;

  /// Creates a new [ProjectArgs].
  /// [customOutputConfiguration] Blueprints used for custom output. See `customOutputConfiguration` Block below.
  /// [dataAutomationLibraryConfiguration] Data automation libraries used by the project. See `dataAutomationLibraryConfiguration` Block below.
  /// [description] Description of the project.
  /// [encryptionConfiguration] Encryption settings for the project. See `encryptionConfiguration` Block below.
  /// [name] Name of the project. Changing this value forces a new resource.
  /// [overrideConfiguration] Processing overrides for each modality. See `overrideConfiguration` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [standardOutputConfiguration] Standard output to extract for each modality. See `standardOutputConfiguration` Block below.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [type] Type of API the project works with. Valid values: `ASYNC`, `SYNC`. Defaults to `ASYNC`. Changing this value forces a new resource.
  const ProjectArgs({
    this.customOutputConfiguration,
    this.dataAutomationLibraryConfiguration,
    this.description,
    this.encryptionConfiguration,
    this.name,
    this.overrideConfiguration,
    this.region,
    this.standardOutputConfiguration,
    this.tags,
    this.timeouts,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customOutputConfiguration': ?pulumi.Input.mapOptionalInputValue<ProjectCustomOutputConfiguration, Map<String, dynamic>>(customOutputConfiguration, (value) => value.toMap()),
      'dataAutomationLibraryConfiguration': ?pulumi.Input.mapOptionalInputValue<ProjectDataAutomationLibraryConfiguration, Map<String, dynamic>>(dataAutomationLibraryConfiguration, (value) => value.toMap()),
      'description': ?description,
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<ProjectEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'name': ?name,
      'overrideConfiguration': ?pulumi.Input.mapOptionalInputValue<ProjectOverrideConfiguration, Map<String, dynamic>>(overrideConfiguration, (value) => value.toMap()),
      'region': ?region,
      'standardOutputConfiguration': ?pulumi.Input.mapOptionalInputValue<ProjectStandardOutputConfiguration, Map<String, dynamic>>(standardOutputConfiguration, (value) => value.toMap()),
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ProjectTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory ProjectArgs.fromMap(Map<String, dynamic> map) {
    return ProjectArgs(
      customOutputConfiguration: (() { final guardedValue = map['customOutputConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectCustomOutputConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataAutomationLibraryConfiguration: (() { final guardedValue = map['dataAutomationLibraryConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectDataAutomationLibraryConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionConfiguration: (() { final guardedValue = map['encryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      overrideConfiguration: (() { final guardedValue = map['overrideConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectOverrideConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      standardOutputConfiguration: (() { final guardedValue = map['standardOutputConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectStandardOutputConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
