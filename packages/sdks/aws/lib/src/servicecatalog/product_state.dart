// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'product_provisioning_artifact_parameters.dart';

/// Input properties used for looking up and filtering Product resources.
class ProductState {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  final pulumi.Input<String>? acceptLanguage;
  /// ARN of the product.
  final pulumi.Input<String>? arn;
  /// Time when the product was created.
  final pulumi.Input<String>? createdTime;
  /// Description of the product.
  final pulumi.Input<String>? description;
  /// Distributor (i.e., vendor) of the product.
  final pulumi.Input<String>? distributor;
  /// Whether the product has a default path. If the product does not have a default path, call `ListLaunchPaths` to disambiguate between paths.  Otherwise, `ListLaunchPaths` is not required, and the output of ProductViewSummary can be used directly with `DescribeProvisioningParameters`.
  final pulumi.Input<bool>? hasDefaultPath;
  /// Name of the product.
  final pulumi.Input<String>? name;
  /// Owner of the product.
  final pulumi.Input<String>? owner;
  /// Configuration block for provisioning artifact (i.e., version) parameters. See `provisioning_artifact_parameters` Block for details.
  final pulumi.Input<ProductProvisioningArtifactParameters>? provisioningArtifactParameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Status of the product.
  final pulumi.Input<String>? status;
  /// Support information about the product.
  final pulumi.Input<String>? supportDescription;
  /// Contact email for product support.
  final pulumi.Input<String>? supportEmail;
  /// Contact URL for product support.
  final pulumi.Input<String>? supportUrl;
  /// Tags to apply to the product. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Type of product. See [AWS Docs](https://docs.aws.amazon.com/servicecatalog/latest/dg/API_CreateProduct.html#API_CreateProduct_RequestSyntax) for valid list of values.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? type;

  /// Creates a new [ProductState].
  /// [acceptLanguage] Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  /// [arn] ARN of the product.
  /// [createdTime] Time when the product was created.
  /// [description] Description of the product.
  /// [distributor] Distributor (i.e., vendor) of the product.
  /// [hasDefaultPath] Whether the product has a default path. If the product does not have a default path, call `ListLaunchPaths` to disambiguate between paths.  Otherwise, `ListLaunchPaths` is not required, and the output of ProductViewSummary can be used directly with `DescribeProvisioningParameters`.
  /// [name] Name of the product.
  /// [owner] Owner of the product.
  /// [provisioningArtifactParameters] Configuration block for provisioning artifact (i.e., version) parameters. See `provisioning_artifact_parameters` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Status of the product.
  /// [supportDescription] Support information about the product.
  /// [supportEmail] Contact email for product support.
  /// [supportUrl] Contact URL for product support.
  /// [tags] Tags to apply to the product. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [type] Type of product. See [AWS Docs](https://docs.aws.amazon.com/servicecatalog/latest/dg/API_CreateProduct.html#API_CreateProduct_RequestSyntax) for valid list of values.
  ProductState({
    pulumi.Output<String>? acceptLanguage,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createdTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? distributor,
    pulumi.Output<bool>? hasDefaultPath,
    pulumi.Output<String>? name,
    pulumi.Output<String>? owner,
    pulumi.Output<ProductProvisioningArtifactParameters>? provisioningArtifactParameters,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<String>? supportDescription,
    pulumi.Output<String>? supportEmail,
    pulumi.Output<String>? supportUrl,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? type,
  }) :
      acceptLanguage = pulumi.Input.asOptionalInput<String>(acceptLanguage),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createdTime = pulumi.Input.asOptionalInput<String>(createdTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      distributor = pulumi.Input.asOptionalInput<String>(distributor),
      hasDefaultPath = pulumi.Input.asOptionalInput<bool>(hasDefaultPath),
      name = pulumi.Input.asOptionalInput<String>(name),
      owner = pulumi.Input.asOptionalInput<String>(owner),
      provisioningArtifactParameters = pulumi.Input.asOptionalInput<ProductProvisioningArtifactParameters>(provisioningArtifactParameters),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      supportDescription = pulumi.Input.asOptionalInput<String>(supportDescription),
      supportEmail = pulumi.Input.asOptionalInput<String>(supportEmail),
      supportUrl = pulumi.Input.asOptionalInput<String>(supportUrl),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'arn': ?arn,
      'createdTime': ?createdTime,
      'description': ?description,
      'distributor': ?distributor,
      'hasDefaultPath': ?hasDefaultPath,
      'name': ?name,
      'owner': ?owner,
      'provisioningArtifactParameters': ?pulumi.Input.mapOptionalInputValue<ProductProvisioningArtifactParameters, Map<String, dynamic>>(provisioningArtifactParameters, (value) => value.toMap()),
      'region': ?region,
      'status': ?status,
      'supportDescription': ?supportDescription,
      'supportEmail': ?supportEmail,
      'supportUrl': ?supportUrl,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
    };
  }

  factory ProductState.fromMap(Map<String, dynamic> map) {
    return ProductState(
      acceptLanguage: map['acceptLanguage'] == null ? null : pulumi.Output.create<String>(map['acceptLanguage'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createdTime: map['createdTime'] == null ? null : pulumi.Output.create<String>(map['createdTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      distributor: map['distributor'] == null ? null : pulumi.Output.create<String>(map['distributor'] as String),
      hasDefaultPath: map['hasDefaultPath'] == null ? null : pulumi.Output.create<bool>(map['hasDefaultPath'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      owner: map['owner'] == null ? null : pulumi.Output.create<String>(map['owner'] as String),
      provisioningArtifactParameters: map['provisioningArtifactParameters'] == null ? null : pulumi.Output.create<ProductProvisioningArtifactParameters>(ProductProvisioningArtifactParameters.fromMap((map['provisioningArtifactParameters'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      supportDescription: map['supportDescription'] == null ? null : pulumi.Output.create<String>(map['supportDescription'] as String),
      supportEmail: map['supportEmail'] == null ? null : pulumi.Output.create<String>(map['supportEmail'] as String),
      supportUrl: map['supportUrl'] == null ? null : pulumi.Output.create<String>(map['supportUrl'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

