// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectDataAutomationLibraryConfigurationLibrary {
  /// ARN of the data automation library.
  final pulumi.Input<String> libraryArn;

  /// Creates a new [ProjectDataAutomationLibraryConfigurationLibrary].
  /// [libraryArn] ARN of the data automation library.
  const ProjectDataAutomationLibraryConfigurationLibrary({
    required this.libraryArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'libraryArn': libraryArn,
    };
  }

  factory ProjectDataAutomationLibraryConfigurationLibrary.fromMap(Map<String, dynamic> map) {
    return ProjectDataAutomationLibraryConfigurationLibrary(
      libraryArn: pulumi.Input.fromValue(map['libraryArn'] as String),
    );
  }
}
