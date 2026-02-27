// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationSink.
class GetOrganizationSinkArgs {
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> sinkId;

  GetOrganizationSinkArgs({
    required this.organizationId,
    required this.sinkId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organizationId'] = organizationId;
    map['sinkId'] = sinkId;
    return map;
  }

  factory GetOrganizationSinkArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationSinkArgs(
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      sinkId: pulumi.Input.asInput<String>(map['sinkId']),
    );
  }
}
