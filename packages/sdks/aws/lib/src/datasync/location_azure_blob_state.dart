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
    this.accessTier,
    this.agentArns,
    this.arn,
    this.authenticationType,
    this.blobType,
    this.containerUrl,
    this.region,
    this.sasConfiguration,
    this.subdirectory,
    this.tags,
    this.tagsAll,
    this.uri,
  });

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
      accessTier: map['accessTier'] == null ? null : ((map['accessTier'] as String).input()).input(),
      agentArns: map['agentArns'] == null ? null : (((map['agentArns'] as List).cast<String>()).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      authenticationType: map['authenticationType'] == null ? null : ((map['authenticationType'] as String).input()).input(),
      blobType: map['blobType'] == null ? null : ((map['blobType'] as String).input()).input(),
      containerUrl: map['containerUrl'] == null ? null : ((map['containerUrl'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      sasConfiguration: map['sasConfiguration'] == null ? null : ((LocationAzureBlobSasConfiguration.fromMap((map['sasConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      subdirectory: map['subdirectory'] == null ? null : ((map['subdirectory'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      uri: map['uri'] == null ? null : ((map['uri'] as String).input()).input(),
    );
  }
}

