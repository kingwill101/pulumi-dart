// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_code_interpreter_certificate_location.dart';

class AgentcoreCodeInterpreterCertificate {
  /// Location from which to retrieve the certificate. See `certificates.location` below.
  final pulumi.Input<AgentcoreCodeInterpreterCertificateLocation> location;

  /// Creates a new [AgentcoreCodeInterpreterCertificate].
  /// [location] Location from which to retrieve the certificate. See `certificates.location` below.
  const AgentcoreCodeInterpreterCertificate({
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': pulumi.Input.mapInputValue<AgentcoreCodeInterpreterCertificateLocation, Map<String, dynamic>>(location, (value) => value.toMap()),
    };
  }

  factory AgentcoreCodeInterpreterCertificate.fromMap(Map<String, dynamic> map) {
    return AgentcoreCodeInterpreterCertificate(
      location: pulumi.Input.fromValue(AgentcoreCodeInterpreterCertificateLocation.fromMap((map['location']! as Map).cast<String, dynamic>())),
    );
  }
}
