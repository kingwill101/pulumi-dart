// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../provisioned_product_provisioning_parameter/provisioned_product_provisioning_parameter.dart';
import '../provisioned_product_stack_set_provisioning_preferences/provisioned_product_stack_set_provisioning_preferences.dart';

/// The set of arguments for ProvisionedProduct.
class ProvisionedProductArgs {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  final pulumi.Input<String>? acceptLanguage;

  /// _Only applies to deleting._ If set to `true`, AWS Service Catalog stops managing the specified provisioned product even if it cannot delete the underlying resources. The default value is `false`.
  final pulumi.Input<bool>? ignoreErrors;

  /// User-friendly name of the provisioned product.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events.
  final pulumi.Input<List<String>>? notificationArns;

  /// Path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use `aws.servicecatalog.getLaunchPaths`. When required, you must provide `path_id` or `path_name`, but not both.
  final pulumi.Input<String>? pathId;

  /// Name of the path. You must provide `path_id` or `path_name`, but not both.
  final pulumi.Input<String>? pathName;

  /// Product identifier. For example, `prod-abcdzk7xy33qa`. You must provide `product_id` or `product_name`, but not both.
  final pulumi.Input<String>? productId;

  /// Name of the product. You must provide `product_id` or `product_name`, but not both.
  final pulumi.Input<String>? productName;

  /// Identifier of the provisioning artifact. For example, `pa-4abcdjnxjj6ne`. You must provide the `provisioning_artifact_id` or `provisioning_artifact_name`, but not both.
  final pulumi.Input<String>? provisioningArtifactId;

  /// Name of the provisioning artifact. You must provide the `provisioning_artifact_id` or `provisioning_artifact_name`, but not both.
  final pulumi.Input<String>? provisioningArtifactName;

  /// Configuration block with parameters specified by the administrator that are required for provisioning the product. See `provisioning_parameters` Block for details.
  final pulumi.Input<List<ProvisionedProductProvisioningParameter>>?
      provisioningParameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// _Only applies to deleting._ Whether to delete the Service Catalog provisioned product but leave the CloudFormation stack, stack set, or the underlying resources of the deleted provisioned product. The default value is `false`.
  final pulumi.Input<bool>? retainPhysicalResources;

  /// Configuration block with information about the provisioning preferences for a stack set. See `stack_set_provisioning_preferences` Block for details.
  final pulumi.Input<ProvisionedProductStackSetProvisioningPreferences>?
      stackSetProvisioningPreferences;

  /// Tags to apply to the provisioned product. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

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
      map['provisioningParameters'] = pulumi.Input.mapOptionalInputValue<
              List<ProvisionedProductProvisioningParameter>,
              List<Map<String, dynamic>>>(
          provisioningParametersValue,
          (value) => pulumi.Input.encodeList<
              ProvisionedProductProvisioningParameter,
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
      map['stackSetProvisioningPreferences'] =
          pulumi.Input.mapOptionalInputValue<
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
      acceptLanguage:
          pulumi.Input.asOptionalInput<String>(map['acceptLanguage']),
      ignoreErrors: pulumi.Input.asOptionalInput<bool>(map['ignoreErrors']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      notificationArns:
          pulumi.Input.asOptionalInput<List<String>>(map['notificationArns']),
      pathId: pulumi.Input.asOptionalInput<String>(map['pathId']),
      pathName: pulumi.Input.asOptionalInput<String>(map['pathName']),
      productId: pulumi.Input.asOptionalInput<String>(map['productId']),
      productName: pulumi.Input.asOptionalInput<String>(map['productName']),
      provisioningArtifactId:
          pulumi.Input.asOptionalInput<String>(map['provisioningArtifactId']),
      provisioningArtifactName:
          pulumi.Input.asOptionalInput<String>(map['provisioningArtifactName']),
      provisioningParameters: pulumi.Input.asOptionalInput<
              List<ProvisionedProductProvisioningParameter>>(
          map['provisioningParameters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      retainPhysicalResources:
          pulumi.Input.asOptionalInput<bool>(map['retainPhysicalResources']),
      stackSetProvisioningPreferences: pulumi.Input.asOptionalInput<
              ProvisionedProductStackSetProvisioningPreferences>(
          map['stackSetProvisioningPreferences']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
