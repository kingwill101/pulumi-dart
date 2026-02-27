import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_contactcenterinsights_v1_issue_model_input_data_config_response.dart';
import 'google_cloud_contactcenterinsights_v1_issue_model_label_stats_response.dart';
import 'issue_model_args.dart';

/// Creates an issue model.
class IssueModel extends CustomResource {
  /// The time at which this issue model was created.
  late final Output<String> createTime;

  /// The representative name for the issue model.
  late final Output<String> displayName;

  /// Configs for the input data that used to create the issue model.
  late final Output<
          GoogleCloudContactcenterinsightsV1IssueModelInputDataConfigResponse>
      inputDataConfig;

  /// Number of issues in this issue model.
  late final Output<String> issueCount;

  /// Language of the model.
  late final Output<String> languageCode;
  late final Output<String> location;

  /// Type of the model.
  late final Output<String> modelType;

  /// Immutable. The resource name of the issue model. Format: projects/{project}/locations/{location}/issueModels/{issue_model}
  late final Output<String> name;
  late final Output<String> project;

  /// State of the model.
  late final Output<String> state;

  /// Immutable. The issue model's label statistics on its training data.
  late final Output<
          GoogleCloudContactcenterinsightsV1IssueModelLabelStatsResponse>
      trainingStats;

  /// The most recent time at which the issue model was updated.
  late final Output<String> updateTime;

  IssueModel(
    String name, {
    IssueModelArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:contactcenterinsights/v1:IssueModel',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.inputDataConfig = registerOutput<
            GoogleCloudContactcenterinsightsV1IssueModelInputDataConfigResponse>(
        'inputDataConfig');
    this.issueCount = registerOutput<String>('issueCount');
    this.languageCode = registerOutput<String>('languageCode');
    this.location = registerOutput<String>('location');
    this.modelType = registerOutput<String>('modelType');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.trainingStats = registerOutput<
            GoogleCloudContactcenterinsightsV1IssueModelLabelStatsResponse>(
        'trainingStats');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
