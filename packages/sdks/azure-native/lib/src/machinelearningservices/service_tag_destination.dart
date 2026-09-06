// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Service Tag destination for a Service Tag Outbound Rule for the managed network of a machine learning workspace.
class ServiceTagDestination {
  /// The action enum for networking rule.
  final pulumi.Input<dynamic>? action;
  /// Optional, if provided, the ServiceTag property will be ignored.
  final pulumi.Input<List<String>?>? addressPrefixes;
  final pulumi.Input<String?>? portRanges;
  final pulumi.Input<String?>? protocol;
  final pulumi.Input<String?>? serviceTag;

  /// Creates a new [ServiceTagDestination].
  /// [action] The action enum for networking rule.
  /// [addressPrefixes] Optional, if provided, the ServiceTag property will be ignored.
  /// [portRanges] Optional.
  /// [protocol] Optional.
  /// [serviceTag] Optional.
  const ServiceTagDestination({
    this.action,
    this.addressPrefixes,
    this.portRanges,
    this.protocol,
    this.serviceTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'addressPrefixes': ?addressPrefixes,
      'portRanges': ?portRanges,
      'protocol': ?protocol,
      'serviceTag': ?serviceTag,
    };
  }

  factory ServiceTagDestination.fromMap(Map<String, dynamic> map) {
    return ServiceTagDestination(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      addressPrefixes: (() { final guardedValue = map['addressPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      portRanges: (() { final guardedValue = map['portRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceTag: (() { final guardedValue = map['serviceTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
