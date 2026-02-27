// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ServiceQuota.
class ServiceQuotaArgs {
  /// Code of the service quota to track. For example: `L-F678F1CE`. Available values can be found with the [AWS CLI service-quotas list-service-quotas command](https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html).
  final Input<String> quotaCode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Code of the service to track. For example: `vpc`. Available values can be found with the [AWS CLI service-quotas list-services command](https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-services.html).
  final Input<String> serviceCode;

  /// Float specifying the desired value for the service quota. If the desired value is higher than the current value, a quota increase request is submitted. When a known request is submitted and pending, the value reflects the desired value of the pending request.
  final Input<double> value;

  ServiceQuotaArgs({
    required this.quotaCode,
    this.region,
    required this.serviceCode,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['quotaCode'] = quotaCode;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serviceCode'] = serviceCode;
    map['value'] = value;
    return map;
  }

  factory ServiceQuotaArgs.fromMap(Map<String, dynamic> map) {
    return ServiceQuotaArgs(
      quotaCode: Input.asInput<String>(map['quotaCode']),
      region: Input.asOptionalInput<String>(map['region']),
      serviceCode: Input.asInput<String>(map['serviceCode']),
      value: Input.asInput<double>(map['value']),
    );
  }
}
