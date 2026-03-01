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
  ProvisionedProductState({
    pulumi.Output<String>? acceptLanguage,
    pulumi.Output<String>? arn,
    pulumi.Output<List<String>>? cloudwatchDashboardNames,
    pulumi.Output<String>? createdTime,
    pulumi.Output<bool>? ignoreErrors,
    pulumi.Output<String>? lastProvisioningRecordId,
    pulumi.Output<String>? lastRecordId,
    pulumi.Output<String>? lastSuccessfulProvisioningRecordId,
    pulumi.Output<String>? launchRoleArn,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? notificationArns,
    pulumi.Output<List<ProvisionedProductOutput>>? outputs,
    pulumi.Output<String>? pathId,
    pulumi.Output<String>? pathName,
    pulumi.Output<String>? productId,
    pulumi.Output<String>? productName,
    pulumi.Output<String>? provisioningArtifactId,
    pulumi.Output<String>? provisioningArtifactName,
    pulumi.Output<List<ProvisionedProductProvisioningParameter>>? provisioningParameters,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? retainPhysicalResources,
    pulumi.Output<ProvisionedProductStackSetProvisioningPreferences>? stackSetProvisioningPreferences,
    pulumi.Output<String>? status,
    pulumi.Output<String>? statusMessage,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? type,
  }) :
      acceptLanguage = pulumi.Input.asOptionalInput<String>(acceptLanguage),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      cloudwatchDashboardNames = pulumi.Input.asOptionalInput<List<String>>(cloudwatchDashboardNames),
      createdTime = pulumi.Input.asOptionalInput<String>(createdTime),
      ignoreErrors = pulumi.Input.asOptionalInput<bool>(ignoreErrors),
      lastProvisioningRecordId = pulumi.Input.asOptionalInput<String>(lastProvisioningRecordId),
      lastRecordId = pulumi.Input.asOptionalInput<String>(lastRecordId),
      lastSuccessfulProvisioningRecordId = pulumi.Input.asOptionalInput<String>(lastSuccessfulProvisioningRecordId),
      launchRoleArn = pulumi.Input.asOptionalInput<String>(launchRoleArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      notificationArns = pulumi.Input.asOptionalInput<List<String>>(notificationArns),
      outputs = pulumi.Input.asOptionalInput<List<ProvisionedProductOutput>>(outputs),
      pathId = pulumi.Input.asOptionalInput<String>(pathId),
      pathName = pulumi.Input.asOptionalInput<String>(pathName),
      productId = pulumi.Input.asOptionalInput<String>(productId),
      productName = pulumi.Input.asOptionalInput<String>(productName),
      provisioningArtifactId = pulumi.Input.asOptionalInput<String>(provisioningArtifactId),
      provisioningArtifactName = pulumi.Input.asOptionalInput<String>(provisioningArtifactName),
      provisioningParameters = pulumi.Input.asOptionalInput<List<ProvisionedProductProvisioningParameter>>(provisioningParameters),
      region = pulumi.Input.asOptionalInput<String>(region),
      retainPhysicalResources = pulumi.Input.asOptionalInput<bool>(retainPhysicalResources),
      stackSetProvisioningPreferences = pulumi.Input.asOptionalInput<ProvisionedProductStackSetProvisioningPreferences>(stackSetProvisioningPreferences),
      status = pulumi.Input.asOptionalInput<String>(status),
      statusMessage = pulumi.Input.asOptionalInput<String>(statusMessage),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      acceptLanguage: map['acceptLanguage'] == null ? null : pulumi.Output.create<String>(map['acceptLanguage'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      cloudwatchDashboardNames: map['cloudwatchDashboardNames'] == null ? null : pulumi.Output.create<List<String>>((map['cloudwatchDashboardNames'] as List).cast<String>()),
      createdTime: map['createdTime'] == null ? null : pulumi.Output.create<String>(map['createdTime'] as String),
      ignoreErrors: map['ignoreErrors'] == null ? null : pulumi.Output.create<bool>(map['ignoreErrors'] as bool),
      lastProvisioningRecordId: map['lastProvisioningRecordId'] == null ? null : pulumi.Output.create<String>(map['lastProvisioningRecordId'] as String),
      lastRecordId: map['lastRecordId'] == null ? null : pulumi.Output.create<String>(map['lastRecordId'] as String),
      lastSuccessfulProvisioningRecordId: map['lastSuccessfulProvisioningRecordId'] == null ? null : pulumi.Output.create<String>(map['lastSuccessfulProvisioningRecordId'] as String),
      launchRoleArn: map['launchRoleArn'] == null ? null : pulumi.Output.create<String>(map['launchRoleArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notificationArns: map['notificationArns'] == null ? null : pulumi.Output.create<List<String>>((map['notificationArns'] as List).cast<String>()),
      outputs: map['outputs'] == null ? null : pulumi.Output.create<List<ProvisionedProductOutput>>(pulumi.Input.decodeList<ProvisionedProductOutput>(map['outputs'], (value) => ProvisionedProductOutput.fromMap((value as Map).cast<String, dynamic>()))),
      pathId: map['pathId'] == null ? null : pulumi.Output.create<String>(map['pathId'] as String),
      pathName: map['pathName'] == null ? null : pulumi.Output.create<String>(map['pathName'] as String),
      productId: map['productId'] == null ? null : pulumi.Output.create<String>(map['productId'] as String),
      productName: map['productName'] == null ? null : pulumi.Output.create<String>(map['productName'] as String),
      provisioningArtifactId: map['provisioningArtifactId'] == null ? null : pulumi.Output.create<String>(map['provisioningArtifactId'] as String),
      provisioningArtifactName: map['provisioningArtifactName'] == null ? null : pulumi.Output.create<String>(map['provisioningArtifactName'] as String),
      provisioningParameters: map['provisioningParameters'] == null ? null : pulumi.Output.create<List<ProvisionedProductProvisioningParameter>>(pulumi.Input.decodeList<ProvisionedProductProvisioningParameter>(map['provisioningParameters'], (value) => ProvisionedProductProvisioningParameter.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      retainPhysicalResources: map['retainPhysicalResources'] == null ? null : pulumi.Output.create<bool>(map['retainPhysicalResources'] as bool),
      stackSetProvisioningPreferences: map['stackSetProvisioningPreferences'] == null ? null : pulumi.Output.create<ProvisionedProductStackSetProvisioningPreferences>(ProvisionedProductStackSetProvisioningPreferences.fromMap((map['stackSetProvisioningPreferences'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      statusMessage: map['statusMessage'] == null ? null : pulumi.Output.create<String>(map['statusMessage'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

