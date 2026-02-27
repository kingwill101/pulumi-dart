// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SharedVPCHostProject.
class SharedVPCHostProjectArgs {
  /// The ID of the project that will serve as a Shared VPC host project
  final pulumi.Input<String> project;

  SharedVPCHostProjectArgs({
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['project'] = project;
    return map;
  }

  factory SharedVPCHostProjectArgs.fromMap(Map<String, dynamic> map) {
    return SharedVPCHostProjectArgs(
      project: pulumi.Input.asInput<String>(map['project']),
    );
  }
}
