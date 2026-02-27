// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../product_provisioning_artifact_parameters/product_provisioning_artifact_parameters.dart';

/// The set of arguments for Product.
class ProductArgs {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  final pulumi.Input<String>? acceptLanguage;

  /// Description of the product.
  final pulumi.Input<String>? description;

  /// Distributor (i.e., vendor) of the product.
  final pulumi.Input<String>? distributor;

  /// Name of the product.
  final pulumi.Input<String>? name;

  /// Owner of the product.
  final pulumi.Input<String> owner;

  /// Configuration block for provisioning artifact (i.e., version) parameters. See `provisioning_artifact_parameters` Block for details.
  final pulumi.Input<ProductProvisioningArtifactParameters>
      provisioningArtifactParameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Support information about the product.
  final pulumi.Input<String>? supportDescription;

  /// Contact email for product support.
  final pulumi.Input<String>? supportEmail;

  /// Contact URL for product support.
  final pulumi.Input<String>? supportUrl;

  /// Tags to apply to the product. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Type of product. See [AWS Docs](https://docs.aws.amazon.com/servicecatalog/latest/dg/API_CreateProduct.html#API_CreateProduct_RequestSyntax) for valid list of values.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> type;

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
    map['provisioningArtifactParameters'] = pulumi.Input.mapInputValue<
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
      acceptLanguage:
          pulumi.Input.asOptionalInput<String>(map['acceptLanguage']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      distributor: pulumi.Input.asOptionalInput<String>(map['distributor']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      owner: pulumi.Input.asInput<String>(map['owner']),
      provisioningArtifactParameters:
          pulumi.Input.asInput<ProductProvisioningArtifactParameters>(
              map['provisioningArtifactParameters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      supportDescription:
          pulumi.Input.asOptionalInput<String>(map['supportDescription']),
      supportEmail: pulumi.Input.asOptionalInput<String>(map['supportEmail']),
      supportUrl: pulumi.Input.asOptionalInput<String>(map['supportUrl']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
