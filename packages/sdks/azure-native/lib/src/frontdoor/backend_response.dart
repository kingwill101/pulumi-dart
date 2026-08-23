// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Backend address of a frontDoor load balancer.
class BackendResponse {
  /// Location of the backend (IP address or FQDN)
  final pulumi.Input<String>? address;
  /// The value to use as the host header sent to the backend. If blank or unspecified, this defaults to the incoming host.
  final pulumi.Input<String>? backendHostHeader;
  /// Whether to enable use of this backend. Permitted values are 'Enabled' or 'Disabled'
  final pulumi.Input<String>? enabledState;
  /// The HTTP TCP port number. Must be between 1 and 65535.
  final pulumi.Input<int>? httpPort;
  /// The HTTPS TCP port number. Must be between 1 and 65535.
  final pulumi.Input<int>? httpsPort;
  /// Priority to use for load balancing. Higher priorities will not be used for load balancing if any lower priority backend is healthy.
  final pulumi.Input<int>? priority;
  /// The Approval status for the connection to the Private Link
  final pulumi.Input<String> privateEndpointStatus;
  /// The Alias of the Private Link resource. Populating this optional field indicates that this backend is 'Private'
  final pulumi.Input<String>? privateLinkAlias;
  /// A custom message to be included in the approval request to connect to the Private Link
  final pulumi.Input<String>? privateLinkApprovalMessage;
  /// The location of the Private Link resource. Required only if 'privateLinkResourceId' is populated
  final pulumi.Input<String>? privateLinkLocation;
  /// The Resource Id of the Private Link resource. Populating this optional field indicates that this backend is 'Private'
  final pulumi.Input<String>? privateLinkResourceId;
  /// Weight of this endpoint for load balancing purposes.
  final pulumi.Input<int>? weight;

  /// Creates a new [BackendResponse].
  /// [address] Location of the backend (IP address or FQDN)
  /// [backendHostHeader] The value to use as the host header sent to the backend. If blank or unspecified, this defaults to the incoming host.
  /// [enabledState] Whether to enable use of this backend. Permitted values are 'Enabled' or 'Disabled'
  /// [httpPort] The HTTP TCP port number. Must be between 1 and 65535.
  /// [httpsPort] The HTTPS TCP port number. Must be between 1 and 65535.
  /// [priority] Priority to use for load balancing. Higher priorities will not be used for load balancing if any lower priority backend is healthy.
  /// [privateEndpointStatus] The Approval status for the connection to the Private Link
  /// [privateLinkAlias] The Alias of the Private Link resource. Populating this optional field indicates that this backend is 'Private'
  /// [privateLinkApprovalMessage] A custom message to be included in the approval request to connect to the Private Link
  /// [privateLinkLocation] The location of the Private Link resource. Required only if 'privateLinkResourceId' is populated
  /// [privateLinkResourceId] The Resource Id of the Private Link resource. Populating this optional field indicates that this backend is 'Private'
  /// [weight] Weight of this endpoint for load balancing purposes.
  const BackendResponse({
    this.address,
    this.backendHostHeader,
    this.enabledState,
    this.httpPort,
    this.httpsPort,
    this.priority,
    required this.privateEndpointStatus,
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
      'privateEndpointStatus': privateEndpointStatus,
      'privateLinkAlias': ?privateLinkAlias,
      'privateLinkApprovalMessage': ?privateLinkApprovalMessage,
      'privateLinkLocation': ?privateLinkLocation,
      'privateLinkResourceId': ?privateLinkResourceId,
      'weight': ?weight,
    };
  }

  factory BackendResponse.fromMap(Map<String, dynamic> map) {
    return BackendResponse(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backendHostHeader: (() { final guardedValue = map['backendHostHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabledState: (() { final guardedValue = map['enabledState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpPort: (() { final guardedValue = map['httpPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      httpsPort: (() { final guardedValue = map['httpsPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      privateEndpointStatus: pulumi.Input.fromValue(map['privateEndpointStatus'] as String),
      privateLinkAlias: (() { final guardedValue = map['privateLinkAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkApprovalMessage: (() { final guardedValue = map['privateLinkApprovalMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkLocation: (() { final guardedValue = map['privateLinkLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkResourceId: (() { final guardedValue = map['privateLinkResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
