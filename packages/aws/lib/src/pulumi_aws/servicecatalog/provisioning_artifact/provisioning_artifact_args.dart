// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ProvisioningArtifact.
class ProvisioningArtifactArgs {
  /// Language code. Valid values: <span pulumi-lang-nodejs="`en`" pulumi-lang-dotnet="`En`" pulumi-lang-go="`en`" pulumi-lang-python="`en`" pulumi-lang-yaml="`en`" pulumi-lang-java="`en`">`en`</span> (English), <span pulumi-lang-nodejs="`jp`" pulumi-lang-dotnet="`Jp`" pulumi-lang-go="`jp`" pulumi-lang-python="`jp`" pulumi-lang-yaml="`jp`" pulumi-lang-java="`jp`">`jp`</span> (Japanese), <span pulumi-lang-nodejs="`zh`" pulumi-lang-dotnet="`Zh`" pulumi-lang-go="`zh`" pulumi-lang-python="`zh`" pulumi-lang-yaml="`zh`" pulumi-lang-java="`zh`">`zh`</span> (Chinese). The default value is <span pulumi-lang-nodejs="`en`" pulumi-lang-dotnet="`En`" pulumi-lang-go="`en`" pulumi-lang-python="`en`" pulumi-lang-yaml="`en`" pulumi-lang-java="`en`">`en`</span>.
  final Input<String>? acceptLanguage;

  /// Whether the product version is active. Inactive provisioning artifacts are invisible to end users. End users cannot launch or update a provisioned product from an inactive provisioning artifact. Default is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? active;

  /// Description of the provisioning artifact (i.e., version), including how it differs from the previous provisioning artifact.
  final Input<String>? description;

  /// Whether AWS Service Catalog stops validating the specified provisioning artifact template even if it is invalid.
  final Input<bool>? disableTemplateValidation;

  /// Information set by the administrator to provide guidance to end users about which provisioning artifacts to use. Valid values are `DEFAULT` and `DEPRECATED`. The default is `DEFAULT`. Users are able to make updates to a provisioned product of a deprecated version but cannot launch new provisioned products using a deprecated version.
  final Input<String>? guidance;

  /// Name of the provisioning artifact (for example, <span pulumi-lang-nodejs="`v1`" pulumi-lang-dotnet="`V1`" pulumi-lang-go="`v1`" pulumi-lang-python="`v1`" pulumi-lang-yaml="`v1`" pulumi-lang-java="`v1`">`v1`</span>, <span pulumi-lang-nodejs="`v2beta`" pulumi-lang-dotnet="`V2beta`" pulumi-lang-go="`v2beta`" pulumi-lang-python="`v2beta`" pulumi-lang-yaml="`v2beta`" pulumi-lang-java="`v2beta`">`v2beta`</span>). No spaces are allowed.
  final Input<String>? name;

  /// Identifier of the product.
  final Input<String> productId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Template source as the physical ID of the resource that contains the template. Currently only supports CloudFormation stack ARN. Specify the physical ID as `arn:[partition]:cloudformation:[region]:[account ID]:stack/[stack name]/[resource ID]`.
  final Input<String>? templatePhysicalId;

  /// Template source as URL of the CloudFormation template in Amazon S3.
  ///
  /// The following arguments are optional:
  final Input<String>? templateUrl;

  /// Type of provisioning artifact. See [AWS Docs](https://docs.aws.amazon.com/servicecatalog/latest/dg/API_ProvisioningArtifactProperties.html) for valid list of values.
  final Input<String>? type;

  ProvisioningArtifactArgs({
    this.acceptLanguage,
    this.active,
    this.description,
    this.disableTemplateValidation,
    this.guidance,
    this.name,
    required this.productId,
    this.region,
    this.templatePhysicalId,
    this.templateUrl,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceptLanguageValue = acceptLanguage;
    if (acceptLanguageValue != null) {
      map['acceptLanguage'] = acceptLanguageValue;
    }
    final activeValue = active;
    if (activeValue != null) {
      map['active'] = activeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disableTemplateValidationValue = disableTemplateValidation;
    if (disableTemplateValidationValue != null) {
      map['disableTemplateValidation'] = disableTemplateValidationValue;
    }
    final guidanceValue = guidance;
    if (guidanceValue != null) {
      map['guidance'] = guidanceValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['productId'] = productId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
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

  factory ProvisioningArtifactArgs.fromMap(Map<String, dynamic> map) {
    return ProvisioningArtifactArgs(
      acceptLanguage: Input.asOptionalInput<String>(map['acceptLanguage']),
      active: Input.asOptionalInput<bool>(map['active']),
      description: Input.asOptionalInput<String>(map['description']),
      disableTemplateValidation:
          Input.asOptionalInput<bool>(map['disableTemplateValidation']),
      guidance: Input.asOptionalInput<String>(map['guidance']),
      name: Input.asOptionalInput<String>(map['name']),
      productId: Input.asInput<String>(map['productId']),
      region: Input.asOptionalInput<String>(map['region']),
      templatePhysicalId:
          Input.asOptionalInput<String>(map['templatePhysicalId']),
      templateUrl: Input.asOptionalInput<String>(map['templateUrl']),
      type: Input.asOptionalInput<String>(map['type']),
    );
  }
}
