// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_data_automation_library_configuration_library.dart';

class ProjectDataAutomationLibraryConfiguration {
  /// Library to use. Only one library is supported. See `library` Block below.
  final pulumi.Input<ProjectDataAutomationLibraryConfigurationLibrary?>? library;

  /// Creates a new [ProjectDataAutomationLibraryConfiguration].
  /// [library] Library to use. Only one library is supported. See `library` Block below.
  const ProjectDataAutomationLibraryConfiguration({
    this.library,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'library': ?pulumi.Input.mapOptionalInputValue<ProjectDataAutomationLibraryConfigurationLibrary, Map<String, dynamic>>(library, (value) => value.toMap()),
    };
  }

  factory ProjectDataAutomationLibraryConfiguration.fromMap(Map<String, dynamic> map) {
    return ProjectDataAutomationLibraryConfiguration(
      library: (() { final guardedValue = map['library']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectDataAutomationLibraryConfigurationLibrary.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
