// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Service Tag destination for a Service Tag Outbound Rule for the managed network of a machine learning workspace.
class ServiceTagDestination {
  /// The action enum for networking rule.
  final pulumi.Input<String>? action;
  /// Optional, if provided, the ServiceTag property will be ignored.
  final pulumi.Input<List<String>>? addressPrefixes;
  final pulumi.Input<String>? portRanges;
  final pulumi.Input<String>? protocol;
  final pulumi.Input<String>? serviceTag;

  /// Creates a new [ServiceTagDestination].
  /// [action] The action enum for networking rule.
  /// [addressPrefixes] Optional, if provided, the ServiceTag property will be ignored.
  /// [portRanges] Optional.
  /// [protocol] Optional.
  /// [serviceTag] Optional.
  ServiceTagDestination({
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
      action: map['action'] == null ? null : (map['action']! as String).input(),
      addressPrefixes: map['addressPrefixes'] == null ? null : ((map['addressPrefixes']! as List).cast<String>()).input(),
      portRanges: map['portRanges'] == null ? null : (map['portRanges']! as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      serviceTag: map['serviceTag'] == null ? null : (map['serviceTag']! as String).input(),
    );
  }
}

