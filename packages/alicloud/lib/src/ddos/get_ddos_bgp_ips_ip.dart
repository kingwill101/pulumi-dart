// ignore_for_file: unused_element, unnecessary_cast


class GetDdosBgpIpsIp {
  /// The ID of the Ip. The value formats as `<instance_id>:<ip>`.
  final String id;
  /// The ID of the native protection enterprise instance to be operated.
  final String instanceId;
  /// The IP address.
  final String ip;
  /// The type of cloud asset to which the IP address belongs.
  final String product;
  /// The current state of the IP address.
  final String status;

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
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      ip: map['ip'] as String,
      product: map['product'] as String,
      status: map['status'] as String,
    );
  }
}

