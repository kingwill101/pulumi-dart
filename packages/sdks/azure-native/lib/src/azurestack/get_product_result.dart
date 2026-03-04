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
      'compatibility': ?compatibility?.toMap(),
      'description': ?description,
      'displayName': ?displayName,
      'etag': ?etag,
      'galleryItemIdentity': ?galleryItemIdentity,
      'iconUris': ?iconUris?.toMap(),
      'id': id,
      'legalTerms': ?legalTerms,
      'links': ?(() {
        final guardedValue = links;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ProductLinkResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'name': name,
      'offer': ?offer,
      'offerVersion': ?offerVersion,
      'payloadLength': ?payloadLength,
      'privacyPolicy': ?privacyPolicy,
      'productKind': ?productKind,
      'productProperties': ?productProperties?.toMap(),
      'publisherDisplayName': ?publisherDisplayName,
      'publisherIdentifier': ?publisherIdentifier,
      'sku': ?sku,
      'type': type,
      'vmExtensionType': ?vmExtensionType,
    };
  }

  factory GetProductResult.fromMap(Map<String, dynamic> map) {
    return GetProductResult(
      billingPartNumber: (() {
        final guardedValue = map['billingPartNumber'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      compatibility: (() {
        final guardedValue = map['compatibility'];
        if (guardedValue == null) return null;
        return CompatibilityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      galleryItemIdentity: (() {
        final guardedValue = map['galleryItemIdentity'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      iconUris: (() {
        final guardedValue = map['iconUris'];
        if (guardedValue == null) return null;
        return IconUrisResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      id: map['id'] as String,
      legalTerms: (() {
        final guardedValue = map['legalTerms'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      links: (() {
        final guardedValue = map['links'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<ProductLinkResponse>(
          guardedValue,
          (value) => ProductLinkResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: map['name'] as String,
      offer: (() {
        final guardedValue = map['offer'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      offerVersion: (() {
        final guardedValue = map['offerVersion'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      payloadLength: (() {
        final guardedValue = map['payloadLength'];
        if (guardedValue == null) return null;
        return guardedValue as double;
      })(),
      privacyPolicy: (() {
        final guardedValue = map['privacyPolicy'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      productKind: (() {
        final guardedValue = map['productKind'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      productProperties: (() {
        final guardedValue = map['productProperties'];
        if (guardedValue == null) return null;
        return ProductPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      publisherDisplayName: (() {
        final guardedValue = map['publisherDisplayName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      publisherIdentifier: (() {
        final guardedValue = map['publisherIdentifier'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      type: map['type'] as String,
      vmExtensionType: (() {
        final guardedValue = map['vmExtensionType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
