// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getServicePrincipal.
class GetServicePrincipalArgs {
  /// Region you'd like the SPN for. Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Name of the service you want to generate a Service Principal Name for.
  final Input<String> serviceName;

  GetServicePrincipalArgs({
    this.region,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serviceName'] = serviceName;
    return map;
  }

  factory GetServicePrincipalArgs.fromMap(Map<String, dynamic> map) {
    return GetServicePrincipalArgs(
      region: Input.asOptionalInput<String>(map['region']),
      serviceName: Input.asInput<String>(map['serviceName']),
    );
  }
}
