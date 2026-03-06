// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IAM roles that can be assumed by an AWS service are called service roles. Service roles must include a trust policy. A service principal is an identifier that is used to grant permissions to a service.
class ServicePrincipal {
  /// The service principal identifier.
  final pulumi.Input<String> service;

  /// Creates a new [ServicePrincipal].
  /// [service] The service principal identifier.
  const ServicePrincipal({
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'Service': service,
    };
  }

  factory ServicePrincipal.fromMap(Map<String, dynamic> map) {
    return ServicePrincipal(
      service: pulumi.Input.fromValue(map['Service'] as String),
    );
  }
}

