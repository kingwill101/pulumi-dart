// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getGcpUserAccessBinding.
class GetGcpUserAccessBindingArgs {
  final Input<String> gcpUserAccessBindingId;
  final Input<String> organizationId;

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
          Input.asInput<String>(map['gcpUserAccessBindingId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
