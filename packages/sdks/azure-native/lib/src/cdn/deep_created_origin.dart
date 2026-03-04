// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The main origin of CDN content which is added when creating a CDN endpoint.
class DeepCreatedOrigin {
  /// Origin is enabled for load balancing or not. By default, origin is always enabled.
  final pulumi.Input<bool>? enabled;

  /// The address of the origin. It can be a domain name, IPv4 address, or IPv6 address. This should be unique across all origins in an endpoint.
  final pulumi.Input<String> hostName;

  /// The value of the HTTP port. Must be between 1 and 65535.
  final pulumi.Input<int>? httpPort;

  /// The value of the HTTPS port. Must be between 1 and 65535.
  final pulumi.Input<int>? httpsPort;

  /// Origin name which must be unique within the endpoint.
  final pulumi.Input<String> name;

  /// The host header value sent to the origin with each request. If you leave this blank, the request hostname determines this value. Azure CDN origins, such as Web Apps, Blob Storage, and Cloud Services require this host header value to match the origin hostname by default.
  final pulumi.Input<String>? originHostHeader;

  /// Priority of origin in given origin group for load balancing. Higher priorities will not be used for load balancing if any lower priority origin is healthy.Must be between 1 and 5.
  final pulumi.Input<int>? priority;

  /// The Alias of the Private Link resource. Populating this optional field indicates that this origin is 'Private'
  final pulumi.Input<String>? privateLinkAlias;

  /// A custom message to be included in the approval request to connect to the Private Link.
  final pulumi.Input<String>? privateLinkApprovalMessage;

  /// The location of the Private Link resource. Required only if 'privateLinkResourceId' is populated
  final pulumi.Input<String>? privateLinkLocation;

  /// The Resource Id of the Private Link resource. Populating this optional field indicates that this backend is 'Private'
  final pulumi.Input<String>? privateLinkResourceId;

  /// Weight of the origin in given origin group for load balancing. Must be between 1 and 1000
  final pulumi.Input<int>? weight;

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
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      httpPort: (() {
        final guardedValue = map['httpPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      httpsPort: (() {
        final guardedValue = map['httpsPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      originHostHeader: (() {
        final guardedValue = map['originHostHeader'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      privateLinkAlias: (() {
        final guardedValue = map['privateLinkAlias'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateLinkApprovalMessage: (() {
        final guardedValue = map['privateLinkApprovalMessage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateLinkLocation: (() {
        final guardedValue = map['privateLinkLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateLinkResourceId: (() {
        final guardedValue = map['privateLinkResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      weight: (() {
        final guardedValue = map['weight'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
