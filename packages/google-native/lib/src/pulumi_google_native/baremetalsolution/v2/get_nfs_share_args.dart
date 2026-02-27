// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getNfsShare.
class GetNfsShareArgs {
  final Input<String> location;
  final Input<String> nfsShareId;
  final Input<String>? project;

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
      location: Input.asInput<String>(map['location']),
      nfsShareId: Input.asInput<String>(map['nfsShareId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
