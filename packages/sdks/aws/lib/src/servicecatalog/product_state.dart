// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'product_provisioning_artifact_parameters.dart';

/// Input properties used for looking up and filtering Product resources.
class ProductState {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  final pulumi.Input<String?>? acceptLanguage;
  /// ARN of the product.
  final pulumi.Input<String?>? arn;
  /// Time when the product was created.
  final pulumi.Input<String?>? createdTime;
  /// Description of the product.
  final pulumi.Input<String?>? description;
  /// Distributor (i.e., vendor) of the product.
  final pulumi.Input<String?>? distributor;
  /// Whether the product has a default path. If the product does not have a default path, call `ListLaunchPaths` to disambiguate between paths.  Otherwise, `ListLaunchPaths` is not required, and the output of ProductViewSummary can be used directly with `DescribeProvisioningParameters`.
  final pulumi.Input<bool?>? hasDefaultPath;
  /// Name of the product.
  final pulumi.Input<String?>? name;
  /// Owner of the product.
  final pulumi.Input<String?>? owner;
  /// Configuration block for provisioning artifact (i.e., version) parameters. See `provisioningArtifactParameters` Block for details.
  final pulumi.Input<ProductProvisioningArtifactParameters?>? provisioningArtifactParameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Status of the product.
  final pulumi.Input<String?>? status;
  /// Support information about the product.
  final pulumi.Input<String?>? supportDescription;
  /// Contact email for product support.
  final pulumi.Input<String?>? supportEmail;
  /// Contact URL for product support.
  final pulumi.Input<String?>? supportUrl;
  /// Tags to apply to the product. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Type of product. See [AWS Docs](https://docs.aws.amazon.com/servicecatalog/latest/dg/API_CreateProduct.html#API_CreateProduct_RequestSyntax) for valid list of values.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? type;

  /// Creates a new [ProductState].
  /// [acceptLanguage] Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  /// [arn] ARN of the product.
  /// [createdTime] Time when the product was created.
  /// [description] Description of the product.
  /// [distributor] Distributor (i.e., vendor) of the product.
  /// [hasDefaultPath] Whether the product has a default path. If the product does not have a default path, call `ListLaunchPaths` to disambiguate between paths.  Otherwise, `ListLaunchPaths` is not required, and the output of ProductViewSummary can be used directly with `DescribeProvisioningParameters`.
  /// [name] Name of the product.
  /// [owner] Owner of the product.
  /// [provisioningArtifactParameters] Configuration block for provisioning artifact (i.e., version) parameters. See `provisioningArtifactParameters` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Status of the product.
  /// [supportDescription] Support information about the product.
  /// [supportEmail] Contact email for product support.
  /// [supportUrl] Contact URL for product support.
  /// [tags] Tags to apply to the product. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [type] Type of product. See [AWS Docs](https://docs.aws.amazon.com/servicecatalog/latest/dg/API_CreateProduct.html#API_CreateProduct_RequestSyntax) for valid list of values.
  const ProductState({
    this.acceptLanguage,
    this.arn,
    this.createdTime,
    this.description,
    this.distributor,
    this.hasDefaultPath,
    this.name,
    this.owner,
    this.provisioningArtifactParameters,
    this.region,
    this.status,
    this.supportDescription,
    this.supportEmail,
    this.supportUrl,
    this.tags,
    this.tagsAll,
    this.type,
  });

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
      acceptLanguage: (() { final guardedValue = map['acceptLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distributor: (() { final guardedValue = map['distributor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hasDefaultPath: (() { final guardedValue = map['hasDefaultPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningArtifactParameters: (() { final guardedValue = map['provisioningArtifactParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProductProvisioningArtifactParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportDescription: (() { final guardedValue = map['supportDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportEmail: (() { final guardedValue = map['supportEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportUrl: (() { final guardedValue = map['supportUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
