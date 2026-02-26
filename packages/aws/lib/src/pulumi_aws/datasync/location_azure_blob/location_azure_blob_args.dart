// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../location_azure_blob_sas_configuration/location_azure_blob_sas_configuration.dart';

/// The set of arguments for LocationAzureBlob.
class LocationAzureBlobArgs {
  /// The access tier that you want your objects or files transferred into. Valid values: `HOT`, `COOL` and `ARCHIVE`. Default: `HOT`.
  final Input<String>? accessTier;

  /// A list of DataSync Agent ARNs with which this location will be associated.
  final Input<List<String>> agentArns;

  /// The authentication method DataSync uses to access your Azure Blob Storage. Valid values: `SAS`.
  final Input<String> authenticationType;

  /// The type of blob that you want your objects or files to be when transferring them into Azure Blob Storage. Valid values: `BLOB`. Default: `BLOB`.
  final Input<String>? blobType;

  /// The URL of the Azure Blob Storage container involved in your transfer.
  final Input<String> containerUrl;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The SAS configuration that allows DataSync to access your Azure Blob Storage. See configuration below.
  final Input<LocationAzureBlobSasConfiguration>? sasConfiguration;

  /// Path segments if you want to limit your transfer to a virtual directory in the container.
  final Input<String>? subdirectory;

  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  LocationAzureBlobArgs({
    this.accessTier,
    required this.agentArns,
    required this.authenticationType,
    this.blobType,
    required this.containerUrl,
    this.region,
    this.sasConfiguration,
    this.subdirectory,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessTierValue = accessTier;
    if (accessTierValue != null) {
      map['accessTier'] = accessTierValue;
    }
    map['agentArns'] = agentArns;
    map['authenticationType'] = authenticationType;
    final blobTypeValue = blobType;
    if (blobTypeValue != null) {
      map['blobType'] = blobTypeValue;
    }
    map['containerUrl'] = containerUrl;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sasConfigurationValue = sasConfiguration;
    if (sasConfigurationValue != null) {
      map['sasConfiguration'] = Input.mapOptionalInputValue<
              LocationAzureBlobSasConfiguration, Map<String, dynamic>>(
          sasConfigurationValue, (value) => value.toMap());
    }
    final subdirectoryValue = subdirectory;
    if (subdirectoryValue != null) {
      map['subdirectory'] = subdirectoryValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory LocationAzureBlobArgs.fromMap(Map<String, dynamic> map) {
    return LocationAzureBlobArgs(
      accessTier: Input.asOptionalInput<String>(map['accessTier']),
      agentArns: Input.asInput<List<String>>(map['agentArns']),
      authenticationType: Input.asInput<String>(map['authenticationType']),
      blobType: Input.asOptionalInput<String>(map['blobType']),
      containerUrl: Input.asInput<String>(map['containerUrl']),
      region: Input.asOptionalInput<String>(map['region']),
      sasConfiguration:
          Input.asOptionalInput<LocationAzureBlobSasConfiguration>(
              map['sasConfiguration']),
      subdirectory: Input.asOptionalInput<String>(map['subdirectory']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
