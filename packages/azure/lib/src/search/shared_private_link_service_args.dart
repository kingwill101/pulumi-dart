// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_search_shared_private_link_service_shared_private_link_service_args_doc}
/// The set of arguments for SharedPrivateLinkService.
/// {@endtemplate}
/// {@macro pulumi_search_shared_private_link_service_shared_private_link_service_args_doc}
class SharedPrivateLinkServiceArgs {
  /// Specify the name of the Azure Search Shared Private Link Resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specify the request message for requesting approval of the Shared Private Link Enabled Remote Resource.
  final pulumi.Input<String>? requestMessage;
  /// Specify the id of the Azure Search Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> searchServiceId;
  /// Specify the sub resource name which the Azure Search Private Endpoint is able to connect to. Changing this forces a new resource to be created.
  final pulumi.Input<String> subresourceName;
  /// Specify the ID of the Shared Private Link Enabled Remote Resource which this Azure Search Private Endpoint should be connected to. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The sub resource name should match with the type of the target resource id that's being specified.
  final pulumi.Input<String> targetResourceId;

  /// Creates a new [SharedPrivateLinkServiceArgs].
  /// [name] Specify the name of the Azure Search Shared Private Link Resource. Changing this forces a new resource to be created.
  /// [requestMessage] Specify the request message for requesting approval of the Shared Private Link Enabled Remote Resource.
  /// [searchServiceId] Specify the id of the Azure Search Service. Changing this forces a new resource to be created.
  /// [subresourceName] Specify the sub resource name which the Azure Search Private Endpoint is able to connect to. Changing this forces a new resource to be created.
  /// [targetResourceId] Specify the ID of the Shared Private Link Enabled Remote Resource which this Azure Search Private Endpoint should be connected to. Changing this forces a new resource to be created.
  SharedPrivateLinkServiceArgs({
    String? name,
    String? requestMessage,
    required String searchServiceId,
    required String subresourceName,
    required String targetResourceId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      requestMessage = pulumi.Input.asOptionalInput<String>(requestMessage),
      searchServiceId = pulumi.Input.asInput<String>(searchServiceId),
      subresourceName = pulumi.Input.asInput<String>(subresourceName),
      targetResourceId = pulumi.Input.asInput<String>(targetResourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'requestMessage': ?requestMessage,
      'searchServiceId': searchServiceId,
      'subresourceName': subresourceName,
      'targetResourceId': targetResourceId,
    };
  }

  factory SharedPrivateLinkServiceArgs.fromMap(Map<String, dynamic> map) {
    return SharedPrivateLinkServiceArgs(
      name: map['name'] == null ? null : map['name'] as String,
      requestMessage: map['requestMessage'] == null ? null : map['requestMessage'] as String,
      searchServiceId: map['searchServiceId'] as String,
      subresourceName: map['subresourceName'] as String,
      targetResourceId: map['targetResourceId'] as String,
    );
  }
}

