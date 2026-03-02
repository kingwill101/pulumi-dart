// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDdosBgpIpsIp {
  /// The ID of the Ip. The value formats as `<instance_id>:<ip>`.
  final pulumi.Input<String> id;
  /// The ID of the native protection enterprise instance to be operated.
  final pulumi.Input<String> instanceId;
  /// The IP address.
  final pulumi.Input<String> ip;
  /// The type of cloud asset to which the IP address belongs.
  final pulumi.Input<String> product;
  /// The current state of the IP address.
  final pulumi.Input<String> status;

  /// Creates a new [GetDdosBgpIpsIp].
  /// [id] The ID of the Ip. The value formats as `<instance_id>:<ip>`.
  /// [instanceId] The ID of the native protection enterprise instance to be operated.
  /// [ip] The IP address.
  /// [product] The type of cloud asset to which the IP address belongs.
  /// [status] The current state of the IP address.
  GetDdosBgpIpsIp({
    required this.id,
    required this.instanceId,
    required this.ip,
    required this.product,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'instanceId': instanceId,
      'ip': ip,
      'product': product,
      'status': status,
    };
  }

  factory GetDdosBgpIpsIp.fromMap(Map<String, dynamic> map) {
    return GetDdosBgpIpsIp(
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      ip: (map['ip'] as String).input(),
      product: (map['product'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

