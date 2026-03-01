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
  /// Configuration block for provisioning artifact (i.e., version) parameters. See `provisioning_artifact_parameters` Block for details.
  final pulumi.Input<ProductProvisioningArtifactParameters> provisioningArtifactParameters;
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

  /// Creates a new [ProductArgs].
  /// [acceptLanguage] Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  /// [description] Description of the product.
  /// [distributor] Distributor (i.e., vendor) of the product.
  /// [name] Name of the product.
  /// [owner] Owner of the product.
  /// [provisioningArtifactParameters] Configuration block for provisioning artifact (i.e., version) parameters. See `provisioning_artifact_parameters` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [supportDescription] Support information about the product.
  /// [supportEmail] Contact email for product support.
  /// [supportUrl] Contact URL for product support.
  /// [tags] Tags to apply to the product. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] Type of product. See [AWS Docs](https://docs.aws.amazon.com/servicecatalog/latest/dg/API_CreateProduct.html#API_CreateProduct_RequestSyntax) for valid list of values.
  ProductArgs({
    pulumi.Output<String>? acceptLanguage,
    pulumi.Output<String>? description,
    pulumi.Output<String>? distributor,
    pulumi.Output<String>? name,
    required pulumi.Output<String> owner,
    required pulumi.Output<ProductProvisioningArtifactParameters> provisioningArtifactParameters,
    pulumi.Output<String>? region,
    pulumi.Output<String>? supportDescription,
    pulumi.Output<String>? supportEmail,
    pulumi.Output<String>? supportUrl,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> type,
  }) :
      acceptLanguage = pulumi.Input.asOptionalInput<String>(acceptLanguage),
      description = pulumi.Input.asOptionalInput<String>(description),
      distributor = pulumi.Input.asOptionalInput<String>(distributor),
      name = pulumi.Input.asOptionalInput<String>(name),
      owner = pulumi.Input.asInput<String>(owner),
      provisioningArtifactParameters = pulumi.Input.asInput<ProductProvisioningArtifactParameters>(provisioningArtifactParameters),
      region = pulumi.Input.asOptionalInput<String>(region),
      supportDescription = pulumi.Input.asOptionalInput<String>(supportDescription),
      supportEmail = pulumi.Input.asOptionalInput<String>(supportEmail),
      supportUrl = pulumi.Input.asOptionalInput<String>(supportUrl),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asInput<String>(type);

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
      acceptLanguage: map['acceptLanguage'] == null ? null : pulumi.Output.create<String>(map['acceptLanguage'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      distributor: map['distributor'] == null ? null : pulumi.Output.create<String>(map['distributor'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      owner: pulumi.Output.create<String>(map['owner'] as String),
      provisioningArtifactParameters: pulumi.Output.create<ProductProvisioningArtifactParameters>(ProductProvisioningArtifactParameters.fromMap((map['provisioningArtifactParameters'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      supportDescription: map['supportDescription'] == null ? null : pulumi.Output.create<String>(map['supportDescription'] as String),
      supportEmail: map['supportEmail'] == null ? null : pulumi.Output.create<String>(map['supportEmail'] as String),
      supportUrl: map['supportUrl'] == null ? null : pulumi.Output.create<String>(map['supportUrl'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

