// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_provisioning_artifact_provisioning_artifact_args_doc}
/// The set of arguments for ProvisioningArtifact.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_provisioning_artifact_provisioning_artifact_args_doc}
class ProvisioningArtifactArgs {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). The default value is `en`.
  final pulumi.Input<String?>? acceptLanguage;
  /// Whether the product version is active. Inactive provisioning artifacts are invisible to end users. End users cannot launch or update a provisioned product from an inactive provisioning artifact. Default is `true`.
  final pulumi.Input<bool?>? active;
  /// Description of the provisioning artifact (i.e., version), including how it differs from the previous provisioning artifact.
  final pulumi.Input<String?>? description;
  /// Whether AWS Service Catalog stops validating the specified provisioning artifact template even if it is invalid.
  final pulumi.Input<bool?>? disableTemplateValidation;
  /// Information set by the administrator to provide guidance to end users about which provisioning artifacts to use. Valid values are `DEFAULT` and `DEPRECATED`. The default is `DEFAULT`. Users are able to make updates to a provisioned product of a deprecated version but cannot launch new provisioned products using a deprecated version.
  final pulumi.Input<String?>? guidance;
  /// Name of the provisioning artifact (for example, `v1`, `v2beta`). No spaces are allowed.
  final pulumi.Input<String?>? name;
  /// Identifier of the product.
  final pulumi.Input<String> productId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Template source as the physical ID of the resource that contains the template. Currently only supports CloudFormation stack ARN. Specify the physical ID as `arn:[partition]:cloudformation:[region]:[account ID]:stack/[stack name]/[resource ID]`.
  final pulumi.Input<String?>? templatePhysicalId;
  /// Template source as URL of the CloudFormation template in Amazon S3.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? templateUrl;
  /// Type of provisioning artifact. See [AWS Docs](https://docs.aws.amazon.com/servicecatalog/latest/dg/API_ProvisioningArtifactProperties.html) for valid list of values.
  final pulumi.Input<String?>? type;

  /// Creates a new [ProvisioningArtifactArgs].
  /// [acceptLanguage] Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). The default value is `en`.
  /// [active] Whether the product version is active. Inactive provisioning artifacts are invisible to end users. End users cannot launch or update a provisioned product from an inactive provisioning artifact. Default is `true`.
  /// [description] Description of the provisioning artifact (i.e., version), including how it differs from the previous provisioning artifact.
  /// [disableTemplateValidation] Whether AWS Service Catalog stops validating the specified provisioning artifact template even if it is invalid.
  /// [guidance] Information set by the administrator to provide guidance to end users about which provisioning artifacts to use. Valid values are `DEFAULT` and `DEPRECATED`. The default is `DEFAULT`. Users are able to make updates to a provisioned product of a deprecated version but cannot launch new provisioned products using a deprecated version.
  /// [name] Name of the provisioning artifact (for example, `v1`, `v2beta`). No spaces are allowed.
  /// [productId] Identifier of the product.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [templatePhysicalId] Template source as the physical ID of the resource that contains the template. Currently only supports CloudFormation stack ARN. Specify the physical ID as `arn:[partition]:cloudformation:[region]:[account ID]:stack/[stack name]/[resource ID]`.
  /// [templateUrl] Template source as URL of the CloudFormation template in Amazon S3.
  /// [type] Type of provisioning artifact. See [AWS Docs](https://docs.aws.amazon.com/servicecatalog/latest/dg/API_ProvisioningArtifactProperties.html) for valid list of values.
  const ProvisioningArtifactArgs({
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
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'active': ?active,
      'description': ?description,
      'disableTemplateValidation': ?disableTemplateValidation,
      'guidance': ?guidance,
      'name': ?name,
      'productId': productId,
      'region': ?region,
      'templatePhysicalId': ?templatePhysicalId,
      'templateUrl': ?templateUrl,
      'type': ?type,
    };
  }

  factory ProvisioningArtifactArgs.fromMap(Map<String, dynamic> map) {
    return ProvisioningArtifactArgs(
      acceptLanguage: (() { final guardedValue = map['acceptLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableTemplateValidation: (() { final guardedValue = map['disableTemplateValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      guidance: (() { final guardedValue = map['guidance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productId: pulumi.Input.fromValue(map['productId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templatePhysicalId: (() { final guardedValue = map['templatePhysicalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateUrl: (() { final guardedValue = map['templateUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
