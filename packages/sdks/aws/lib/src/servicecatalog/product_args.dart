// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'product_provisioning_artifact_parameters.dart';

/// {@template pulumi_servicecatalog_product_product_args_doc}
/// The set of arguments for Product.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_product_product_args_doc}
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
  /// Configuration block for provisioning artifact (i.e., version) parameters. See `provisioningArtifactParameters` Block for details.
  final pulumi.Input<ProductProvisioningArtifactParameters> provisioningArtifactParameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Support information about the product.
  final pulumi.Input<String>? supportDescription;
  /// Contact email for product support.
  final pulumi.Input<String>? supportEmail;
  /// Contact URL for product support.
  final pulumi.Input<String>? supportUrl;
  /// Tags to apply to the product. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Type of product. See [AWS Docs](https://docs.aws.amazon.com/servicecatalog/latest/dg/API_CreateProduct.html#API_CreateProduct_RequestSyntax) for valid list of values.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> type;

  /// Creates a new [ProductArgs].
  /// [acceptLanguage] Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  /// [description] Description of the product.
  /// [distributor] Distributor (i.e., vendor) of the product.
  /// [name] Name of the product.
  /// [owner] Owner of the product.
  /// [provisioningArtifactParameters] Configuration block for provisioning artifact (i.e., version) parameters. See `provisioningArtifactParameters` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [supportDescription] Support information about the product.
  /// [supportEmail] Contact email for product support.
  /// [supportUrl] Contact URL for product support.
  /// [tags] Tags to apply to the product. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] Type of product. See [AWS Docs](https://docs.aws.amazon.com/servicecatalog/latest/dg/API_CreateProduct.html#API_CreateProduct_RequestSyntax) for valid list of values.
  const ProductArgs({
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
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'description': ?description,
      'distributor': ?distributor,
      'name': ?name,
      'owner': owner,
      'provisioningArtifactParameters': pulumi.Input.mapInputValue<ProductProvisioningArtifactParameters, Map<String, dynamic>>(provisioningArtifactParameters, (value) => value.toMap()),
      'region': ?region,
      'supportDescription': ?supportDescription,
      'supportEmail': ?supportEmail,
      'supportUrl': ?supportUrl,
      'tags': ?tags,
      'type': type,
    };
  }

  factory ProductArgs.fromMap(Map<String, dynamic> map) {
    return ProductArgs(
      acceptLanguage: (() { final guardedValue = map['acceptLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distributor: (() { final guardedValue = map['distributor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owner: pulumi.Input.fromValue(map['owner'] as String),
      provisioningArtifactParameters: pulumi.Input.fromValue(ProductProvisioningArtifactParameters.fromMap((map['provisioningArtifactParameters']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportDescription: (() { final guardedValue = map['supportDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportEmail: (() { final guardedValue = map['supportEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportUrl: (() { final guardedValue = map['supportUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
