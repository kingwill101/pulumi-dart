// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_product_product_args_doc}
/// The set of arguments for Product.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_product_product_args_doc}
class ProductArgs {
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;
  /// Do subscribers need to be approved prior to being able to use the Product?
  ///
  /// > **Note:** `approval_required` can only be set when `subscription_required` is set to `true`.
  final pulumi.Input<bool>? approvalRequired;
  /// A description of this Product, which may include HTML formatting tags.
  final pulumi.Input<String>? description;
  /// The Display Name for this API Management Product.
  final pulumi.Input<String> displayName;
  /// The Identifier for this Product, which must be unique within the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> productId;
  /// Is this Product Published?
  final pulumi.Input<bool> published;
  /// The name of the Resource Group in which the API Management Service should be exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Is a Subscription required to access API's included in this Product? Defaults to `true`.
  final pulumi.Input<bool>? subscriptionRequired;
  /// The number of subscriptions a user can have to this Product at the same time.
  ///
  /// > **Note:** `subscriptions_limit` can only be set when `subscription_required` is set to `true`.
  final pulumi.Input<int>? subscriptionsLimit;
  /// The Terms and Conditions for this Product, which must be accepted by Developers before they can begin the Subscription process.
  final pulumi.Input<String>? terms;

  /// Creates a new [ProductArgs].
  /// [apiManagementName] The name of the API Management Service. Changing this forces a new resource to be created.
  /// [approvalRequired] Do subscribers need to be approved prior to being able to use the Product?
  /// [description] A description of this Product, which may include HTML formatting tags.
  /// [displayName] The Display Name for this API Management Product.
  /// [productId] The Identifier for this Product, which must be unique within the API Management Service. Changing this forces a new resource to be created.
  /// [published] Is this Product Published?
  /// [resourceGroupName] The name of the Resource Group in which the API Management Service should be exist. Changing this forces a new resource to be created.
  /// [subscriptionRequired] Is a Subscription required to access API's included in this Product? Defaults to `true`.
  /// [subscriptionsLimit] The number of subscriptions a user can have to this Product at the same time.
  /// [terms] The Terms and Conditions for this Product, which must be accepted by Developers before they can begin the Subscription process.
  ProductArgs({
    required String apiManagementName,
    bool? approvalRequired,
    String? description,
    required String displayName,
    required String productId,
    required bool published,
    required String resourceGroupName,
    bool? subscriptionRequired,
    int? subscriptionsLimit,
    String? terms,
  }) :
      apiManagementName = pulumi.Input.asInput<String>(apiManagementName),
      approvalRequired = pulumi.Input.asOptionalInput<bool>(approvalRequired),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      productId = pulumi.Input.asInput<String>(productId),
      published = pulumi.Input.asInput<bool>(published),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subscriptionRequired = pulumi.Input.asOptionalInput<bool>(subscriptionRequired),
      subscriptionsLimit = pulumi.Input.asOptionalInput<int>(subscriptionsLimit),
      terms = pulumi.Input.asOptionalInput<String>(terms);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'approvalRequired': ?approvalRequired,
      'description': ?description,
      'displayName': displayName,
      'productId': productId,
      'published': published,
      'resourceGroupName': resourceGroupName,
      'subscriptionRequired': ?subscriptionRequired,
      'subscriptionsLimit': ?subscriptionsLimit,
      'terms': ?terms,
    };
  }

  factory ProductArgs.fromMap(Map<String, dynamic> map) {
    return ProductArgs(
      apiManagementName: map['apiManagementName'] as String,
      approvalRequired: map['approvalRequired'] == null ? null : map['approvalRequired'] as bool,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      productId: map['productId'] as String,
      published: map['published'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      subscriptionRequired: map['subscriptionRequired'] == null ? null : map['subscriptionRequired'] as bool,
      subscriptionsLimit: map['subscriptionsLimit'] == null ? null : map['subscriptionsLimit'] as int,
      terms: map['terms'] == null ? null : map['terms'] as String,
    );
  }
}

