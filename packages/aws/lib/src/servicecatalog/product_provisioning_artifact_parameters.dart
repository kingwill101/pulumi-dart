// ignore_for_file: unused_element, unnecessary_cast


class ProductProvisioningArtifactParameters {
  /// Description of the provisioning artifact (i.e., version), including how it differs from the previous provisioning artifact.
  final String? description;
  /// Whether AWS Service Catalog stops validating the specified provisioning artifact template even if it is invalid.
  final bool? disableTemplateValidation;
  /// Name of the provisioning artifact (for example, `v1`, `v2beta`). No spaces are allowed.
  final String? name;
  /// Template source as the physical ID of the resource that contains the template. Currently only supports CloudFormation stack ARN. Specify the physical ID as `arn:[partition]:cloudformation:[region]:[account ID]:stack/[stack name]/[resource ID]`.
  final String? templatePhysicalId;
  /// Template source as URL of the CloudFormation template in Amazon S3.
  final String? templateUrl;
  /// Type of provisioning artifact. See [AWS Docs](https://docs.aws.amazon.com/servicecatalog/latest/dg/API_ProvisioningArtifactProperties.html) for valid list of values.
  final String? type;

  /// Creates a new [ProductProvisioningArtifactParameters].
  /// [description] Description of the provisioning artifact (i.e., version), including how it differs from the previous provisioning artifact.
  /// [disableTemplateValidation] Whether AWS Service Catalog stops validating the specified provisioning artifact template even if it is invalid.
  /// [name] Name of the provisioning artifact (for example, `v1`, `v2beta`). No spaces are allowed.
  /// [templatePhysicalId] Template source as the physical ID of the resource that contains the template. Currently only supports CloudFormation stack ARN. Specify the physical ID as `arn:[partition]:cloudformation:[region]:[account ID]:stack/[stack name]/[resource ID]`.
  /// [templateUrl] Template source as URL of the CloudFormation template in Amazon S3.
  /// [type] Type of provisioning artifact. See [AWS Docs](https://docs.aws.amazon.com/servicecatalog/latest/dg/API_ProvisioningArtifactProperties.html) for valid list of values.
  ProductProvisioningArtifactParameters({
    this.description,
    this.disableTemplateValidation,
    this.name,
    this.templatePhysicalId,
    this.templateUrl,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disableTemplateValidation': ?disableTemplateValidation,
      'name': ?name,
      'templatePhysicalId': ?templatePhysicalId,
      'templateUrl': ?templateUrl,
      'type': ?type,
    };
  }

  factory ProductProvisioningArtifactParameters.fromMap(Map<String, dynamic> map) {
    return ProductProvisioningArtifactParameters(
      description: map['description'] == null ? null : map['description'] as String,
      disableTemplateValidation: map['disableTemplateValidation'] == null ? null : map['disableTemplateValidation'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      templatePhysicalId: map['templatePhysicalId'] == null ? null : map['templatePhysicalId'] as String,
      templateUrl: map['templateUrl'] == null ? null : map['templateUrl'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

