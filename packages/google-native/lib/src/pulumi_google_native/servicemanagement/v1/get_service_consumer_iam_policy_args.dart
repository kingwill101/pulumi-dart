// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getServiceConsumerIamPolicy.
class GetServiceConsumerIamPolicyArgs {
  final Input<String> consumerId;
  final Input<String> serviceId;

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
      consumerId: Input.asInput<String>(map['consumerId']),
      serviceId: Input.asInput<String>(map['serviceId']),
    );
  }
}
