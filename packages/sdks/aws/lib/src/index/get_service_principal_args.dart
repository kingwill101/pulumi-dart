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
      region: map['region'] == null ? null : (map['region'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

