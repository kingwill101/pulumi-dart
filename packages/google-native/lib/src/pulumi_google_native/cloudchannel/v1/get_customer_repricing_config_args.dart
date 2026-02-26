// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCustomerRepricingConfig.
class GetCustomerRepricingConfigArgs {
  final Input<String> accountId;
  final Input<String> customerId;
  final Input<String> customerRepricingConfigId;

  GetCustomerRepricingConfigArgs({
    required this.accountId,
    required this.customerId,
    required this.customerRepricingConfigId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    map['customerId'] = customerId;
    map['customerRepricingConfigId'] = customerRepricingConfigId;
    return map;
  }

  factory GetCustomerRepricingConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomerRepricingConfigArgs(
      accountId: Input.asInput<String>(map['accountId']),
      customerId: Input.asInput<String>(map['customerId']),
      customerRepricingConfigId:
          Input.asInput<String>(map['customerRepricingConfigId']),
    );
  }
}
