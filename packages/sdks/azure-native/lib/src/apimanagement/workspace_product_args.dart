// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'product_state.dart';

/// {@template pulumi_apimanagement_workspace_product_args_doc}
/// The set of arguments for WorkspaceProduct.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_workspace_product_args_doc}
class WorkspaceProductArgs {
  /// whether subscription approval is required. If false, new subscriptions will be approved automatically enabling developers to call the product’s APIs immediately after subscribing. If true, administrators must manually approve the subscription before the developer can any of the product’s APIs. Can be present only if subscriptionRequired property is present and has a value of false.
  final pulumi.Input<bool>? approvalRequired;
  /// Product description. May include HTML formatting tags.
  final pulumi.Input<String>? description;
  /// Product name.
  final pulumi.Input<String> displayName;
  /// Product identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? productId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// whether product is published or not. Published products are discoverable by users of developer portal. Non published products are visible only to administrators. Default state of Product is notPublished.
  final pulumi.Input<ProductState>? state;
  /// Whether a product subscription is required for accessing APIs included in this product. If true, the product is referred to as "protected" and a valid subscription key is required for a request to an API included in the product to succeed. If false, the product is referred to as "open" and requests to an API included in the product can be made without a subscription key. If property is omitted when creating a new product it's value is assumed to be true.
  final pulumi.Input<bool>? subscriptionRequired;
  /// Whether the number of subscriptions a user can have to this product at the same time. Set to null or omit to allow unlimited per user subscriptions. Can be present only if subscriptionRequired property is present and has a value of false.
  final pulumi.Input<int>? subscriptionsLimit;
  /// Product terms of use. Developers trying to subscribe to the product will be presented and required to accept these terms before they can complete the subscription process.
  final pulumi.Input<String>? terms;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceProductArgs].
  /// [approvalRequired] whether subscription approval is required. If false, new subscriptions will be approved automatically enabling developers to call the product’s APIs immediately after subscribing. If true, administrators must manually approve the subscription before the developer can any of the product’s APIs. Can be present only if subscriptionRequired property is present and has a value of false.
  /// [description] Product description. May include HTML formatting tags.
  /// [displayName] Product name.
  /// [productId] Product identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [state] whether product is published or not. Published products are discoverable by users of developer portal. Non published products are visible only to administrators. Default state of Product is notPublished.
  /// [subscriptionRequired] Whether a product subscription is required for accessing APIs included in this product. If true, the product is referred to as "protected" and a valid subscription key is required for a request to an API included in the product to succeed. If false, the product is referred to as "open" and requests to an API included in the product can be made without a subscription key. If property is omitted when creating a new product it's value is assumed to be true.
  /// [subscriptionsLimit] Whether the number of subscriptions a user can have to this product at the same time. Set to null or omit to allow unlimited per user subscriptions. Can be present only if subscriptionRequired property is present and has a value of false.
  /// [terms] Product terms of use. Developers trying to subscribe to the product will be presented and required to accept these terms before they can complete the subscription process.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  WorkspaceProductArgs({
    this.approvalRequired,
    this.description,
    required this.displayName,
    this.productId,
    required this.resourceGroupName,
    required this.serviceName,
    this.state,
    this.subscriptionRequired,
    this.subscriptionsLimit,
    this.terms,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalRequired': ?approvalRequired,
      'description': ?description,
      'displayName': displayName,
      'productId': ?productId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'state': ?pulumi.Input.mapOptionalInputValue<ProductState, String>(state, (value) => value.value),
      'subscriptionRequired': ?subscriptionRequired,
      'subscriptionsLimit': ?subscriptionsLimit,
      'terms': ?terms,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceProductArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceProductArgs(
      approvalRequired: map['approvalRequired'] == null ? null : (map['approvalRequired']! as bool).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      productId: map['productId'] == null ? null : (map['productId']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      state: map['state'] == null ? null : (ProductState.fromValue(map['state']! as String)).input(),
      subscriptionRequired: map['subscriptionRequired'] == null ? null : (map['subscriptionRequired']! as bool).input(),
      subscriptionsLimit: map['subscriptionsLimit'] == null ? null : (map['subscriptionsLimit']! as int).input(),
      terms: map['terms'] == null ? null : (map['terms']! as String).input(),
      workspaceId: (map['workspaceId'] as String).input(),
    );
  }
}

