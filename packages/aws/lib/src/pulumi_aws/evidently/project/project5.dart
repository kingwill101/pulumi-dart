import 'package:pulumi/pulumi.dart';
import '../project_data_delivery/project_data_delivery.dart';
import 'project_args5.dart';

/// Provides a CloudWatch Evidently Project resource.
///
/// > **Warning:** This resource is deprecated. Use [AWS AppConfig feature flags](https://aws.amazon.com/blogs/mt/using-aws-appconfig-feature-flags/) instead.
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### Store evaluation events in a CloudWatch Log Group
///
///
///
/// ### Store evaluation events in an S3 bucket
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Evidently Project using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:evidently/project:Project example arn:aws:evidently:us-east-1:123456789012:segment/example
/// ```
class Project5 extends CustomResource {
  /// The number of ongoing experiments currently in the project.
  late final Output<int> activeExperimentCount;

  /// The number of ongoing launches currently in the project.
  late final Output<int> activeLaunchCount;

  /// The ARN of the project.
  late final Output<String> arn;

  /// The date and time that the project is created.
  late final Output<String> createdTime;

  /// A block that contains information about where Evidently is to store evaluation events for longer term storage, if you choose to do so. If you choose not to store these events, Evidently deletes them after using them to produce metrics and other experiment results that you can view. See below.
  late final Output<ProjectDataDelivery?> dataDelivery;

  /// Specifies the description of the project.
  late final Output<String?> description;

  /// The number of experiments currently in the project. This includes all experiments that have been created and not deleted, whether they are ongoing or not.
  late final Output<int> experimentCount;

  /// The number of features currently in the project.
  late final Output<int> featureCount;

  /// The date and time that the project was most recently updated.
  late final Output<String> lastUpdatedTime;

  /// The number of launches currently in the project. This includes all launches that have been created and not deleted, whether they are ongoing or not.
  late final Output<int> launchCount;

  /// A name for the project.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The current state of the project. Valid values are `AVAILABLE` and `UPDATING`.
  late final Output<String> status;

  /// Tags to apply to the project. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Project5(
    String name, {
    ProjectArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:evidently/project:Project',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.activeExperimentCount = registerOutput<int>('activeExperimentCount');
    this.activeLaunchCount = registerOutput<int>('activeLaunchCount');
    this.arn = registerOutput<String>('arn');
    this.createdTime = registerOutput<String>('createdTime');
    this.dataDelivery = registerOutput<ProjectDataDelivery?>('dataDelivery');
    this.description = registerOutput<String?>('description');
    this.experimentCount = registerOutput<int>('experimentCount');
    this.featureCount = registerOutput<int>('featureCount');
    this.lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    this.launchCount = registerOutput<int>('launchCount');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
