// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getService.
class GetServiceServicequotasArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Service name to lookup within Service Quotas. Available values can be found with the [AWS CLI service-quotas list-services command](https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-services.html).
  final pulumi.Input<String> serviceName;

  GetServiceServicequotasArgs({
    this.region,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serviceName'] = serviceName;
    return map;
  }

  factory GetServiceServicequotasArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceServicequotasArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      serviceName: pulumi.Input.asInput<String>(map['serviceName']),
    );
  }
}
