// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../product_provisioning_artifact_parameters/product_provisioning_artifact_parameters.dart';

/// The set of arguments for Product.
class ProductArgs {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  final Input<String>? acceptLanguage;

  /// Description of the product.
  final Input<String>? description;

  /// Distributor (i.e., vendor) of the product.
  final Input<String>? distributor;

  /// Name of the product.
  final Input<String>? name;

  /// Owner of the product.
  final Input<String> owner;

  /// Configuration block for provisioning artifact (i.e., version) parameters. See `provisioning_artifact_parameters` Block for details.
  final Input<ProductProvisioningArtifactParameters>
      provisioningArtifactParameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Support information about the product.
  final Input<String>? supportDescription;

  /// Contact email for product support.
  final Input<String>? supportEmail;

  /// Contact URL for product support.
  final Input<String>? supportUrl;

  /// Tags to apply to the product. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Type of product. See [AWS Docs](https://docs.aws.amazon.com/servicecatalog/latest/dg/API_CreateProduct.html#API_CreateProduct_RequestSyntax) for valid list of values.
  ///
  /// The following arguments are optional:
  final Input<String> type;

  ProductArgs({
    this.acceptLanguage,
    this.description,
    this.distributor,
    this.name,
    required this.owner,
    required this.provisioningArtifactParameters,
    this.region,
    this.supportDescription,
    this.supportEmail,
    this.supportUrl,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceptLanguageValue = acceptLanguage;
    if (acceptLanguageValue != null) {
      map['acceptLanguage'] = acceptLanguageValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final distributorValue = distributor;
    if (distributorValue != null) {
      map['distributor'] = distributorValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['owner'] = owner;
    map['provisioningArtifactParameters'] = Input.mapInputValue<
            ProductProvisioningArtifactParameters, Map<String, dynamic>>(
        provisioningArtifactParameters, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final supportDescriptionValue = supportDescription;
    if (supportDescriptionValue != null) {
      map['supportDescription'] = supportDescriptionValue;
    }
    final supportEmailValue = supportEmail;
    if (supportEmailValue != null) {
      map['supportEmail'] = supportEmailValue;
    }
    final supportUrlValue = supportUrl;
    if (supportUrlValue != null) {
      map['supportUrl'] = supportUrlValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['type'] = type;
    return map;
  }

  factory ProductArgs.fromMap(Map<String, dynamic> map) {
    return ProductArgs(
      acceptLanguage: Input.asOptionalInput<String>(map['acceptLanguage']),
      description: Input.asOptionalInput<String>(map['description']),
      distributor: Input.asOptionalInput<String>(map['distributor']),
      name: Input.asOptionalInput<String>(map['name']),
      owner: Input.asInput<String>(map['owner']),
      provisioningArtifactParameters:
          Input.asInput<ProductProvisioningArtifactParameters>(
              map['provisioningArtifactParameters']),
      region: Input.asOptionalInput<String>(map['region']),
      supportDescription:
          Input.asOptionalInput<String>(map['supportDescription']),
      supportEmail: Input.asOptionalInput<String>(map['supportEmail']),
      supportUrl: Input.asOptionalInput<String>(map['supportUrl']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
