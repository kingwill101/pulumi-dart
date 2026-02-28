// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudchannel_v1_get_customer_repricing_config_args_doc}
/// Arguments for getCustomerRepricingConfig.
/// {@endtemplate}
/// {@macro pulumi_cloudchannel_v1_get_customer_repricing_config_args_doc}
class GetCustomerRepricingConfigArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> customerId;
  final pulumi.Input<String> customerRepricingConfigId;

  /// Creates a new [GetCustomerRepricingConfigArgs].
  /// [accountId] Required.
  /// [customerId] Required.
  /// [customerRepricingConfigId] Required.
  GetCustomerRepricingConfigArgs({
    required String accountId,
    required String customerId,
    required String customerRepricingConfigId,
  })  : accountId = pulumi.Input.asInput<String>(accountId),
        customerId = pulumi.Input.asInput<String>(customerId),
        customerRepricingConfigId =
            pulumi.Input.asInput<String>(customerRepricingConfigId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    map['customerId'] = customerId;
    map['customerRepricingConfigId'] = customerRepricingConfigId;
    return map;
  }

  factory GetCustomerRepricingConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomerRepricingConfigArgs(
      accountId: map['accountId'] as String,
      customerId: map['customerId'] as String,
      customerRepricingConfigId: map['customerRepricingConfigId'] as String,
    );
  }
}
