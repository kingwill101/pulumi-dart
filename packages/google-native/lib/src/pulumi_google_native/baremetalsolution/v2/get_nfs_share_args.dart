// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNfsShare.
class GetNfsShareArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> nfsShareId;
  final pulumi.Input<String>? project;

  GetNfsShareArgs({
    required this.location,
    required this.nfsShareId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['nfsShareId'] = nfsShareId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetNfsShareArgs.fromMap(Map<String, dynamic> map) {
    return GetNfsShareArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      nfsShareId: pulumi.Input.asInput<String>(map['nfsShareId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
