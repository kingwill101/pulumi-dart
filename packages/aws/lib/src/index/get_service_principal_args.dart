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
    String? region,
    required String serviceName,
  })  : region = pulumi.Input.asOptionalInput<String>(region),
        serviceName = pulumi.Input.asInput<String>(serviceName);

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
      region: map['region'] == null ? null : map['region'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}
