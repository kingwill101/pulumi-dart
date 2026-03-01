// ignore_for_file: unused_element, unnecessary_cast


/// Service Tag destination for a Service Tag Outbound Rule for the managed network of a machine learning workspace.
class ServiceTagDestination {
  /// The action enum for networking rule.
  final String? action;
  /// Optional, if provided, the ServiceTag property will be ignored.
  final List<String>? addressPrefixes;
  final String? portRanges;
  final String? protocol;
  final String? serviceTag;

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
      action: map['action'] == null ? null : map['action'] as String,
      addressPrefixes: map['addressPrefixes'] == null ? null : (map['addressPrefixes'] as List).cast<String>(),
      portRanges: map['portRanges'] == null ? null : map['portRanges'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      serviceTag: map['serviceTag'] == null ? null : map['serviceTag'] as String,
    );
  }
}

