// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_browser_certificate_location.dart';

class AgentcoreBrowserCertificate {
  /// Location from which to retrieve the certificate. See `certificates.location` below.
  final pulumi.Input<AgentcoreBrowserCertificateLocation> location;

  /// Creates a new [AgentcoreBrowserCertificate].
  /// [location] Location from which to retrieve the certificate. See `certificates.location` below.
  const AgentcoreBrowserCertificate({
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': pulumi.Input.mapInputValue<AgentcoreBrowserCertificateLocation, Map<String, dynamic>>(location, (value) => value.toMap()),
    };
  }

  factory AgentcoreBrowserCertificate.fromMap(Map<String, dynamic> map) {
    return AgentcoreBrowserCertificate(
      location: pulumi.Input.fromValue(AgentcoreBrowserCertificateLocation.fromMap((map['location']! as Map).cast<String, dynamic>())),
    );
  }
}
