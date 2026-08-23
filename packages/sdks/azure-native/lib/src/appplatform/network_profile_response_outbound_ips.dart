// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Desired outbound IP resources for Azure Spring Apps resource.
class NetworkProfileResponseOutboundIPs {
  /// A list of public IP addresses.
  final pulumi.Input<List<String>> publicIPs;

  /// Creates a new [NetworkProfileResponseOutboundIPs].
  /// [publicIPs] A list of public IP addresses.
  const NetworkProfileResponseOutboundIPs({
    required this.publicIPs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicIPs': publicIPs,
    };
  }

  factory NetworkProfileResponseOutboundIPs.fromMap(Map<String, dynamic> map) {
    return NetworkProfileResponseOutboundIPs(
      publicIPs: pulumi.Input.fromValue((map['publicIPs'] as List).cast<String>()),
    );
  }
}
