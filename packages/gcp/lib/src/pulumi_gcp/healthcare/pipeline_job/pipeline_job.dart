import 'package:pulumi/pulumi.dart' as pulumi;
import '../pipeline_job_backfill_pipeline_job/pipeline_job_backfill_pipeline_job.dart';
import '../pipeline_job_mapping_pipeline_job/pipeline_job_mapping_pipeline_job.dart';
import '../pipeline_job_reconciliation_pipeline_job/pipeline_job_reconciliation_pipeline_job.dart';
import 'pipeline_job_args.dart';

/// PipelineJobs are Long Running Operations on Healthcare API to Map or Reconcile
/// incoming data into FHIR format
///
///
/// To get more information about PipelineJob, see:
///
/// * [API documentation](https://cloud.google.com/healthcare-api/healthcare-data-engine/docs/reference/rest/v1/projects.locations.datasets.pipelineJobs)
/// * How-to Guides
/// * [Creating a PipelineJob](https://cloud.google.com/healthcare-api/private/healthcare-data-engine/docs/reference/rest/v1/projects.locations.datasets.pipelineJobs#PipelineJob)
///
/// ## Example Usage
///
/// ### Healthcare Pipeline Job Reconciliation
///
///
///
/// ### Healthcare Pipeline Job Backfill
///
///
///
/// ### Healthcare Pipeline Job Whistle Mapping
///
///
///
/// ### Healthcare Pipeline Job Mapping Recon Dest
///
///
///
///
/// ## Import
///
/// PipelineJob can be imported using any of these accepted formats:
///
/// * `{{dataset}}/pipelineJobs/{{name}}`
///
/// * `{{dataset}}/pipelineJobs?pipelineJobId={{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, PipelineJob can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:healthcare/pipelineJob:PipelineJob default {{dataset}}/pipelineJobs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:healthcare/pipelineJob:PipelineJob default {{dataset}}/pipelineJobs?pipelineJobId={{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:healthcare/pipelineJob:PipelineJob default {{name}}
/// ```
class PipelineJob extends pulumi.CustomResource {
  /// Specifies the backfill configuration.
  /// Structure is documented below.
  late final pulumi.Output<PipelineJobBackfillPipelineJob?> backfillPipelineJob;

  /// Healthcare Dataset under which the Pipeline Job is to run
  late final pulumi.Output<String> dataset;

  /// If true, disables writing lineage for the pipeline.
  late final pulumi.Output<bool?> disableLineage;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// User-supplied key-value pairs used to organize Pipeline Jobs.
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of
  /// maximum 128 bytes, and must conform to the following PCRE regular expression:
  /// [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}
  /// Label values are optional, must be between 1 and 63 characters long, have a
  /// UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE
  /// regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}
  /// No more than 64 labels can be associated with a given pipeline.
  /// An object containing a list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Location where the Pipeline Job is to run
  late final pulumi.Output<String> location;

  /// Specifies mapping configuration.
  /// Structure is documented below.
  late final pulumi.Output<PipelineJobMappingPipelineJob?> mappingPipelineJob;

  /// Specifies the name of the pipeline job. This field is user-assigned.
  late final pulumi.Output<String> name;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Specifies reconciliation configuration.
  /// Structure is documented below.
  late final pulumi.Output<PipelineJobReconciliationPipelineJob?>
      reconciliationPipelineJob;

  /// The fully qualified name of this dataset
  late final pulumi.Output<String> selfLink;

  PipelineJob(
    String name, {
    PipelineJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:healthcare/pipelineJob:PipelineJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backfillPipelineJob =
        registerOutput<PipelineJobBackfillPipelineJob?>('backfillPipelineJob');
    this.dataset = registerOutput<String>('dataset');
    this.disableLineage = registerOutput<bool?>('disableLineage');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.mappingPipelineJob =
        registerOutput<PipelineJobMappingPipelineJob?>('mappingPipelineJob');
    this.name = registerOutput<String>('name');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciliationPipelineJob =
        registerOutput<PipelineJobReconciliationPipelineJob?>(
            'reconciliationPipelineJob');
    this.selfLink = registerOutput<String>('selfLink');
  }
}
