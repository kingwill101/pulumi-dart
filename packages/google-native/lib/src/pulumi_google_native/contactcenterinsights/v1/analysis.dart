import 'package:pulumi/pulumi.dart';
import 'analysis_args.dart';
import 'google_cloud_contactcenterinsights_v1_analysis_result_response.dart';
import 'google_cloud_contactcenterinsights_v1_annotator_selector_response.dart';

/// Creates an analysis. The long running operation is done when the analysis has completed.
class Analysis extends CustomResource {
  /// The result of the analysis, which is populated when the analysis finishes.
  late final Output<GoogleCloudContactcenterinsightsV1AnalysisResultResponse>
      analysisResult;

  /// To select the annotators to run and the phrase matchers to use (if any). If not specified, all annotators will be run.
  late final Output<GoogleCloudContactcenterinsightsV1AnnotatorSelectorResponse>
      annotatorSelector;
  late final Output<String> conversationId;

  /// The time at which the analysis was created, which occurs when the long-running operation completes.
  late final Output<String> createTime;
  late final Output<String> location;

  /// Immutable. The resource name of the analysis. Format: projects/{project}/locations/{location}/conversations/{conversation}/analyses/{analysis}
  late final Output<String> name;
  late final Output<String> project;

  /// The time at which the analysis was requested.
  late final Output<String> requestTime;

  Analysis(
    String name, {
    AnalysisArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:contactcenterinsights/v1:Analysis',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.analysisResult = registerOutput<
            GoogleCloudContactcenterinsightsV1AnalysisResultResponse>(
        'analysisResult');
    this.annotatorSelector = registerOutput<
            GoogleCloudContactcenterinsightsV1AnnotatorSelectorResponse>(
        'annotatorSelector');
    this.conversationId = registerOutput<String>('conversationId');
    this.createTime = registerOutput<String>('createTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestTime = registerOutput<String>('requestTime');
  }
}
