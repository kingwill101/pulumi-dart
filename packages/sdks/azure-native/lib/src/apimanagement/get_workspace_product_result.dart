// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkspaceProduct.
class GetWorkspaceProductResult {
  /// whether subscription approval is required. If false, new subscriptions will be approved automatically enabling developers to call the product’s APIs immediately after subscribing. If true, administrators must manually approve the subscription before the developer can any of the product’s APIs. Can be present only if subscriptionRequired property is present and has a value of false.
  final bool? approvalRequired;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Product description. May include HTML formatting tags.
  final String? description;
  /// Product name.
  final String displayName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// whether product is published or not. Published products are discoverable by users of developer portal. Non published products are visible only to administrators. Default state of Product is notPublished.
  final String? state;
  /// Whether a product subscription is required for accessing APIs included in this product. If true, the product is referred to as "protected" and a valid subscription key is required for a request to an API included in the product to succeed. If false, the product is referred to as "open" and requests to an API included in the product can be made without a subscription key. If property is omitted when creating a new product it's value is assumed to be true.
  final bool? subscriptionRequired;
  /// Whether the number of subscriptions a user can have to this product at the same time. Set to null or omit to allow unlimited per user subscriptions. Can be present only if subscriptionRequired property is present and has a value of false.
  final int? subscriptionsLimit;
  /// Product terms of use. Developers trying to subscribe to the product will be presented and required to accept these terms before they can complete the subscription process.
  final String? terms;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetWorkspaceProductResult].
  /// [approvalRequired] whether subscription approval is required. If false, new subscriptions will be approved automatically enabling developers to call the product’s APIs immediately after subscribing. If true, administrators must manually approve the subscription before the developer can any of the product’s APIs. Can be present only if subscriptionRequired property is present and has a value of false.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Product description. May include HTML formatting tags.
  /// [displayName] Product name.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [state] whether product is published or not. Published products are discoverable by users of developer portal. Non published products are visible only to administrators. Default state of Product is notPublished.
  /// [subscriptionRequired] Whether a product subscription is required for accessing APIs included in this product. If true, the product is referred to as "protected" and a valid subscription key is required for a request to an API included in the product to succeed. If false, the product is referred to as "open" and requests to an API included in the product can be made without a subscription key. If property is omitted when creating a new product it's value is assumed to be true.
  /// [subscriptionsLimit] Whether the number of subscriptions a user can have to this product at the same time. Set to null or omit to allow unlimited per user subscriptions. Can be present only if subscriptionRequired property is present and has a value of false.
  /// [terms] Product terms of use. Developers trying to subscribe to the product will be presented and required to accept these terms before they can complete the subscription process.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetWorkspaceProductResult({
    this.approvalRequired,
    required this.azureApiVersion,
    this.description,
    required this.displayName,
    required this.id,
    required this.name,
    this.state,
    this.subscriptionRequired,
    this.subscriptionsLimit,
    this.terms,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalRequired': ?approvalRequired,
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'displayName': displayName,
      'id': id,
      'name': name,
      'state': ?state,
      'subscriptionRequired': ?subscriptionRequired,
      'subscriptionsLimit': ?subscriptionsLimit,
      'terms': ?terms,
      'type': type,
    };
  }

  factory GetWorkspaceProductResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceProductResult(
      approvalRequired: map['approvalRequired'] == null ? null : map['approvalRequired']! as bool,
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description']! as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      state: map['state'] == null ? null : map['state']! as String,
      subscriptionRequired: map['subscriptionRequired'] == null ? null : map['subscriptionRequired']! as bool,
      subscriptionsLimit: map['subscriptionsLimit'] == null ? null : map['subscriptionsLimit']! as int,
      terms: map['terms'] == null ? null : map['terms']! as String,
      type: map['type'] as String,
    );
  }
}

