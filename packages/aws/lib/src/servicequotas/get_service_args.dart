// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicequotas_get_service_get_service_args_doc}
/// Arguments for getService.
/// {@endtemplate}
/// {@macro pulumi_servicequotas_get_service_get_service_args_doc}
class GetServiceArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Service name to lookup within Service Quotas. Available values can be found with the [AWS CLI service-quotas list-services command](https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-services.html).
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetServiceArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceName] Service name to lookup within Service Quotas. Available values can be found with the [AWS CLI service-quotas list-services command](https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-services.html).
  GetServiceArgs({
    String? region,
    required String serviceName,
  })  : region = pulumi.Input.asOptionalInput<String>(region),
        serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serviceName'] = serviceName;
    return map;
  }

  factory GetServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs(
      region: map['region'] == null ? null : map['region'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}
