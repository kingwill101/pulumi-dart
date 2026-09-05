// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceSetResourceDnsTargetResourceTargetResourceNlbResource {
  /// NLB resource ARN.
  final pulumi.Input<String?>? arn;

  /// Creates a new [ResourceSetResourceDnsTargetResourceTargetResourceNlbResource].
  /// [arn] NLB resource ARN.
  const ResourceSetResourceDnsTargetResourceTargetResourceNlbResource({
    this.arn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
    };
  }

  factory ResourceSetResourceDnsTargetResourceTargetResourceNlbResource.fromMap(Map<String, dynamic> map) {
    return ResourceSetResourceDnsTargetResourceTargetResourceNlbResource(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
