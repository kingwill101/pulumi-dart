// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ConditionalForwarder.
class ConditionalForwarderArgs {
  /// ID of directory.
  final pulumi.Input<String> directoryId;

  /// A list of forwarder IP addresses.
  final pulumi.Input<List<String>> dnsIps;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The fully qualified domain name of the remote domain for which forwarders will be used.
  final pulumi.Input<String> remoteDomainName;

  ConditionalForwarderArgs({
    required this.directoryId,
    required this.dnsIps,
    this.region,
    required this.remoteDomainName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['directoryId'] = directoryId;
    map['dnsIps'] = dnsIps;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['remoteDomainName'] = remoteDomainName;
    return map;
  }

  factory ConditionalForwarderArgs.fromMap(Map<String, dynamic> map) {
    return ConditionalForwarderArgs(
      directoryId: pulumi.Input.asInput<String>(map['directoryId']),
      dnsIps: pulumi.Input.asInput<List<String>>(map['dnsIps']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      remoteDomainName: pulumi.Input.asInput<String>(map['remoteDomainName']),
    );
  }
}
