// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../provisioned_product_provisioning_parameter/provisioned_product_provisioning_parameter.dart';
import '../provisioned_product_stack_set_provisioning_preferences/provisioned_product_stack_set_provisioning_preferences.dart';

/// The set of arguments for ProvisionedProduct.
class ProvisionedProductArgs {
  /// Language code. Valid values: <span pulumi-lang-nodejs="`en`" pulumi-lang-dotnet="`En`" pulumi-lang-go="`en`" pulumi-lang-python="`en`" pulumi-lang-yaml="`en`" pulumi-lang-java="`en`">`en`</span> (English), <span pulumi-lang-nodejs="`jp`" pulumi-lang-dotnet="`Jp`" pulumi-lang-go="`jp`" pulumi-lang-python="`jp`" pulumi-lang-yaml="`jp`" pulumi-lang-java="`jp`">`jp`</span> (Japanese), <span pulumi-lang-nodejs="`zh`" pulumi-lang-dotnet="`Zh`" pulumi-lang-go="`zh`" pulumi-lang-python="`zh`" pulumi-lang-yaml="`zh`" pulumi-lang-java="`zh`">`zh`</span> (Chinese). Default value is <span pulumi-lang-nodejs="`en`" pulumi-lang-dotnet="`En`" pulumi-lang-go="`en`" pulumi-lang-python="`en`" pulumi-lang-yaml="`en`" pulumi-lang-java="`en`">`en`</span>.
  final Input<String>? acceptLanguage;

  /// _Only applies to deleting._ If set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, AWS Service Catalog stops managing the specified provisioned product even if it cannot delete the underlying resources. The default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? ignoreErrors;

  /// User-friendly name of the provisioned product.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events.
  final Input<List<String>>? notificationArns;

  /// Path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use <span pulumi-lang-nodejs="`aws.servicecatalog.getLaunchPaths`" pulumi-lang-dotnet="`aws.servicecatalog.getLaunchPaths`" pulumi-lang-go="`servicecatalog.getLaunchPaths`" pulumi-lang-python="`servicecatalog_get_launch_paths`" pulumi-lang-yaml="`aws.servicecatalog.getLaunchPaths`" pulumi-lang-java="`aws.servicecatalog.getLaunchPaths`">`aws.servicecatalog.getLaunchPaths`</span>. When required, you must provide <span pulumi-lang-nodejs="`pathId`" pulumi-lang-dotnet="`PathId`" pulumi-lang-go="`pathId`" pulumi-lang-python="`path_id`" pulumi-lang-yaml="`pathId`" pulumi-lang-java="`pathId`">`path_id`</span> or <span pulumi-lang-nodejs="`pathName`" pulumi-lang-dotnet="`PathName`" pulumi-lang-go="`pathName`" pulumi-lang-python="`path_name`" pulumi-lang-yaml="`pathName`" pulumi-lang-java="`pathName`">`path_name`</span>, but not both.
  final Input<String>? pathId;

  /// Name of the path. You must provide <span pulumi-lang-nodejs="`pathId`" pulumi-lang-dotnet="`PathId`" pulumi-lang-go="`pathId`" pulumi-lang-python="`path_id`" pulumi-lang-yaml="`pathId`" pulumi-lang-java="`pathId`">`path_id`</span> or <span pulumi-lang-nodejs="`pathName`" pulumi-lang-dotnet="`PathName`" pulumi-lang-go="`pathName`" pulumi-lang-python="`path_name`" pulumi-lang-yaml="`pathName`" pulumi-lang-java="`pathName`">`path_name`</span>, but not both.
  final Input<String>? pathName;

  /// Product identifier. For example, `prod-abcdzk7xy33qa`. You must provide <span pulumi-lang-nodejs="`productId`" pulumi-lang-dotnet="`ProductId`" pulumi-lang-go="`productId`" pulumi-lang-python="`product_id`" pulumi-lang-yaml="`productId`" pulumi-lang-java="`productId`">`product_id`</span> or <span pulumi-lang-nodejs="`productName`" pulumi-lang-dotnet="`ProductName`" pulumi-lang-go="`productName`" pulumi-lang-python="`product_name`" pulumi-lang-yaml="`productName`" pulumi-lang-java="`productName`">`product_name`</span>, but not both.
  final Input<String>? productId;

  /// Name of the product. You must provide <span pulumi-lang-nodejs="`productId`" pulumi-lang-dotnet="`ProductId`" pulumi-lang-go="`productId`" pulumi-lang-python="`product_id`" pulumi-lang-yaml="`productId`" pulumi-lang-java="`productId`">`product_id`</span> or <span pulumi-lang-nodejs="`productName`" pulumi-lang-dotnet="`ProductName`" pulumi-lang-go="`productName`" pulumi-lang-python="`product_name`" pulumi-lang-yaml="`productName`" pulumi-lang-java="`productName`">`product_name`</span>, but not both.
  final Input<String>? productName;

  /// Identifier of the provisioning artifact. For example, `pa-4abcdjnxjj6ne`. You must provide the <span pulumi-lang-nodejs="`provisioningArtifactId`" pulumi-lang-dotnet="`ProvisioningArtifactId`" pulumi-lang-go="`provisioningArtifactId`" pulumi-lang-python="`provisioning_artifact_id`" pulumi-lang-yaml="`provisioningArtifactId`" pulumi-lang-java="`provisioningArtifactId`">`provisioning_artifact_id`</span> or <span pulumi-lang-nodejs="`provisioningArtifactName`" pulumi-lang-dotnet="`ProvisioningArtifactName`" pulumi-lang-go="`provisioningArtifactName`" pulumi-lang-python="`provisioning_artifact_name`" pulumi-lang-yaml="`provisioningArtifactName`" pulumi-lang-java="`provisioningArtifactName`">`provisioning_artifact_name`</span>, but not both.
  final Input<String>? provisioningArtifactId;

  /// Name of the provisioning artifact. You must provide the <span pulumi-lang-nodejs="`provisioningArtifactId`" pulumi-lang-dotnet="`ProvisioningArtifactId`" pulumi-lang-go="`provisioningArtifactId`" pulumi-lang-python="`provisioning_artifact_id`" pulumi-lang-yaml="`provisioningArtifactId`" pulumi-lang-java="`provisioningArtifactId`">`provisioning_artifact_id`</span> or <span pulumi-lang-nodejs="`provisioningArtifactName`" pulumi-lang-dotnet="`ProvisioningArtifactName`" pulumi-lang-go="`provisioningArtifactName`" pulumi-lang-python="`provisioning_artifact_name`" pulumi-lang-yaml="`provisioningArtifactName`" pulumi-lang-java="`provisioningArtifactName`">`provisioning_artifact_name`</span>, but not both.
  final Input<String>? provisioningArtifactName;

  /// Configuration block with parameters specified by the administrator that are required for provisioning the product. See <span pulumi-lang-nodejs="`provisioningParameters`" pulumi-lang-dotnet="`ProvisioningParameters`" pulumi-lang-go="`provisioningParameters`" pulumi-lang-python="`provisioning_parameters`" pulumi-lang-yaml="`provisioningParameters`" pulumi-lang-java="`provisioningParameters`">`provisioning_parameters`</span> Block for details.
  final Input<List<ProvisionedProductProvisioningParameter>>?
      provisioningParameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// _Only applies to deleting._ Whether to delete the Service Catalog provisioned product but leave the CloudFormation stack, stack set, or the underlying resources of the deleted provisioned product. The default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? retainPhysicalResources;

  /// Configuration block with information about the provisioning preferences for a stack set. See <span pulumi-lang-nodejs="`stackSetProvisioningPreferences`" pulumi-lang-dotnet="`StackSetProvisioningPreferences`" pulumi-lang-go="`stackSetProvisioningPreferences`" pulumi-lang-python="`stack_set_provisioning_preferences`" pulumi-lang-yaml="`stackSetProvisioningPreferences`" pulumi-lang-java="`stackSetProvisioningPreferences`">`stack_set_provisioning_preferences`</span> Block for details.
  final Input<ProvisionedProductStackSetProvisioningPreferences>?
      stackSetProvisioningPreferences;

  /// Tags to apply to the provisioned product. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ProvisionedProductArgs({
    this.acceptLanguage,
    this.ignoreErrors,
    this.name,
    this.notificationArns,
    this.pathId,
    this.pathName,
    this.productId,
    this.productName,
    this.provisioningArtifactId,
    this.provisioningArtifactName,
    this.provisioningParameters,
    this.region,
    this.retainPhysicalResources,
    this.stackSetProvisioningPreferences,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceptLanguageValue = acceptLanguage;
    if (acceptLanguageValue != null) {
      map['acceptLanguage'] = acceptLanguageValue;
    }
    final ignoreErrorsValue = ignoreErrors;
    if (ignoreErrorsValue != null) {
      map['ignoreErrors'] = ignoreErrorsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final notificationArnsValue = notificationArns;
    if (notificationArnsValue != null) {
      map['notificationArns'] = notificationArnsValue;
    }
    final pathIdValue = pathId;
    if (pathIdValue != null) {
      map['pathId'] = pathIdValue;
    }
    final pathNameValue = pathName;
    if (pathNameValue != null) {
      map['pathName'] = pathNameValue;
    }
    final productIdValue = productId;
    if (productIdValue != null) {
      map['productId'] = productIdValue;
    }
    final productNameValue = productName;
    if (productNameValue != null) {
      map['productName'] = productNameValue;
    }
    final provisioningArtifactIdValue = provisioningArtifactId;
    if (provisioningArtifactIdValue != null) {
      map['provisioningArtifactId'] = provisioningArtifactIdValue;
    }
    final provisioningArtifactNameValue = provisioningArtifactName;
    if (provisioningArtifactNameValue != null) {
      map['provisioningArtifactName'] = provisioningArtifactNameValue;
    }
    final provisioningParametersValue = provisioningParameters;
    if (provisioningParametersValue != null) {
      map['provisioningParameters'] = Input.mapOptionalInputValue<
              List<ProvisionedProductProvisioningParameter>,
              List<Map<String, dynamic>>>(
          provisioningParametersValue,
          (value) => Input.encodeList<ProvisionedProductProvisioningParameter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final retainPhysicalResourcesValue = retainPhysicalResources;
    if (retainPhysicalResourcesValue != null) {
      map['retainPhysicalResources'] = retainPhysicalResourcesValue;
    }
    final stackSetProvisioningPreferencesValue =
        stackSetProvisioningPreferences;
    if (stackSetProvisioningPreferencesValue != null) {
      map['stackSetProvisioningPreferences'] = Input.mapOptionalInputValue<
              ProvisionedProductStackSetProvisioningPreferences,
              Map<String, dynamic>>(
          stackSetProvisioningPreferencesValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ProvisionedProductArgs.fromMap(Map<String, dynamic> map) {
    return ProvisionedProductArgs(
      acceptLanguage: Input.asOptionalInput<String>(map['acceptLanguage']),
      ignoreErrors: Input.asOptionalInput<bool>(map['ignoreErrors']),
      name: Input.asOptionalInput<String>(map['name']),
      notificationArns:
          Input.asOptionalInput<List<String>>(map['notificationArns']),
      pathId: Input.asOptionalInput<String>(map['pathId']),
      pathName: Input.asOptionalInput<String>(map['pathName']),
      productId: Input.asOptionalInput<String>(map['productId']),
      productName: Input.asOptionalInput<String>(map['productName']),
      provisioningArtifactId:
          Input.asOptionalInput<String>(map['provisioningArtifactId']),
      provisioningArtifactName:
          Input.asOptionalInput<String>(map['provisioningArtifactName']),
      provisioningParameters:
          Input.asOptionalInput<List<ProvisionedProductProvisioningParameter>>(
              map['provisioningParameters']),
      region: Input.asOptionalInput<String>(map['region']),
      retainPhysicalResources:
          Input.asOptionalInput<bool>(map['retainPhysicalResources']),
      stackSetProvisioningPreferences: Input.asOptionalInput<
              ProvisionedProductStackSetProvisioningPreferences>(
          map['stackSetProvisioningPreferences']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
