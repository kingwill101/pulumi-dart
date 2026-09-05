// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ConditionalForwarder resources.
class ConditionalForwarderState {
  /// ID of directory.
  final pulumi.Input<String?>? directoryId;
  /// A list of forwarder IP addresses.
  final pulumi.Input<List<String>?>? dnsIps;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The fully qualified domain name of the remote domain for which forwarders will be used.
  final pulumi.Input<String?>? remoteDomainName;

  /// Creates a new [ConditionalForwarderState].
  /// [directoryId] ID of directory.
  /// [dnsIps] A list of forwarder IP addresses.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [remoteDomainName] The fully qualified domain name of the remote domain for which forwarders will be used.
  const ConditionalForwarderState({
    this.directoryId,
    this.dnsIps,
    this.region,
    this.remoteDomainName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryId': ?directoryId,
      'dnsIps': ?dnsIps,
      'region': ?region,
      'remoteDomainName': ?remoteDomainName,
    };
  }

  factory ConditionalForwarderState.fromMap(Map<String, dynamic> map) {
    return ConditionalForwarderState(
      directoryId: (() { final guardedValue = map['directoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsIps: (() { final guardedValue = map['dnsIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteDomainName: (() { final guardedValue = map['remoteDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
