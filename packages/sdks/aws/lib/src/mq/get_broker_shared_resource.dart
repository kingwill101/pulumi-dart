// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBrokerSharedResource {
  /// DNS names through which the broker reaches the shared resource.
  final pulumi.Input<List<String>> dnsNames;
  /// ARN of the shared resource.
  final pulumi.Input<String> resourceArn;
  /// Status of the shared resource.
  final pulumi.Input<String> status;
  /// Type of the shared resource, either `RESOURCE_SHARE` or `RESOURCE`.
  final pulumi.Input<String> type;

  /// Creates a new [GetBrokerSharedResource].
  /// [dnsNames] DNS names through which the broker reaches the shared resource.
  /// [resourceArn] ARN of the shared resource.
  /// [status] Status of the shared resource.
  /// [type] Type of the shared resource, either `RESOURCE_SHARE` or `RESOURCE`.
  const GetBrokerSharedResource({
    required this.dnsNames,
    required this.resourceArn,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsNames': dnsNames,
      'resourceArn': resourceArn,
      'status': status,
      'type': type,
    };
  }

  factory GetBrokerSharedResource.fromMap(Map<String, dynamic> map) {
    return GetBrokerSharedResource(
      dnsNames: pulumi.Input.fromValue((map['dnsNames'] as List).cast<String>()),
      resourceArn: pulumi.Input.fromValue(map['resourceArn'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
