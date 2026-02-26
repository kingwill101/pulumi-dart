// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../log_delivery_destination_delivery_destination_configuration/log_delivery_destination_delivery_destination_configuration.dart';

/// The set of arguments for LogDeliveryDestination.
class LogDeliveryDestinationArgs {
  /// The AWS resource that will receive the logs. Required for CloudWatch Logs, Amazon S3, and Firehose destinations. Not required for X-Ray trace delivery destinations.
  final Input<LogDeliveryDestinationDeliveryDestinationConfiguration>?
      deliveryDestinationConfiguration;

  /// The type of delivery destination. Valid values: `S3`, `CWL`, `FH`, `XRAY`. Required for X-Ray trace delivery destinations. For other destination types, this is computed from the <span pulumi-lang-nodejs="`destinationResourceArn`" pulumi-lang-dotnet="`DestinationResourceArn`" pulumi-lang-go="`destinationResourceArn`" pulumi-lang-python="`destination_resource_arn`" pulumi-lang-yaml="`destinationResourceArn`" pulumi-lang-java="`destinationResourceArn`">`destination_resource_arn`</span>.
  final Input<String>? deliveryDestinationType;

  /// The name for this delivery destination.
  final Input<String>? name;

  /// The format of the logs that are sent to this delivery destination. Valid values: <span pulumi-lang-nodejs="`json`" pulumi-lang-dotnet="`Json`" pulumi-lang-go="`json`" pulumi-lang-python="`json`" pulumi-lang-yaml="`json`" pulumi-lang-java="`json`">`json`</span>, <span pulumi-lang-nodejs="`plain`" pulumi-lang-dotnet="`Plain`" pulumi-lang-go="`plain`" pulumi-lang-python="`plain`" pulumi-lang-yaml="`plain`" pulumi-lang-java="`plain`">`plain`</span>, <span pulumi-lang-nodejs="`w3c`" pulumi-lang-dotnet="`W3c`" pulumi-lang-go="`w3c`" pulumi-lang-python="`w3c`" pulumi-lang-yaml="`w3c`" pulumi-lang-java="`w3c`">`w3c`</span>, <span pulumi-lang-nodejs="`raw`" pulumi-lang-dotnet="`Raw`" pulumi-lang-go="`raw`" pulumi-lang-python="`raw`" pulumi-lang-yaml="`raw`" pulumi-lang-java="`raw`">`raw`</span>, <span pulumi-lang-nodejs="`parquet`" pulumi-lang-dotnet="`Parquet`" pulumi-lang-go="`parquet`" pulumi-lang-python="`parquet`" pulumi-lang-yaml="`parquet`" pulumi-lang-java="`parquet`">`parquet`</span>.
  final Input<String>? outputFormat;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  LogDeliveryDestinationArgs({
    this.deliveryDestinationConfiguration,
    this.deliveryDestinationType,
    this.name,
    this.outputFormat,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deliveryDestinationConfigurationValue =
        deliveryDestinationConfiguration;
    if (deliveryDestinationConfigurationValue != null) {
      map['deliveryDestinationConfiguration'] = Input.mapOptionalInputValue<
              LogDeliveryDestinationDeliveryDestinationConfiguration,
              Map<String, dynamic>>(
          deliveryDestinationConfigurationValue, (value) => value.toMap());
    }
    final deliveryDestinationTypeValue = deliveryDestinationType;
    if (deliveryDestinationTypeValue != null) {
      map['deliveryDestinationType'] = deliveryDestinationTypeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final outputFormatValue = outputFormat;
    if (outputFormatValue != null) {
      map['outputFormat'] = outputFormatValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory LogDeliveryDestinationArgs.fromMap(Map<String, dynamic> map) {
    return LogDeliveryDestinationArgs(
      deliveryDestinationConfiguration: Input.asOptionalInput<
              LogDeliveryDestinationDeliveryDestinationConfiguration>(
          map['deliveryDestinationConfiguration']),
      deliveryDestinationType:
          Input.asOptionalInput<String>(map['deliveryDestinationType']),
      name: Input.asOptionalInput<String>(map['name']),
      outputFormat: Input.asOptionalInput<String>(map['outputFormat']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
