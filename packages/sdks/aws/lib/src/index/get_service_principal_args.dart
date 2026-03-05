// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_service_principal_get_service_principal_args_doc}
/// Arguments for getServicePrincipal.
/// {@endtemplate}
/// {@macro pulumi_index_get_service_principal_get_service_principal_args_doc}
class GetServicePrincipalArgs {
  /// Region you'd like the SPN for. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of the service you want to generate a Service Principal Name for.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetServicePrincipalArgs].
  /// [region] Region you'd like the SPN for. Defaults to the Region set in the provider configuration.
  /// [serviceName] Name of the service you want to generate a Service Principal Name for.
  GetServicePrincipalArgs({
    this.region,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'serviceName': serviceName,
    };
  }

  factory GetServicePrincipalArgs.fromMap(Map<String, dynamic> map) {
    return GetServicePrincipalArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}

