import 'package:pulumi/pulumi.dart';
import 'basic_perf_sample_series_response.dart';
import 'perf_sample_series_args.dart';

/// Creates a PerfSampleSeries. May return any of the following error code(s): - ALREADY_EXISTS - PerfMetricSummary already exists for the given Step - NOT_FOUND - The containing Step does not exist
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class PerfSampleSeries extends CustomResource {
  /// Basic series represented by a line chart
  late final Output<BasicPerfSampleSeriesResponse> basicPerfSampleSeries;
  late final Output<String> executionId;
  late final Output<String> historyId;
  late final Output<String> project;

  /// A sample series id
  late final Output<String> sampleSeriesId;
  late final Output<String> stepId;

  PerfSampleSeries(
    String name, {
    PerfSampleSeriesArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:toolresults/v1beta3:PerfSampleSeries',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.basicPerfSampleSeries =
        Output.createUnknown<BasicPerfSampleSeriesResponse>();
    this.executionId = Output.createUnknown<String>();
    this.historyId = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.sampleSeriesId = Output.createUnknown<String>();
    this.stepId = Output.createUnknown<String>();
  }
}
