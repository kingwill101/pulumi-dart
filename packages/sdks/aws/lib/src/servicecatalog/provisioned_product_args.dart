// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provisioned_product_provisioning_parameter.dart';
import 'provisioned_product_stack_set_provisioning_preferences.dart';

/// {@template pulumi_servicecatalog_provisioned_product_provisioned_product_args_doc}
/// The set of arguments for ProvisionedProduct.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_provisioned_product_provisioned_product_args_doc}
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
  /// Path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use `aws.servicecatalog.getLaunchPaths`. When required, you must provide `pathId` or `pathName`, but not both.
  final pulumi.Input<String>? pathId;
  /// Name of the path. You must provide `pathId` or `pathName`, but not both.
  final pulumi.Input<String>? pathName;
  /// Product identifier. For example, `prod-abcdzk7xy33qa`. You must provide `productId` or `productName`, but not both.
  final pulumi.Input<String>? productId;
  /// Name of the product. You must provide `productId` or `productName`, but not both.
  final pulumi.Input<String>? productName;
  /// Identifier of the provisioning artifact. For example, `pa-4abcdjnxjj6ne`. You must provide the `provisioningArtifactId` or `provisioningArtifactName`, but not both.
  final pulumi.Input<String>? provisioningArtifactId;
  /// Name of the provisioning artifact. You must provide the `provisioningArtifactId` or `provisioningArtifactName`, but not both.
  final pulumi.Input<String>? provisioningArtifactName;
  /// Configuration block with parameters specified by the administrator that are required for provisioning the product. See `provisioningParameters` Block for details.
  final pulumi.Input<List<ProvisionedProductProvisioningParameter>>? provisioningParameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// _Only applies to deleting._ Whether to delete the Service Catalog provisioned product but leave the CloudFormation stack, stack set, or the underlying resources of the deleted provisioned product. The default value is `false`.
  final pulumi.Input<bool>? retainPhysicalResources;
  /// Configuration block with information about the provisioning preferences for a stack set. See `stackSetProvisioningPreferences` Block for details.
  final pulumi.Input<ProvisionedProductStackSetProvisioningPreferences>? stackSetProvisioningPreferences;
  /// Tags to apply to the provisioned product. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProvisionedProductArgs].
  /// [acceptLanguage] Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  /// [ignoreErrors] _Only applies to deleting._ If set to `true`, AWS Service Catalog stops managing the specified provisioned product even if it cannot delete the underlying resources. The default value is `false`.
  /// [name] User-friendly name of the provisioned product.
  /// [notificationArns] Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events.
  /// [pathId] Path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use `aws.servicecatalog.getLaunchPaths`. When required, you must provide `pathId` or `pathName`, but not both.
  /// [pathName] Name of the path. You must provide `pathId` or `pathName`, but not both.
  /// [productId] Product identifier. For example, `prod-abcdzk7xy33qa`. You must provide `productId` or `productName`, but not both.
  /// [productName] Name of the product. You must provide `productId` or `productName`, but not both.
  /// [provisioningArtifactId] Identifier of the provisioning artifact. For example, `pa-4abcdjnxjj6ne`. You must provide the `provisioningArtifactId` or `provisioningArtifactName`, but not both.
  /// [provisioningArtifactName] Name of the provisioning artifact. You must provide the `provisioningArtifactId` or `provisioningArtifactName`, but not both.
  /// [provisioningParameters] Configuration block with parameters specified by the administrator that are required for provisioning the product. See `provisioningParameters` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retainPhysicalResources] _Only applies to deleting._ Whether to delete the Service Catalog provisioned product but leave the CloudFormation stack, stack set, or the underlying resources of the deleted provisioned product. The default value is `false`.
  /// [stackSetProvisioningPreferences] Configuration block with information about the provisioning preferences for a stack set. See `stackSetProvisioningPreferences` Block for details.
  /// [tags] Tags to apply to the provisioned product. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const ProvisionedProductArgs({
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
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'ignoreErrors': ?ignoreErrors,
      'name': ?name,
      'notificationArns': ?notificationArns,
      'pathId': ?pathId,
      'pathName': ?pathName,
      'productId': ?productId,
      'productName': ?productName,
      'provisioningArtifactId': ?provisioningArtifactId,
      'provisioningArtifactName': ?provisioningArtifactName,
      'provisioningParameters': ?pulumi.Input.mapOptionalInputValue<List<ProvisionedProductProvisioningParameter>, List<Map<String, dynamic>>>(provisioningParameters, (value) => pulumi.Input.encodeList<ProvisionedProductProvisioningParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'retainPhysicalResources': ?retainPhysicalResources,
      'stackSetProvisioningPreferences': ?pulumi.Input.mapOptionalInputValue<ProvisionedProductStackSetProvisioningPreferences, Map<String, dynamic>>(stackSetProvisioningPreferences, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ProvisionedProductArgs.fromMap(Map<String, dynamic> map) {
    return ProvisionedProductArgs(
      acceptLanguage: (() { final guardedValue = map['acceptLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ignoreErrors: (() { final guardedValue = map['ignoreErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationArns: (() { final guardedValue = map['notificationArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      pathId: (() { final guardedValue = map['pathId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pathName: (() { final guardedValue = map['pathName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productId: (() { final guardedValue = map['productId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productName: (() { final guardedValue = map['productName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningArtifactId: (() { final guardedValue = map['provisioningArtifactId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningArtifactName: (() { final guardedValue = map['provisioningArtifactName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningParameters: (() { final guardedValue = map['provisioningParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProvisionedProductProvisioningParameter>(guardedValue, (value) => ProvisionedProductProvisioningParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retainPhysicalResources: (() { final guardedValue = map['retainPhysicalResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      stackSetProvisioningPreferences: (() { final guardedValue = map['stackSetProvisioningPreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProvisionedProductStackSetProvisioningPreferences.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
