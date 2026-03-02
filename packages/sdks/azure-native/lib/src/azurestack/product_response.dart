// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compatibility_response.dart';
import 'icon_uris_response.dart';
import 'product_link_response.dart';
import 'product_properties_response.dart';

/// Product information.
class ProductResponse {
  /// The part number used for billing purposes.
  final pulumi.Input<String>? billingPartNumber;
  /// Product compatibility with current device.
  final pulumi.Input<CompatibilityResponse>? compatibility;
  /// The description of the product.
  final pulumi.Input<String>? description;
  /// The display name of the product.
  final pulumi.Input<String>? displayName;
  /// The entity tag used for optimistic concurrency when modifying the resource.
  final pulumi.Input<String>? etag;
  /// The identifier of the gallery item corresponding to the product.
  final pulumi.Input<String>? galleryItemIdentity;
  /// Additional links available for this product.
  final pulumi.Input<IconUrisResponse>? iconUris;
  /// ID of the resource.
  final pulumi.Input<String> id;
  /// The legal terms.
  final pulumi.Input<String>? legalTerms;
  /// Additional links available for this product.
  final pulumi.Input<List<ProductLinkResponse>>? links;
  /// Name of the resource.
  final pulumi.Input<String> name;
  /// The offer representing the product.
  final pulumi.Input<String>? offer;
  /// The version of the product offer.
  final pulumi.Input<String>? offerVersion;
  /// The length of product content.
  final pulumi.Input<double>? payloadLength;
  /// The privacy policy.
  final pulumi.Input<String>? privacyPolicy;
  /// The kind of the product (virtualMachine or virtualMachineExtension)
  final pulumi.Input<String>? productKind;
  /// Additional properties for the product.
  final pulumi.Input<ProductPropertiesResponse>? productProperties;
  /// The user-friendly name of the product publisher.
  final pulumi.Input<String>? publisherDisplayName;
  /// Publisher identifier.
  final pulumi.Input<String>? publisherIdentifier;
  /// The product SKU.
  final pulumi.Input<String>? sku;
  /// Type of Resource.
  final pulumi.Input<String> type;
  /// The type of the Virtual Machine Extension.
  final pulumi.Input<String>? vmExtensionType;

  /// Creates a new [ProductResponse].
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
  ProductResponse({
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
      'compatibility': ?pulumi.Input.mapOptionalInputValue<CompatibilityResponse, Map<String, dynamic>>(compatibility, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'etag': ?etag,
      'galleryItemIdentity': ?galleryItemIdentity,
      'iconUris': ?pulumi.Input.mapOptionalInputValue<IconUrisResponse, Map<String, dynamic>>(iconUris, (value) => value.toMap()),
      'id': id,
      'legalTerms': ?legalTerms,
      'links': ?pulumi.Input.mapOptionalInputValue<List<ProductLinkResponse>, List<Map<String, dynamic>>>(links, (value) => pulumi.Input.encodeList<ProductLinkResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'offer': ?offer,
      'offerVersion': ?offerVersion,
      'payloadLength': ?payloadLength,
      'privacyPolicy': ?privacyPolicy,
      'productKind': ?productKind,
      'productProperties': ?pulumi.Input.mapOptionalInputValue<ProductPropertiesResponse, Map<String, dynamic>>(productProperties, (value) => value.toMap()),
      'publisherDisplayName': ?publisherDisplayName,
      'publisherIdentifier': ?publisherIdentifier,
      'sku': ?sku,
      'type': type,
      'vmExtensionType': ?vmExtensionType,
    };
  }

  factory ProductResponse.fromMap(Map<String, dynamic> map) {
    return ProductResponse(
      billingPartNumber: map['billingPartNumber'] == null ? null : (map['billingPartNumber']! as String).input(),
      compatibility: map['compatibility'] == null ? null : (CompatibilityResponse.fromMap((map['compatibility']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      galleryItemIdentity: map['galleryItemIdentity'] == null ? null : (map['galleryItemIdentity']! as String).input(),
      iconUris: map['iconUris'] == null ? null : (IconUrisResponse.fromMap((map['iconUris']! as Map).cast<String, dynamic>())).input(),
      id: (map['id'] as String).input(),
      legalTerms: map['legalTerms'] == null ? null : (map['legalTerms']! as String).input(),
      links: map['links'] == null ? null : (pulumi.Input.decodeList<ProductLinkResponse>(map['links']!, (value) => ProductLinkResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      offer: map['offer'] == null ? null : (map['offer']! as String).input(),
      offerVersion: map['offerVersion'] == null ? null : (map['offerVersion']! as String).input(),
      payloadLength: map['payloadLength'] == null ? null : (map['payloadLength']! as double).input(),
      privacyPolicy: map['privacyPolicy'] == null ? null : (map['privacyPolicy']! as String).input(),
      productKind: map['productKind'] == null ? null : (map['productKind']! as String).input(),
      productProperties: map['productProperties'] == null ? null : (ProductPropertiesResponse.fromMap((map['productProperties']! as Map).cast<String, dynamic>())).input(),
      publisherDisplayName: map['publisherDisplayName'] == null ? null : (map['publisherDisplayName']! as String).input(),
      publisherIdentifier: map['publisherIdentifier'] == null ? null : (map['publisherIdentifier']! as String).input(),
      sku: map['sku'] == null ? null : (map['sku']! as String).input(),
      type: (map['type'] as String).input(),
      vmExtensionType: map['vmExtensionType'] == null ? null : (map['vmExtensionType']! as String).input(),
    );
  }
}

