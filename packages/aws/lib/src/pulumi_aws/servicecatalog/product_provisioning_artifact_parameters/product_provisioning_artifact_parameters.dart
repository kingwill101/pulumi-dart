// ignore_for_file: unused_element, unnecessary_cast

class ProductProvisioningArtifactParameters {
  /// Description of the provisioning artifact (i.e., version), including how it differs from the previous provisioning artifact.
  final String? description;

  /// Whether AWS Service Catalog stops validating the specified provisioning artifact template even if it is invalid.
  final bool? disableTemplateValidation;

  /// Name of the provisioning artifact (for example, <span pulumi-lang-nodejs="`v1`" pulumi-lang-dotnet="`V1`" pulumi-lang-go="`v1`" pulumi-lang-python="`v1`" pulumi-lang-yaml="`v1`" pulumi-lang-java="`v1`">`v1`</span>, <span pulumi-lang-nodejs="`v2beta`" pulumi-lang-dotnet="`V2beta`" pulumi-lang-go="`v2beta`" pulumi-lang-python="`v2beta`" pulumi-lang-yaml="`v2beta`" pulumi-lang-java="`v2beta`">`v2beta`</span>). No spaces are allowed.
  final String? name;

  /// Template source as the physical ID of the resource that contains the template. Currently only supports CloudFormation stack ARN. Specify the physical ID as `arn:[partition]:cloudformation:[region]:[account ID]:stack/[stack name]/[resource ID]`.
  final String? templatePhysicalId;

  /// Template source as URL of the CloudFormation template in Amazon S3.
  final String? templateUrl;

  /// Type of provisioning artifact. See [AWS Docs](https://docs.aws.amazon.com/servicecatalog/latest/dg/API_ProvisioningArtifactProperties.html) for valid list of values.
  final String? type;

  ProductProvisioningArtifactParameters({
    this.description,
    this.disableTemplateValidation,
    this.name,
    this.templatePhysicalId,
    this.templateUrl,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disableTemplateValidationValue = disableTemplateValidation;
    if (disableTemplateValidationValue != null) {
      map['disableTemplateValidation'] = disableTemplateValidationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final templatePhysicalIdValue = templatePhysicalId;
    if (templatePhysicalIdValue != null) {
      map['templatePhysicalId'] = templatePhysicalIdValue;
    }
    final templateUrlValue = templateUrl;
    if (templateUrlValue != null) {
      map['templateUrl'] = templateUrlValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory ProductProvisioningArtifactParameters.fromMap(
      Map<String, dynamic> map) {
    return ProductProvisioningArtifactParameters(
      description:
          map['description'] == null ? null : map['description'] as String,
      disableTemplateValidation: map['disableTemplateValidation'] == null
          ? null
          : map['disableTemplateValidation'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      templatePhysicalId: map['templatePhysicalId'] == null
          ? null
          : map['templatePhysicalId'] as String,
      templateUrl:
          map['templateUrl'] == null ? null : map['templateUrl'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
