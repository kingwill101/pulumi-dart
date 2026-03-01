// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_azure_blob_sas_configuration.dart';

/// Input properties used for looking up and filtering LocationAzureBlob resources.
class LocationAzureBlobState {
  /// The access tier that you want your objects or files transferred into. Valid values: `HOT`, `COOL` and `ARCHIVE`. Default: `HOT`.
  final pulumi.Input<String>? accessTier;
  /// A list of DataSync Agent ARNs with which this location will be associated.
  final pulumi.Input<List<String>>? agentArns;
  /// Amazon Resource Name (ARN) of the DataSync Location.
  final pulumi.Input<String>? arn;
  /// The authentication method DataSync uses to access your Azure Blob Storage. Valid values: `SAS`.
  final pulumi.Input<String>? authenticationType;
  /// The type of blob that you want your objects or files to be when transferring them into Azure Blob Storage. Valid values: `BLOB`. Default: `BLOB`.
  final pulumi.Input<String>? blobType;
  /// The URL of the Azure Blob Storage container involved in your transfer.
  final pulumi.Input<String>? containerUrl;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The SAS configuration that allows DataSync to access your Azure Blob Storage. See configuration below.
  final pulumi.Input<LocationAzureBlobSasConfiguration>? sasConfiguration;
  /// Path segments if you want to limit your transfer to a virtual directory in the container.
  final pulumi.Input<String>? subdirectory;
  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<String>? uri;

  /// Creates a new [LocationAzureBlobState].
  /// [accessTier] The access tier that you want your objects or files transferred into. Valid values: `HOT`, `COOL` and `ARCHIVE`. Default: `HOT`.
  /// [agentArns] A list of DataSync Agent ARNs with which this location will be associated.
  /// [arn] Amazon Resource Name (ARN) of the DataSync Location.
  /// [authenticationType] The authentication method DataSync uses to access your Azure Blob Storage. Valid values: `SAS`.
  /// [blobType] The type of blob that you want your objects or files to be when transferring them into Azure Blob Storage. Valid values: `BLOB`. Default: `BLOB`.
  /// [containerUrl] The URL of the Azure Blob Storage container involved in your transfer.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sasConfiguration] The SAS configuration that allows DataSync to access your Azure Blob Storage. See configuration below.
  /// [subdirectory] Path segments if you want to limit your transfer to a virtual directory in the container.
  /// [tags] Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [uri] Optional.
  LocationAzureBlobState({
    pulumi.Output<String>? accessTier,
    pulumi.Output<List<String>>? agentArns,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? authenticationType,
    pulumi.Output<String>? blobType,
    pulumi.Output<String>? containerUrl,
    pulumi.Output<String>? region,
    pulumi.Output<LocationAzureBlobSasConfiguration>? sasConfiguration,
    pulumi.Output<String>? subdirectory,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? uri,
  }) :
      accessTier = pulumi.Input.asOptionalInput<String>(accessTier),
      agentArns = pulumi.Input.asOptionalInput<List<String>>(agentArns),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      authenticationType = pulumi.Input.asOptionalInput<String>(authenticationType),
      blobType = pulumi.Input.asOptionalInput<String>(blobType),
      containerUrl = pulumi.Input.asOptionalInput<String>(containerUrl),
      region = pulumi.Input.asOptionalInput<String>(region),
      sasConfiguration = pulumi.Input.asOptionalInput<LocationAzureBlobSasConfiguration>(sasConfiguration),
      subdirectory = pulumi.Input.asOptionalInput<String>(subdirectory),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      uri = pulumi.Input.asOptionalInput<String>(uri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTier': ?accessTier,
      'agentArns': ?agentArns,
      'arn': ?arn,
      'authenticationType': ?authenticationType,
      'blobType': ?blobType,
      'containerUrl': ?containerUrl,
      'region': ?region,
      'sasConfiguration': ?pulumi.Input.mapOptionalInputValue<LocationAzureBlobSasConfiguration, Map<String, dynamic>>(sasConfiguration, (value) => value.toMap()),
      'subdirectory': ?subdirectory,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'uri': ?uri,
    };
  }

  factory LocationAzureBlobState.fromMap(Map<String, dynamic> map) {
    return LocationAzureBlobState(
      accessTier: map['accessTier'] == null ? null : pulumi.Output.create<String>(map['accessTier'] as String),
      agentArns: map['agentArns'] == null ? null : pulumi.Output.create<List<String>>((map['agentArns'] as List).cast<String>()),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      authenticationType: map['authenticationType'] == null ? null : pulumi.Output.create<String>(map['authenticationType'] as String),
      blobType: map['blobType'] == null ? null : pulumi.Output.create<String>(map['blobType'] as String),
      containerUrl: map['containerUrl'] == null ? null : pulumi.Output.create<String>(map['containerUrl'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sasConfiguration: map['sasConfiguration'] == null ? null : pulumi.Output.create<LocationAzureBlobSasConfiguration>(LocationAzureBlobSasConfiguration.fromMap((map['sasConfiguration'] as Map).cast<String, dynamic>())),
      subdirectory: map['subdirectory'] == null ? null : pulumi.Output.create<String>(map['subdirectory'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      uri: map['uri'] == null ? null : pulumi.Output.create<String>(map['uri'] as String),
    );
  }
}

