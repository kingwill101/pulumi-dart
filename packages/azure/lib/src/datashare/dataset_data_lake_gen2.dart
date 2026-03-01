import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_data_lake_gen2_args.dart';

/// Manages a Data Share Data Lake Gen2 Dataset.
///
/// ## Import
///
/// Data Share Data Lake Gen2 Datasets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datashare/datasetDataLakeGen2:DatasetDataLakeGen2 example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DataShare/accounts/account1/shares/share1/dataSets/dataSet1
/// ```
class DatasetDataLakeGen2 extends pulumi.CustomResource {
  /// The name of the Data Share Dataset.
  late final pulumi.Output<String> displayName;
  /// The path of the file in the data lake file system to be shared with the receiver. Conflicts with `folder_path` Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  late final pulumi.Output<String?> filePath;
  /// The name of the data lake file system to be shared with the receiver. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  late final pulumi.Output<String> fileSystemName;
  /// The folder path in the data lake file system to be shared with the receiver. Conflicts with `file_path` Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  late final pulumi.Output<String?> folderPath;
  /// The name which should be used for this Data Share Data Lake Gen2 Dataset. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  late final pulumi.Output<String> name;
  /// The resource ID of the Data Share where this Data Share Data Lake Gen2 Dataset should be created. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  late final pulumi.Output<String> shareId;
  /// The resource id of the storage account of the data lake file system to be shared with the receiver. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  late final pulumi.Output<String> storageAccountId;

  /// Creates a new [DatasetDataLakeGen2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatasetDataLakeGen2]. {@macro pulumi_datashare_dataset_data_lake_gen2_dataset_data_lake_gen2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatasetDataLakeGen2(
    String name, {
    DatasetDataLakeGen2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datashare/datasetDataLakeGen2:DatasetDataLakeGen2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String>('displayName');
    this.filePath = registerOutput<String?>('filePath');
    this.fileSystemName = registerOutput<String>('fileSystemName');
    this.folderPath = registerOutput<String?>('folderPath');
    this.name = registerOutput<String>('name');
    this.shareId = registerOutput<String>('shareId');
    this.storageAccountId = registerOutput<String>('storageAccountId');
  }
}
