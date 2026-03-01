// ignore_for_file: unused_element, unnecessary_cast

class FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorParameter {
  /// Parameter name. Valid Values: `LambdaArn`, `NumberOfRetries`, `MetadataExtractionQuery`, `JsonParsingEngine`, `RoleArn`, `BufferSizeInMBs`, `BufferIntervalInSeconds`, `SubRecordType`, `Delimiter`, `CompressionFormat`, `DataMessageExtraction`. Validation is done against [AWS SDK constants](https://pkg.go.dev/github.com/aws/aws-sdk-go-v2/service/firehose/types#ProcessorParameterName); so values not explicitly listed may also work.
  final String parameterName;

  /// Parameter value. Must be between 1 and 512 length (inclusive). When providing a Lambda ARN, you should specify the resource version as well.
  ///
  /// > **NOTE:** Parameters with default values, including `NumberOfRetries`(default: 3), `RoleArn`(default: firehose role ARN), `BufferSizeInMBs`(default: 1), and `BufferIntervalInSeconds`(default: 60), are not stored in Pulumi state. To prevent perpetual differences, it is therefore recommended to only include parameters with non-default values.
  final String parameterValue;

  /// Creates a new [FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorParameter].
  /// [parameterName] Parameter name. Valid Values: `LambdaArn`, `NumberOfRetries`, `MetadataExtractionQuery`, `JsonParsingEngine`, `RoleArn`, `BufferSizeInMBs`, `BufferIntervalInSeconds`, `SubRecordType`, `Delimiter`, `CompressionFormat`, `DataMessageExtraction`. Validation is done against [AWS SDK constants](https://pkg.go.dev/github.com/aws/aws-sdk-go-v2/service/firehose/types#ProcessorParameterName); so values not explicitly listed may also work.
  /// [parameterValue] Parameter value. Must be between 1 and 512 length (inclusive). When providing a Lambda ARN, you should specify the resource version as well.
  FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorParameter({
    required this.parameterName,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterName': parameterName,
      'parameterValue': parameterValue,
    };
  }

  factory FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorParameter.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorParameter(
      parameterName: map['parameterName'] as String,
      parameterValue: map['parameterValue'] as String,
    );
  }
}
