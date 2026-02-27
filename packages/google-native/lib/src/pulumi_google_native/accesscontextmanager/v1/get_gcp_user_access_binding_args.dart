// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getGcpUserAccessBinding.
class GetGcpUserAccessBindingArgs {
  final pulumi.Input<String> gcpUserAccessBindingId;
  final pulumi.Input<String> organizationId;

  GetGcpUserAccessBindingArgs({
    required this.gcpUserAccessBindingId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gcpUserAccessBindingId'] = gcpUserAccessBindingId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetGcpUserAccessBindingArgs.fromMap(Map<String, dynamic> map) {
    return GetGcpUserAccessBindingArgs(
      gcpUserAccessBindingId:
          pulumi.Input.asInput<String>(map['gcpUserAccessBindingId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
