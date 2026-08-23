import 'package:pulumi/pulumi.dart' as pulumi;
import 'labeling_job_args.dart';
import 'labeling_job_response.dart';
import 'system_data_response.dart';

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-04-01-preview.
///
/// Other available API versions: 2020-09-01-preview, 2021-03-01-preview, 2022-06-01-preview, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
class LabelingJobMachinelearningservices extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<LabelingJobResponse> labelingJobProperties;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LabelingJobMachinelearningservices].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LabelingJobMachinelearningservices]. {@macro pulumi_machinelearningservices_labeling_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LabelingJobMachinelearningservices(
    String name, {
    LabelingJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:machinelearningservices:LabelingJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    labelingJobProperties = registerOutput<LabelingJobResponse>('labelingJobProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LabelingJobResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
