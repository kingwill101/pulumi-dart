// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provisioned_product_output.dart';
import 'provisioned_product_provisioning_parameter.dart';
import 'provisioned_product_stack_set_provisioning_preferences.dart';

/// Input properties used for looking up and filtering ProvisionedProduct resources.
class ProvisionedProductState {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  final pulumi.Input<String>? acceptLanguage;
  /// ARN of the provisioned product.
  final pulumi.Input<String>? arn;
  /// Set of CloudWatch dashboards that were created when provisioning the product.
  final pulumi.Input<List<String>>? cloudwatchDashboardNames;
  /// Time when the provisioned product was created.
  final pulumi.Input<String>? createdTime;
  /// _Only applies to deleting._ If set to `true`, AWS Service Catalog stops managing the specified provisioned product even if it cannot delete the underlying resources. The default value is `false`.
  final pulumi.Input<bool>? ignoreErrors;
  /// Record identifier of the last request performed on this provisioned product of the following types: `ProvisionedProduct`, `UpdateProvisionedProduct`, `ExecuteProvisionedProductPlan`, `TerminateProvisionedProduct`.
  final pulumi.Input<String>? lastProvisioningRecordId;
  /// Record identifier of the last request performed on this provisioned product.
  final pulumi.Input<String>? lastRecordId;
  /// Record identifier of the last successful request performed on this provisioned product of the following types: `ProvisionedProduct`, `UpdateProvisionedProduct`, `ExecuteProvisionedProductPlan`, `TerminateProvisionedProduct`.
  final pulumi.Input<String>? lastSuccessfulProvisioningRecordId;
  /// ARN of the launch role associated with the provisioned product.
  final pulumi.Input<String>? launchRoleArn;
  /// User-friendly name of the provisioned product.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events.
  final pulumi.Input<List<String>>? notificationArns;
  /// The set of outputs for the product created.
  final pulumi.Input<List<ProvisionedProductOutput>>? outputs;
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
  final pulumi.Input<List<ProvisionedProductProvisioningParameter>>? provisioningParameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// _Only applies to deleting._ Whether to delete the Service Catalog provisioned product but leave the CloudFormation stack, stack set, or the underlying resources of the deleted provisioned product. The default value is `false`.
  final pulumi.Input<bool>? retainPhysicalResources;
  /// Configuration block with information about the provisioning preferences for a stack set. See `stack_set_provisioning_preferences` Block for details.
  final pulumi.Input<ProvisionedProductStackSetProvisioningPreferences>? stackSetProvisioningPreferences;
  /// Current status of the provisioned product. See meanings below.
  final pulumi.Input<String>? status;
  /// Current status message of the provisioned product.
  final pulumi.Input<String>? statusMessage;
  /// Tags to apply to the provisioned product. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Type of provisioned product. Valid values are `CFN_STACK` and `CFN_STACKSET`.
  final pulumi.Input<String>? type;

  /// Creates a new [ProvisionedProductState].
  /// [acceptLanguage] Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  /// [arn] ARN of the provisioned product.
  /// [cloudwatchDashboardNames] Set of CloudWatch dashboards that were created when provisioning the product.
  /// [createdTime] Time when the provisioned product was created.
  /// [ignoreErrors] _Only applies to deleting._ If set to `true`, AWS Service Catalog stops managing the specified provisioned product even if it cannot delete the underlying resources. The default value is `false`.
  /// [lastProvisioningRecordId] Record identifier of the last request performed on this provisioned product of the following types: `ProvisionedProduct`, `UpdateProvisionedProduct`, `ExecuteProvisionedProductPlan`, `TerminateProvisionedProduct`.
  /// [lastRecordId] Record identifier of the last request performed on this provisioned product.
  /// [lastSuccessfulProvisioningRecordId] Record identifier of the last successful request performed on this provisioned product of the following types: `ProvisionedProduct`, `UpdateProvisionedProduct`, `ExecuteProvisionedProductPlan`, `TerminateProvisionedProduct`.
  /// [launchRoleArn] ARN of the launch role associated with the provisioned product.
  /// [name] User-friendly name of the provisioned product.
  /// [notificationArns] Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events.
  /// [outputs] The set of outputs for the product created.
  /// [pathId] Path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use `aws.servicecatalog.getLaunchPaths`. When required, you must provide `path_id` or `path_name`, but not both.
  /// [pathName] Name of the path. You must provide `path_id` or `path_name`, but not both.
  /// [productId] Product identifier. For example, `prod-abcdzk7xy33qa`. You must provide `product_id` or `product_name`, but not both.
  /// [productName] Name of the product. You must provide `product_id` or `product_name`, but not both.
  /// [provisioningArtifactId] Identifier of the provisioning artifact. For example, `pa-4abcdjnxjj6ne`. You must provide the `provisioning_artifact_id` or `provisioning_artifact_name`, but not both.
  /// [provisioningArtifactName] Name of the provisioning artifact. You must provide the `provisioning_artifact_id` or `provisioning_artifact_name`, but not both.
  /// [provisioningParameters] Configuration block with parameters specified by the administrator that are required for provisioning the product. See `provisioning_parameters` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retainPhysicalResources] _Only applies to deleting._ Whether to delete the Service Catalog provisioned product but leave the CloudFormation stack, stack set, or the underlying resources of the deleted provisioned product. The default value is `false`.
  /// [stackSetProvisioningPreferences] Configuration block with information about the provisioning preferences for a stack set. See `stack_set_provisioning_preferences` Block for details.
  /// [status] Current status of the provisioned product. See meanings below.
  /// [statusMessage] Current status message of the provisioned product.
  /// [tags] Tags to apply to the provisioned product. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [type] Type of provisioned product. Valid values are `CFN_STACK` and `CFN_STACKSET`.
  const ProvisionedProductState({
    this.acceptLanguage,
    this.arn,
    this.cloudwatchDashboardNames,
    this.createdTime,
    this.ignoreErrors,
    this.lastProvisioningRecordId,
    this.lastRecordId,
    this.lastSuccessfulProvisioningRecordId,
    this.launchRoleArn,
    this.name,
    this.notificationArns,
    this.outputs,
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
    this.status,
    this.statusMessage,
    this.tags,
    this.tagsAll,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'arn': ?arn,
      'cloudwatchDashboardNames': ?cloudwatchDashboardNames,
      'createdTime': ?createdTime,
      'ignoreErrors': ?ignoreErrors,
      'lastProvisioningRecordId': ?lastProvisioningRecordId,
      'lastRecordId': ?lastRecordId,
      'lastSuccessfulProvisioningRecordId': ?lastSuccessfulProvisioningRecordId,
      'launchRoleArn': ?launchRoleArn,
      'name': ?name,
      'notificationArns': ?notificationArns,
      'outputs': ?pulumi.Input.mapOptionalInputValue<List<ProvisionedProductOutput>, List<Map<String, dynamic>>>(outputs, (value) => pulumi.Input.encodeList<ProvisionedProductOutput, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      'status': ?status,
      'statusMessage': ?statusMessage,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
    };
  }

  factory ProvisionedProductState.fromMap(Map<String, dynamic> map) {
    return ProvisionedProductState(
      acceptLanguage: (() { final guardedValue = map['acceptLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudwatchDashboardNames: (() { final guardedValue = map['cloudwatchDashboardNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ignoreErrors: (() { final guardedValue = map['ignoreErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastProvisioningRecordId: (() { final guardedValue = map['lastProvisioningRecordId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastRecordId: (() { final guardedValue = map['lastRecordId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastSuccessfulProvisioningRecordId: (() { final guardedValue = map['lastSuccessfulProvisioningRecordId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launchRoleArn: (() { final guardedValue = map['launchRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationArns: (() { final guardedValue = map['notificationArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputs: (() { final guardedValue = map['outputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProvisionedProductOutput>(guardedValue, (value) => ProvisionedProductOutput.fromMap((value as Map).cast<String, dynamic>()))); })(),
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
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

