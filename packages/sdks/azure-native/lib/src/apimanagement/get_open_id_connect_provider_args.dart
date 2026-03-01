// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_open_id_connect_provider_args_doc}
/// Arguments for getOpenIdConnectProvider.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_open_id_connect_provider_args_doc}
class GetOpenIdConnectProviderArgs {
  /// Identifier of the OpenID Connect Provider.
  final pulumi.Input<String> opid;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetOpenIdConnectProviderArgs].
  /// [opid] Identifier of the OpenID Connect Provider.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  GetOpenIdConnectProviderArgs({
    required pulumi.Output<String> opid,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      opid = pulumi.Input.asInput<String>(opid),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'opid': opid,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetOpenIdConnectProviderArgs.fromMap(Map<String, dynamic> map) {
    return GetOpenIdConnectProviderArgs(
      opid: pulumi.Output.create<String>(map['opid'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

