// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventSourceV2SourceHttpEventParameters {
  /// IP segment security configuration. This parameter must be set only when the SecurityConfig value is ip. You can enter an IP address segment or IP address.
  final pulumi.Input<List<String>>? ips;

  /// The HTTP request method supported by the generated Webhook. Multiple choices are available, with the following options:
  /// - GET
  /// - POST
  /// - PUT
  /// - PATCH
  /// - DELETE
  /// - HEAD
  /// - OPTIONS
  /// - TRACE
  /// - CONNECT
  final pulumi.Input<List<String>>? methods;

  /// The public network request URL.
  final pulumi.Input<List<String>>? publicWebHookUrls;

  /// Security domain name configuration. This parameter must be set only when SecurityConfig is set to referer. You can fill in the domain name.
  final pulumi.Input<List<String>>? referers;

  /// Select the type of security configuration. The optional range is as follows:
  /// - none: No configuration is required.
  /// - ip:IP segment.
  /// - referer: Security domain name.
  final pulumi.Input<String>? securityConfig;

  /// The protocol type supported by the generated Webhook. The value description is as follows:
  /// - HTTP
  /// - HTTPS
  /// - HTTP&HTTPS
  final pulumi.Input<String>? type;

  /// The intranet request URL.
  final pulumi.Input<List<String>>? vpcWebHookUrls;

  /// Creates a new [EventSourceV2SourceHttpEventParameters].
  /// [ips] IP segment security configuration. This parameter must be set only when the SecurityConfig value is ip. You can enter an IP address segment or IP address.
  /// [methods] The HTTP request method supported by the generated Webhook. Multiple choices are available, with the following options:
  /// [publicWebHookUrls] The public network request URL.
  /// [referers] Security domain name configuration. This parameter must be set only when SecurityConfig is set to referer. You can fill in the domain name.
  /// [securityConfig] Select the type of security configuration. The optional range is as follows:
  /// [type] The protocol type supported by the generated Webhook. The value description is as follows:
  /// [vpcWebHookUrls] The intranet request URL.
  EventSourceV2SourceHttpEventParameters({
    this.ips,
    this.methods,
    this.publicWebHookUrls,
    this.referers,
    this.securityConfig,
    this.type,
    this.vpcWebHookUrls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ips': ?ips,
      'methods': ?methods,
      'publicWebHookUrls': ?publicWebHookUrls,
      'referers': ?referers,
      'securityConfig': ?securityConfig,
      'type': ?type,
      'vpcWebHookUrls': ?vpcWebHookUrls,
    };
  }

  factory EventSourceV2SourceHttpEventParameters.fromMap(
    Map<String, dynamic> map,
  ) {
    return EventSourceV2SourceHttpEventParameters(
      ips: (() {
        final guardedValue = map['ips'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      methods: (() {
        final guardedValue = map['methods'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      publicWebHookUrls: (() {
        final guardedValue = map['publicWebHookUrls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      referers: (() {
        final guardedValue = map['referers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      securityConfig: (() {
        final guardedValue = map['securityConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcWebHookUrls: (() {
        final guardedValue = map['vpcWebHookUrls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
