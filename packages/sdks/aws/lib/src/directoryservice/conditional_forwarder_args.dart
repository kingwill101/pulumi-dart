// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directoryservice_conditional_forwarder_conditional_forwarder_args_doc}
/// The set of arguments for ConditionalForwarder.
/// {@endtemplate}
/// {@macro pulumi_directoryservice_conditional_forwarder_conditional_forwarder_args_doc}
class ConditionalForwarderArgs {
  /// ID of directory.
  final pulumi.Input<String> directoryId;
  /// A list of forwarder IP addresses.
  final pulumi.Input<List<String>> dnsIps;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The fully qualified domain name of the remote domain for which forwarders will be used.
  final pulumi.Input<String> remoteDomainName;

  /// Creates a new [ConditionalForwarderArgs].
  /// [directoryId] ID of directory.
  /// [dnsIps] A list of forwarder IP addresses.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [remoteDomainName] The fully qualified domain name of the remote domain for which forwarders will be used.
  ConditionalForwarderArgs({
    required pulumi.Output<String> directoryId,
    required pulumi.Output<List<String>> dnsIps,
    pulumi.Output<String>? region,
    required pulumi.Output<String> remoteDomainName,
  }) :
      directoryId = pulumi.Input.asInput<String>(directoryId),
      dnsIps = pulumi.Input.asInput<List<String>>(dnsIps),
      region = pulumi.Input.asOptionalInput<String>(region),
      remoteDomainName = pulumi.Input.asInput<String>(remoteDomainName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryId': directoryId,
      'dnsIps': dnsIps,
      'region': ?region,
      'remoteDomainName': remoteDomainName,
    };
  }

  factory ConditionalForwarderArgs.fromMap(Map<String, dynamic> map) {
    return ConditionalForwarderArgs(
      directoryId: pulumi.Output.create<String>(map['directoryId'] as String),
      dnsIps: pulumi.Output.create<List<String>>((map['dnsIps'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      remoteDomainName: pulumi.Output.create<String>(map['remoteDomainName'] as String),
    );
  }
}

