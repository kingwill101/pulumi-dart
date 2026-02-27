import 'package:pulumi/pulumi.dart' as pulumi;
import '../location_azure_blob_sas_configuration/location_azure_blob_sas_configuration.dart';
import 'location_azure_blob_args.dart';

/// Manages a Microsoft Azure Blob Storage Location within AWS DataSync.
///
/// > **NOTE:** The DataSync Agents must be available before creating this resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the DataSync Azure Blob location.
///
///
/// Using `pulumi import`, import `aws.datasync.LocationAzureBlob` using the Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:datasync/locationAzureBlob:LocationAzureBlob example arn:aws:datasync:us-east-1:123456789012:location/loc-12345678901234567
/// ```
class LocationAzureBlob extends pulumi.CustomResource {
  /// The access tier that you want your objects or files transferred into. Valid values: `HOT`, `COOL` and `ARCHIVE`. Default: `HOT`.
  late final pulumi.Output<String?> accessTier;

  /// A list of DataSync Agent ARNs with which this location will be associated.
  late final pulumi.Output<List<String>> agentArns;

  /// Amazon Resource Name (ARN) of the DataSync Location.
  late final pulumi.Output<String> arn;

  /// The authentication method DataSync uses to access your Azure Blob Storage. Valid values: `SAS`.
  late final pulumi.Output<String> authenticationType;

  /// The type of blob that you want your objects or files to be when transferring them into Azure Blob Storage. Valid values: `BLOB`. Default: `BLOB`.
  late final pulumi.Output<String?> blobType;

  /// The URL of the Azure Blob Storage container involved in your transfer.
  late final pulumi.Output<String> containerUrl;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The SAS configuration that allows DataSync to access your Azure Blob Storage. See configuration below.
  late final pulumi.Output<LocationAzureBlobSasConfiguration?> sasConfiguration;

  /// Path segments if you want to limit your transfer to a virtual directory in the container.
  late final pulumi.Output<String> subdirectory;

  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<String> uri;

  LocationAzureBlob(
    String name, {
    LocationAzureBlobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datasync/locationAzureBlob:LocationAzureBlob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessTier = registerOutput<String?>('accessTier');
    this.agentArns = registerOutput<List<String>>('agentArns');
    this.arn = registerOutput<String>('arn');
    this.authenticationType = registerOutput<String>('authenticationType');
    this.blobType = registerOutput<String?>('blobType');
    this.containerUrl = registerOutput<String>('containerUrl');
    this.region = registerOutput<String>('region');
    this.sasConfiguration =
        registerOutput<LocationAzureBlobSasConfiguration?>('sasConfiguration');
    this.subdirectory = registerOutput<String>('subdirectory');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.uri = registerOutput<String>('uri');
  }
}
