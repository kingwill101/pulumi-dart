// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBinding.
class GetBindingGkehubV1betaArgs {
  final pulumi.Input<String> bindingId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> membershipId;
  final pulumi.Input<String>? project;

  GetBindingGkehubV1betaArgs({
    required this.bindingId,
    required this.location,
    required this.membershipId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bindingId'] = bindingId;
    map['location'] = location;
    map['membershipId'] = membershipId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetBindingGkehubV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetBindingGkehubV1betaArgs(
      bindingId: pulumi.Input.asInput<String>(map['bindingId']),
      location: pulumi.Input.asInput<String>(map['location']),
      membershipId: pulumi.Input.asInput<String>(map['membershipId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
