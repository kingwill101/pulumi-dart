// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_azure_blob_sas_configuration.dart';

/// {@template pulumi_datasync_location_azure_blob_location_azure_blob_args_doc}
/// The set of arguments for LocationAzureBlob.
/// {@endtemplate}
/// {@macro pulumi_datasync_location_azure_blob_location_azure_blob_args_doc}
class LocationAzureBlobArgs {
  /// The access tier that you want your objects or files transferred into. Valid values: `HOT`, `COOL` and `ARCHIVE`. Default: `HOT`.
  final pulumi.Input<String>? accessTier;
  /// A list of DataSync Agent ARNs with which this location will be associated.
  final pulumi.Input<List<String>> agentArns;
  /// The authentication method DataSync uses to access your Azure Blob Storage. Valid values: `SAS`.
  final pulumi.Input<String> authenticationType;
  /// The type of blob that you want your objects or files to be when transferring them into Azure Blob Storage. Valid values: `BLOB`. Default: `BLOB`.
  final pulumi.Input<String>? blobType;
  /// The URL of the Azure Blob Storage container involved in your transfer.
  final pulumi.Input<String> containerUrl;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The SAS configuration that allows DataSync to access your Azure Blob Storage. See configuration below.
  final pulumi.Input<LocationAzureBlobSasConfiguration>? sasConfiguration;
  /// Path segments if you want to limit your transfer to a virtual directory in the container.
  final pulumi.Input<String>? subdirectory;
  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LocationAzureBlobArgs].
  /// [accessTier] The access tier that you want your objects or files transferred into. Valid values: `HOT`, `COOL` and `ARCHIVE`. Default: `HOT`.
  /// [agentArns] A list of DataSync Agent ARNs with which this location will be associated.
  /// [authenticationType] The authentication method DataSync uses to access your Azure Blob Storage. Valid values: `SAS`.
  /// [blobType] The type of blob that you want your objects or files to be when transferring them into Azure Blob Storage. Valid values: `BLOB`. Default: `BLOB`.
  /// [containerUrl] The URL of the Azure Blob Storage container involved in your transfer.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sasConfiguration] The SAS configuration that allows DataSync to access your Azure Blob Storage. See configuration below.
  /// [subdirectory] Path segments if you want to limit your transfer to a virtual directory in the container.
  /// [tags] Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  LocationAzureBlobArgs({
    pulumi.Output<String>? accessTier,
    required pulumi.Output<List<String>> agentArns,
    required pulumi.Output<String> authenticationType,
    pulumi.Output<String>? blobType,
    required pulumi.Output<String> containerUrl,
    pulumi.Output<String>? region,
    pulumi.Output<LocationAzureBlobSasConfiguration>? sasConfiguration,
    pulumi.Output<String>? subdirectory,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accessTier = pulumi.Input.asOptionalInput<String>(accessTier),
      agentArns = pulumi.Input.asInput<List<String>>(agentArns),
      authenticationType = pulumi.Input.asInput<String>(authenticationType),
      blobType = pulumi.Input.asOptionalInput<String>(blobType),
      containerUrl = pulumi.Input.asInput<String>(containerUrl),
      region = pulumi.Input.asOptionalInput<String>(region),
      sasConfiguration = pulumi.Input.asOptionalInput<LocationAzureBlobSasConfiguration>(sasConfiguration),
      subdirectory = pulumi.Input.asOptionalInput<String>(subdirectory),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTier': ?accessTier,
      'agentArns': agentArns,
      'authenticationType': authenticationType,
      'blobType': ?blobType,
      'containerUrl': containerUrl,
      'region': ?region,
      'sasConfiguration': ?pulumi.Input.mapOptionalInputValue<LocationAzureBlobSasConfiguration, Map<String, dynamic>>(sasConfiguration, (value) => value.toMap()),
      'subdirectory': ?subdirectory,
      'tags': ?tags,
    };
  }

  factory LocationAzureBlobArgs.fromMap(Map<String, dynamic> map) {
    return LocationAzureBlobArgs(
      accessTier: map['accessTier'] == null ? null : pulumi.Output.create<String>(map['accessTier'] as String),
      agentArns: pulumi.Output.create<List<String>>((map['agentArns'] as List).cast<String>()),
      authenticationType: pulumi.Output.create<String>(map['authenticationType'] as String),
      blobType: map['blobType'] == null ? null : pulumi.Output.create<String>(map['blobType'] as String),
      containerUrl: pulumi.Output.create<String>(map['containerUrl'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sasConfiguration: map['sasConfiguration'] == null ? null : pulumi.Output.create<LocationAzureBlobSasConfiguration>(LocationAzureBlobSasConfiguration.fromMap((map['sasConfiguration'] as Map).cast<String, dynamic>())),
      subdirectory: map['subdirectory'] == null ? null : pulumi.Output.create<String>(map['subdirectory'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

