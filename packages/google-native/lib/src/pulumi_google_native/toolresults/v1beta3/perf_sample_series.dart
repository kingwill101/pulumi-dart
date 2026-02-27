import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_perf_sample_series_response.dart';
import 'perf_sample_series_args.dart';

/// Creates a PerfSampleSeries. May return any of the following error code(s): - ALREADY_EXISTS - PerfMetricSummary already exists for the given Step - NOT_FOUND - The containing Step does not exist
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class PerfSampleSeries extends pulumi.CustomResource {
  /// Basic series represented by a line chart
  late final pulumi.Output<BasicPerfSampleSeriesResponse> basicPerfSampleSeries;
  late final pulumi.Output<String> executionId;
  late final pulumi.Output<String> historyId;
  late final pulumi.Output<String> project;

  /// A sample series id
  late final pulumi.Output<String> sampleSeriesId;
  late final pulumi.Output<String> stepId;

  PerfSampleSeries(
    String name, {
    PerfSampleSeriesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:toolresults/v1beta3:PerfSampleSeries',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.basicPerfSampleSeries =
        registerOutput<BasicPerfSampleSeriesResponse>('basicPerfSampleSeries');
    this.executionId = registerOutput<String>('executionId');
    this.historyId = registerOutput<String>('historyId');
    this.project = registerOutput<String>('project');
    this.sampleSeriesId = registerOutput<String>('sampleSeriesId');
    this.stepId = registerOutput<String>('stepId');
  }
}
