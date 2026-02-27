// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSource.
class GetSourceSecuritycenterV1Args {
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> sourceId;

  GetSourceSecuritycenterV1Args({
    required this.organizationId,
    required this.sourceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organizationId'] = organizationId;
    map['sourceId'] = sourceId;
    return map;
  }

  factory GetSourceSecuritycenterV1Args.fromMap(Map<String, dynamic> map) {
    return GetSourceSecuritycenterV1Args(
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      sourceId: pulumi.Input.asInput<String>(map['sourceId']),
    );
  }
}
