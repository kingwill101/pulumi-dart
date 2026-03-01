// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_agfoodplatform_get_private_endpoint_connection_args_doc}
/// Arguments for getPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_agfoodplatform_get_private_endpoint_connection_args_doc}
class GetPrivateEndpointConnectionArgs {
  /// DataManagerForAgriculture resource name.
  final pulumi.Input<String> dataManagerForAgricultureResourceName;
  /// Private endpoint connection name.
  final pulumi.Input<String> privateEndpointConnectionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPrivateEndpointConnectionArgs].
  /// [dataManagerForAgricultureResourceName] DataManagerForAgriculture resource name.
  /// [privateEndpointConnectionName] Private endpoint connection name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetPrivateEndpointConnectionArgs({
    required pulumi.Output<String> dataManagerForAgricultureResourceName,
    required pulumi.Output<String> privateEndpointConnectionName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      dataManagerForAgricultureResourceName = pulumi.Input.asInput<String>(dataManagerForAgricultureResourceName),
      privateEndpointConnectionName = pulumi.Input.asInput<String>(privateEndpointConnectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataManagerForAgricultureResourceName': dataManagerForAgricultureResourceName,
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionArgs(
      dataManagerForAgricultureResourceName: pulumi.Output.create<String>(map['dataManagerForAgricultureResourceName'] as String),
      privateEndpointConnectionName: pulumi.Output.create<String>(map['privateEndpointConnectionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

