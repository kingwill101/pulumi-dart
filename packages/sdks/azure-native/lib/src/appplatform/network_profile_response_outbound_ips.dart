// ignore_for_file: unused_element, unnecessary_cast


/// Desired outbound IP resources for Azure Spring Apps resource.
class NetworkProfileResponseOutboundIPs {
  /// A list of public IP addresses.
  final List<String> publicIPs;

  /// Creates a new [NetworkProfileResponseOutboundIPs].
  /// [publicIPs] A list of public IP addresses.
  NetworkProfileResponseOutboundIPs({
    required this.publicIPs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicIPs': publicIPs,
    };
  }

  factory NetworkProfileResponseOutboundIPs.fromMap(Map<String, dynamic> map) {
    return NetworkProfileResponseOutboundIPs(
      publicIPs: (map['publicIPs'] as List).cast<String>(),
    );
  }
}

