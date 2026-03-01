// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_managed_private_endpoint_managed_private_endpoint_args_doc}
/// The set of arguments for ManagedPrivateEndpoint.
/// {@endtemplate}
/// {@macro pulumi_datafactory_managed_private_endpoint_managed_private_endpoint_args_doc}
class ManagedPrivateEndpointArgs {
  /// The ID of the Data Factory on which to create the Managed Private Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String> dataFactoryId;
  /// Fully qualified domain names. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Possible values are listed in [documentation](https://docs.microsoft.com/azure/private-link/private-endpoint-overview#dns-configuration).
  final pulumi.Input<List<String>>? fqdns;
  /// Specifies the name which should be used for this Managed Private Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the sub resource name which the Data Factory Private Endpoint is able to connect to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subresourceName;
  /// The ID of the Private Link Enabled Remote Resource which this Data Factory Private Endpoint should be connected to. Changing this forces a new resource to be created.
  final pulumi.Input<String> targetResourceId;

  /// Creates a new [ManagedPrivateEndpointArgs].
  /// [dataFactoryId] The ID of the Data Factory on which to create the Managed Private Endpoint. Changing this forces a new resource to be created.
  /// [fqdns] Fully qualified domain names. Changing this forces a new resource to be created.
  /// [name] Specifies the name which should be used for this Managed Private Endpoint. Changing this forces a new resource to be created.
  /// [subresourceName] Specifies the sub resource name which the Data Factory Private Endpoint is able to connect to. Changing this forces a new resource to be created.
  /// [targetResourceId] The ID of the Private Link Enabled Remote Resource which this Data Factory Private Endpoint should be connected to. Changing this forces a new resource to be created.
  ManagedPrivateEndpointArgs({
    required String dataFactoryId,
    List<String>? fqdns,
    String? name,
    String? subresourceName,
    required String targetResourceId,
  }) :
      dataFactoryId = pulumi.Input.asInput<String>(dataFactoryId),
      fqdns = pulumi.Input.asOptionalInput<List<String>>(fqdns),
      name = pulumi.Input.asOptionalInput<String>(name),
      subresourceName = pulumi.Input.asOptionalInput<String>(subresourceName),
      targetResourceId = pulumi.Input.asInput<String>(targetResourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataFactoryId': dataFactoryId,
      'fqdns': ?fqdns,
      'name': ?name,
      'subresourceName': ?subresourceName,
      'targetResourceId': targetResourceId,
    };
  }

  factory ManagedPrivateEndpointArgs.fromMap(Map<String, dynamic> map) {
    return ManagedPrivateEndpointArgs(
      dataFactoryId: map['dataFactoryId'] as String,
      fqdns: map['fqdns'] == null ? null : (map['fqdns'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      subresourceName: map['subresourceName'] == null ? null : map['subresourceName'] as String,
      targetResourceId: map['targetResourceId'] as String,
    );
  }
}

