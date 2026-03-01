// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_provisioning_artifact_provisioning_artifact_args_doc}
/// The set of arguments for ProvisioningArtifact.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_provisioning_artifact_provisioning_artifact_args_doc}
class ProvisioningArtifactArgs {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). The default value is `en`.
  final pulumi.Input<String>? acceptLanguage;

  /// Whether the product version is active. Inactive provisioning artifacts are invisible to end users. End users cannot launch or update a provisioned product from an inactive provisioning artifact. Default is `true`.
  final pulumi.Input<bool>? active;

  /// Description of the provisioning artifact (i.e., version), including how it differs from the previous provisioning artifact.
  final pulumi.Input<String>? description;

  /// Whether AWS Service Catalog stops validating the specified provisioning artifact template even if it is invalid.
  final pulumi.Input<bool>? disableTemplateValidation;

  /// Information set by the administrator to provide guidance to end users about which provisioning artifacts to use. Valid values are `DEFAULT` and `DEPRECATED`. The default is `DEFAULT`. Users are able to make updates to a provisioned product of a deprecated version but cannot launch new provisioned products using a deprecated version.
  final pulumi.Input<String>? guidance;

  /// Name of the provisioning artifact (for example, `v1`, `v2beta`). No spaces are allowed.
  final pulumi.Input<String>? name;

  /// Identifier of the product.
  final pulumi.Input<String> productId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Template source as the physical ID of the resource that contains the template. Currently only supports CloudFormation stack ARN. Specify the physical ID as `arn:[partition]:cloudformation:[region]:[account ID]:stack/[stack name]/[resource ID]`.
  final pulumi.Input<String>? templatePhysicalId;

  /// Template source as URL of the CloudFormation template in Amazon S3.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? templateUrl;

  /// Type of provisioning artifact. See [AWS Docs](https://docs.aws.amazon.com/servicecatalog/latest/dg/API_ProvisioningArtifactProperties.html) for valid list of values.
  final pulumi.Input<String>? type;

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
  ProvisioningArtifactArgs({
    String? acceptLanguage,
    bool? active,
    String? description,
    bool? disableTemplateValidation,
    String? guidance,
    String? name,
    required String productId,
    String? region,
    String? templatePhysicalId,
    String? templateUrl,
    String? type,
  }) : acceptLanguage = pulumi.Input.asOptionalInput<String>(acceptLanguage),
       active = pulumi.Input.asOptionalInput<bool>(active),
       description = pulumi.Input.asOptionalInput<String>(description),
       disableTemplateValidation = pulumi.Input.asOptionalInput<bool>(
         disableTemplateValidation,
       ),
       guidance = pulumi.Input.asOptionalInput<String>(guidance),
       name = pulumi.Input.asOptionalInput<String>(name),
       productId = pulumi.Input.asInput<String>(productId),
       region = pulumi.Input.asOptionalInput<String>(region),
       templatePhysicalId = pulumi.Input.asOptionalInput<String>(
         templatePhysicalId,
       ),
       templateUrl = pulumi.Input.asOptionalInput<String>(templateUrl),
       type = pulumi.Input.asOptionalInput<String>(type);

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
      acceptLanguage: map['acceptLanguage'] == null
          ? null
          : map['acceptLanguage'] as String,
      active: map['active'] == null ? null : map['active'] as bool,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      disableTemplateValidation: map['disableTemplateValidation'] == null
          ? null
          : map['disableTemplateValidation'] as bool,
      guidance: map['guidance'] == null ? null : map['guidance'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      productId: map['productId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      templatePhysicalId: map['templatePhysicalId'] == null
          ? null
          : map['templatePhysicalId'] as String,
      templateUrl: map['templateUrl'] == null
          ? null
          : map['templateUrl'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
