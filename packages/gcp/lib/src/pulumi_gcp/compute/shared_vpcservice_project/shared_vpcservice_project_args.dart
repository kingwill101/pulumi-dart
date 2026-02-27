// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SharedVPCServiceProject.
class SharedVPCServiceProjectArgs {
  /// The deletion policy for the shared VPC service. Setting ABANDON allows the resource to be abandoned rather than deleted. Possible values are: "ABANDON".
  final pulumi.Input<String>? deletionPolicy;

  /// The ID of a host project to associate.
  final pulumi.Input<String> hostProject;

  /// The ID of the project that will serve as a Shared VPC service project.
  final pulumi.Input<String> serviceProject;

  SharedVPCServiceProjectArgs({
    this.deletionPolicy,
    required this.hostProject,
    required this.serviceProject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deletionPolicyValue = deletionPolicy;
    if (deletionPolicyValue != null) {
      map['deletionPolicy'] = deletionPolicyValue;
    }
    map['hostProject'] = hostProject;
    map['serviceProject'] = serviceProject;
    return map;
  }

  factory SharedVPCServiceProjectArgs.fromMap(Map<String, dynamic> map) {
    return SharedVPCServiceProjectArgs(
      deletionPolicy:
          pulumi.Input.asOptionalInput<String>(map['deletionPolicy']),
      hostProject: pulumi.Input.asInput<String>(map['hostProject']),
      serviceProject: pulumi.Input.asInput<String>(map['serviceProject']),
    );
  }
}
