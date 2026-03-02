// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compatibility_response.dart';
import 'icon_uris_response.dart';
import 'product_link_response.dart';
import 'product_properties_response.dart';

/// Result data returned by getProduct.
class GetProductResult {
  /// The part number used for billing purposes.
  final String? billingPartNumber;
  /// Product compatibility with current device.
  final CompatibilityResponse? compatibility;
  /// The description of the product.
  final String? description;
  /// The display name of the product.
  final String? displayName;
  /// The entity tag used for optimistic concurrency when modifying the resource.
  final String? etag;
  /// The identifier of the gallery item corresponding to the product.
  final String? galleryItemIdentity;
  /// Additional links available for this product.
  final IconUrisResponse? iconUris;
  /// ID of the resource.
  final String id;
  /// The legal terms.
  final String? legalTerms;
  /// Additional links available for this product.
  final List<ProductLinkResponse>? links;
  /// Name of the resource.
  final String name;
  /// The offer representing the product.
  final String? offer;
  /// The version of the product offer.
  final String? offerVersion;
  /// The length of product content.
  final double? payloadLength;
  /// The privacy policy.
  final String? privacyPolicy;
  /// The kind of the product (virtualMachine or virtualMachineExtension)
  final String? productKind;
  /// Additional properties for the product.
  final ProductPropertiesResponse? productProperties;
  /// The user-friendly name of the product publisher.
  final String? publisherDisplayName;
  /// Publisher identifier.
  final String? publisherIdentifier;
  /// The product SKU.
  final String? sku;
  /// Type of Resource.
  final String type;
  /// The type of the Virtual Machine Extension.
  final String? vmExtensionType;

  /// Creates a new [GetProductResult].
  /// [billingPartNumber] The part number used for billing purposes.
  /// [compatibility] Product compatibility with current device.
  /// [description] The description of the product.
  /// [displayName] The display name of the product.
  /// [etag] The entity tag used for optimistic concurrency when modifying the resource.
  /// [galleryItemIdentity] The identifier of the gallery item corresponding to the product.
  /// [iconUris] Additional links available for this product.
  /// [id] ID of the resource.
  /// [legalTerms] The legal terms.
  /// [links] Additional links available for this product.
  /// [name] Name of the resource.
  /// [offer] The offer representing the product.
  /// [offerVersion] The version of the product offer.
  /// [payloadLength] The length of product content.
  /// [privacyPolicy] The privacy policy.
  /// [productKind] The kind of the product (virtualMachine or virtualMachineExtension)
  /// [productProperties] Additional properties for the product.
  /// [publisherDisplayName] The user-friendly name of the product publisher.
  /// [publisherIdentifier] Publisher identifier.
  /// [sku] The product SKU.
  /// [type] Type of Resource.
  /// [vmExtensionType] The type of the Virtual Machine Extension.
  GetProductResult({
    this.billingPartNumber,
    this.compatibility,
    this.description,
    this.displayName,
    this.etag,
    this.galleryItemIdentity,
    this.iconUris,
    required this.id,
    this.legalTerms,
    this.links,
    required this.name,
    this.offer,
    this.offerVersion,
    this.payloadLength,
    this.privacyPolicy,
    this.productKind,
    this.productProperties,
    this.publisherDisplayName,
    this.publisherIdentifier,
    this.sku,
    required this.type,
    this.vmExtensionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingPartNumber': ?billingPartNumber,
      'compatibility': ?compatibility == null ? null : compatibility!.toMap(),
      'description': ?description,
      'displayName': ?displayName,
      'etag': ?etag,
      'galleryItemIdentity': ?galleryItemIdentity,
      'iconUris': ?iconUris == null ? null : iconUris!.toMap(),
      'id': id,
      'legalTerms': ?legalTerms,
      'links': ?links == null ? null : pulumi.Input.encodeList<ProductLinkResponse, Map<String, dynamic>>(links!, (value) => value.toMap()),
      'name': name,
      'offer': ?offer,
      'offerVersion': ?offerVersion,
      'payloadLength': ?payloadLength,
      'privacyPolicy': ?privacyPolicy,
      'productKind': ?productKind,
      'productProperties': ?productProperties == null ? null : productProperties!.toMap(),
      'publisherDisplayName': ?publisherDisplayName,
      'publisherIdentifier': ?publisherIdentifier,
      'sku': ?sku,
      'type': type,
      'vmExtensionType': ?vmExtensionType,
    };
  }

  factory GetProductResult.fromMap(Map<String, dynamic> map) {
    return GetProductResult(
      billingPartNumber: map['billingPartNumber'] == null ? null : map['billingPartNumber']! as String,
      compatibility: map['compatibility'] == null ? null : CompatibilityResponse.fromMap((map['compatibility']! as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description']! as String,
      displayName: map['displayName'] == null ? null : map['displayName']! as String,
      etag: map['etag'] == null ? null : map['etag']! as String,
      galleryItemIdentity: map['galleryItemIdentity'] == null ? null : map['galleryItemIdentity']! as String,
      iconUris: map['iconUris'] == null ? null : IconUrisResponse.fromMap((map['iconUris']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      legalTerms: map['legalTerms'] == null ? null : map['legalTerms']! as String,
      links: map['links'] == null ? null : pulumi.Input.decodeList<ProductLinkResponse>(map['links']!, (value) => ProductLinkResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      offer: map['offer'] == null ? null : map['offer']! as String,
      offerVersion: map['offerVersion'] == null ? null : map['offerVersion']! as String,
      payloadLength: map['payloadLength'] == null ? null : map['payloadLength']! as double,
      privacyPolicy: map['privacyPolicy'] == null ? null : map['privacyPolicy']! as String,
      productKind: map['productKind'] == null ? null : map['productKind']! as String,
      productProperties: map['productProperties'] == null ? null : ProductPropertiesResponse.fromMap((map['productProperties']! as Map).cast<String, dynamic>()),
      publisherDisplayName: map['publisherDisplayName'] == null ? null : map['publisherDisplayName']! as String,
      publisherIdentifier: map['publisherIdentifier'] == null ? null : map['publisherIdentifier']! as String,
      sku: map['sku'] == null ? null : map['sku']! as String,
      type: map['type'] as String,
      vmExtensionType: map['vmExtensionType'] == null ? null : map['vmExtensionType']! as String,
    );
  }
}

