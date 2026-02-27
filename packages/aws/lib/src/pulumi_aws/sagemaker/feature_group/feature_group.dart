import 'package:pulumi/pulumi.dart';
import '../feature_group_feature_definition/feature_group_feature_definition.dart';
import '../feature_group_offline_store_config/feature_group_offline_store_config.dart';
import '../feature_group_online_store_config/feature_group_online_store_config.dart';
import '../feature_group_throughput_config/feature_group_throughput_config.dart';
import 'feature_group_args.dart';

/// Provides a SageMaker AI Feature Group resource.
///
/// ## Example Usage
///
/// Basic usage:
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Feature Groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/featureGroup:FeatureGroup test_feature_group feature_group-foo
/// ```
class FeatureGroup extends CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this feature_group.
  late final Output<String> arn;

  /// A free-form description of a Feature Group.
  late final Output<String?> description;

  /// The name of the feature that stores the EventTime of a Record in a Feature Group.
  late final Output<String> eventTimeFeatureName;

  /// A list of Feature names and types. See Feature Definition Below.
  late final Output<List<FeatureGroupFeatureDefinition>> featureDefinitions;

  /// The name of the Feature Group. The name must be unique within an AWS Region in an AWS account.
  late final Output<String> featureGroupName;

  /// The Offline Feature Store Configuration. See Offline Store Config Below.
  late final Output<FeatureGroupOfflineStoreConfig?> offlineStoreConfig;

  /// The Online Feature Store Configuration. See Online Store Config Below.
  late final Output<FeatureGroupOnlineStoreConfig?> onlineStoreConfig;

  /// The name of the Feature whose value uniquely identifies a Record defined in the Feature Store. Only the latest record per identifier value will be stored in the Online Store.
  late final Output<String> recordIdentifierFeatureName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of the IAM execution role used to persist data into the Offline Store if an `offline_store_config` is provided.
  late final Output<String> roleArn;

  /// Map of resource tags for the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<FeatureGroupThroughputConfig> throughputConfig;

  FeatureGroup(
    String name, {
    FeatureGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/featureGroup:FeatureGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.eventTimeFeatureName = registerOutput<String>('eventTimeFeatureName');
    this.featureDefinitions =
        registerOutput<List<FeatureGroupFeatureDefinition>>(
            'featureDefinitions');
    this.featureGroupName = registerOutput<String>('featureGroupName');
    this.offlineStoreConfig =
        registerOutput<FeatureGroupOfflineStoreConfig?>('offlineStoreConfig');
    this.onlineStoreConfig =
        registerOutput<FeatureGroupOnlineStoreConfig?>('onlineStoreConfig');
    this.recordIdentifierFeatureName =
        registerOutput<String>('recordIdentifierFeatureName');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.throughputConfig =
        registerOutput<FeatureGroupThroughputConfig>('throughputConfig');
  }
}
