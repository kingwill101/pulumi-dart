// ignore_for_file: unused_element, unnecessary_cast


/// Backend address of a frontDoor load balancer.
class Backend {
  /// Location of the backend (IP address or FQDN)
  final String? address;
  /// The value to use as the host header sent to the backend. If blank or unspecified, this defaults to the incoming host.
  final String? backendHostHeader;
  /// Whether to enable use of this backend. Permitted values are 'Enabled' or 'Disabled'
  final String? enabledState;
  /// The HTTP TCP port number. Must be between 1 and 65535.
  final int? httpPort;
  /// The HTTPS TCP port number. Must be between 1 and 65535.
  final int? httpsPort;
  /// Priority to use for load balancing. Higher priorities will not be used for load balancing if any lower priority backend is healthy.
  final int? priority;
  /// The Alias of the Private Link resource. Populating this optional field indicates that this backend is 'Private'
  final String? privateLinkAlias;
  /// A custom message to be included in the approval request to connect to the Private Link
  final String? privateLinkApprovalMessage;
  /// The location of the Private Link resource. Required only if 'privateLinkResourceId' is populated
  final String? privateLinkLocation;
  /// The Resource Id of the Private Link resource. Populating this optional field indicates that this backend is 'Private'
  final String? privateLinkResourceId;
  /// Weight of this endpoint for load balancing purposes.
  final int? weight;

  /// Creates a new [Backend].
  /// [address] Location of the backend (IP address or FQDN)
  /// [backendHostHeader] The value to use as the host header sent to the backend. If blank or unspecified, this defaults to the incoming host.
  /// [enabledState] Whether to enable use of this backend. Permitted values are 'Enabled' or 'Disabled'
  /// [httpPort] The HTTP TCP port number. Must be between 1 and 65535.
  /// [httpsPort] The HTTPS TCP port number. Must be between 1 and 65535.
  /// [priority] Priority to use for load balancing. Higher priorities will not be used for load balancing if any lower priority backend is healthy.
  /// [privateLinkAlias] The Alias of the Private Link resource. Populating this optional field indicates that this backend is 'Private'
  /// [privateLinkApprovalMessage] A custom message to be included in the approval request to connect to the Private Link
  /// [privateLinkLocation] The location of the Private Link resource. Required only if 'privateLinkResourceId' is populated
  /// [privateLinkResourceId] The Resource Id of the Private Link resource. Populating this optional field indicates that this backend is 'Private'
  /// [weight] Weight of this endpoint for load balancing purposes.
  Backend({
    this.address,
    this.backendHostHeader,
    this.enabledState,
    this.httpPort,
    this.httpsPort,
    this.priority,
    this.privateLinkAlias,
    this.privateLinkApprovalMessage,
    this.privateLinkLocation,
    this.privateLinkResourceId,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'backendHostHeader': ?backendHostHeader,
      'enabledState': ?enabledState,
      'httpPort': ?httpPort,
      'httpsPort': ?httpsPort,
      'priority': ?priority,
      'privateLinkAlias': ?privateLinkAlias,
      'privateLinkApprovalMessage': ?privateLinkApprovalMessage,
      'privateLinkLocation': ?privateLinkLocation,
      'privateLinkResourceId': ?privateLinkResourceId,
      'weight': ?weight,
    };
  }

  factory Backend.fromMap(Map<String, dynamic> map) {
    return Backend(
      address: map['address'] == null ? null : map['address'] as String,
      backendHostHeader: map['backendHostHeader'] == null ? null : map['backendHostHeader'] as String,
      enabledState: map['enabledState'] == null ? null : map['enabledState'] as String,
      httpPort: map['httpPort'] == null ? null : map['httpPort'] as int,
      httpsPort: map['httpsPort'] == null ? null : map['httpsPort'] as int,
      priority: map['priority'] == null ? null : map['priority'] as int,
      privateLinkAlias: map['privateLinkAlias'] == null ? null : map['privateLinkAlias'] as String,
      privateLinkApprovalMessage: map['privateLinkApprovalMessage'] == null ? null : map['privateLinkApprovalMessage'] as String,
      privateLinkLocation: map['privateLinkLocation'] == null ? null : map['privateLinkLocation'] as String,
      privateLinkResourceId: map['privateLinkResourceId'] == null ? null : map['privateLinkResourceId'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}

