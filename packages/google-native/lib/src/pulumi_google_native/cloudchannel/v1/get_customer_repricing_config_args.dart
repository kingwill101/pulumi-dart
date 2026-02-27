// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCustomerRepricingConfig.
class GetCustomerRepricingConfigArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> customerId;
  final pulumi.Input<String> customerRepricingConfigId;

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
      accountId: pulumi.Input.asInput<String>(map['accountId']),
      customerId: pulumi.Input.asInput<String>(map['customerId']),
      customerRepricingConfigId:
          pulumi.Input.asInput<String>(map['customerRepricingConfigId']),
    );
  }
}
