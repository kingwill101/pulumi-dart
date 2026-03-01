// ignore_for_file: unused_element, unnecessary_cast


/// The main origin of CDN content which is added when creating a CDN endpoint.
class DeepCreatedOrigin {
  /// Origin is enabled for load balancing or not. By default, origin is always enabled.
  final bool? enabled;
  /// The address of the origin. It can be a domain name, IPv4 address, or IPv6 address. This should be unique across all origins in an endpoint.
  final String hostName;
  /// The value of the HTTP port. Must be between 1 and 65535.
  final int? httpPort;
  /// The value of the HTTPS port. Must be between 1 and 65535.
  final int? httpsPort;
  /// Origin name which must be unique within the endpoint.
  final String name;
  /// The host header value sent to the origin with each request. If you leave this blank, the request hostname determines this value. Azure CDN origins, such as Web Apps, Blob Storage, and Cloud Services require this host header value to match the origin hostname by default.
  final String? originHostHeader;
  /// Priority of origin in given origin group for load balancing. Higher priorities will not be used for load balancing if any lower priority origin is healthy.Must be between 1 and 5.
  final int? priority;
  /// The Alias of the Private Link resource. Populating this optional field indicates that this origin is 'Private'
  final String? privateLinkAlias;
  /// A custom message to be included in the approval request to connect to the Private Link.
  final String? privateLinkApprovalMessage;
  /// The location of the Private Link resource. Required only if 'privateLinkResourceId' is populated
  final String? privateLinkLocation;
  /// The Resource Id of the Private Link resource. Populating this optional field indicates that this backend is 'Private'
  final String? privateLinkResourceId;
  /// Weight of the origin in given origin group for load balancing. Must be between 1 and 1000
  final int? weight;

  /// Creates a new [DeepCreatedOrigin].
  /// [enabled] Origin is enabled for load balancing or not. By default, origin is always enabled.
  /// [hostName] The address of the origin. It can be a domain name, IPv4 address, or IPv6 address. This should be unique across all origins in an endpoint.
  /// [httpPort] The value of the HTTP port. Must be between 1 and 65535.
  /// [httpsPort] The value of the HTTPS port. Must be between 1 and 65535.
  /// [name] Origin name which must be unique within the endpoint.
  /// [originHostHeader] The host header value sent to the origin with each request. If you leave this blank, the request hostname determines this value. Azure CDN origins, such as Web Apps, Blob Storage, and Cloud Services require this host header value to match the origin hostname by default.
  /// [priority] Priority of origin in given origin group for load balancing. Higher priorities will not be used for load balancing if any lower priority origin is healthy.Must be between 1 and 5.
  /// [privateLinkAlias] The Alias of the Private Link resource. Populating this optional field indicates that this origin is 'Private'
  /// [privateLinkApprovalMessage] A custom message to be included in the approval request to connect to the Private Link.
  /// [privateLinkLocation] The location of the Private Link resource. Required only if 'privateLinkResourceId' is populated
  /// [privateLinkResourceId] The Resource Id of the Private Link resource. Populating this optional field indicates that this backend is 'Private'
  /// [weight] Weight of the origin in given origin group for load balancing. Must be between 1 and 1000
  DeepCreatedOrigin({
    this.enabled,
    required this.hostName,
    this.httpPort,
    this.httpsPort,
    required this.name,
    this.originHostHeader,
    this.priority,
    this.privateLinkAlias,
    this.privateLinkApprovalMessage,
    this.privateLinkLocation,
    this.privateLinkResourceId,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'hostName': hostName,
      'httpPort': ?httpPort,
      'httpsPort': ?httpsPort,
      'name': name,
      'originHostHeader': ?originHostHeader,
      'priority': ?priority,
      'privateLinkAlias': ?privateLinkAlias,
      'privateLinkApprovalMessage': ?privateLinkApprovalMessage,
      'privateLinkLocation': ?privateLinkLocation,
      'privateLinkResourceId': ?privateLinkResourceId,
      'weight': ?weight,
    };
  }

  factory DeepCreatedOrigin.fromMap(Map<String, dynamic> map) {
    return DeepCreatedOrigin(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      hostName: map['hostName'] as String,
      httpPort: map['httpPort'] == null ? null : map['httpPort'] as int,
      httpsPort: map['httpsPort'] == null ? null : map['httpsPort'] as int,
      name: map['name'] as String,
      originHostHeader: map['originHostHeader'] == null ? null : map['originHostHeader'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      privateLinkAlias: map['privateLinkAlias'] == null ? null : map['privateLinkAlias'] as String,
      privateLinkApprovalMessage: map['privateLinkApprovalMessage'] == null ? null : map['privateLinkApprovalMessage'] as String,
      privateLinkLocation: map['privateLinkLocation'] == null ? null : map['privateLinkLocation'] as String,
      privateLinkResourceId: map['privateLinkResourceId'] == null ? null : map['privateLinkResourceId'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}

