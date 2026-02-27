// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getServiceConsumerIamPolicy.
class GetServiceConsumerIamPolicyArgs {
  final pulumi.Input<String> consumerId;
  final pulumi.Input<String> serviceId;

  GetServiceConsumerIamPolicyArgs({
    required this.consumerId,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consumerId'] = consumerId;
    map['serviceId'] = serviceId;
    return map;
  }

  factory GetServiceConsumerIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceConsumerIamPolicyArgs(
      consumerId: pulumi.Input.asInput<String>(map['consumerId']),
      serviceId: pulumi.Input.asInput<String>(map['serviceId']),
    );
  }
}
