import 'package:pulumi/pulumi.dart';
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
    this.createTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.inputDataConfig = Output.createUnknown<
        GoogleCloudContactcenterinsightsV1IssueModelInputDataConfigResponse>();
    this.issueCount = Output.createUnknown<String>();
    this.languageCode = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.modelType = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.trainingStats = Output.createUnknown<
        GoogleCloudContactcenterinsightsV1IssueModelLabelStatsResponse>();
    this.updateTime = Output.createUnknown<String>();
  }
}
