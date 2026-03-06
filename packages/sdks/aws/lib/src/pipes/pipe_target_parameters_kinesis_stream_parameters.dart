// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeTargetParametersKinesisStreamParameters {
  /// Determines which shard in the stream the data record is assigned to. Partition keys are Unicode strings with a maximum length limit of 256 characters for each key. Amazon Kinesis Data Streams uses the partition key as input to a hash function that maps the partition key and associated data to a specific shard. Specifically, an MD5 hash function is used to map partition keys to 128-bit integer values and to map associated data records to shards. As a result of this hashing mechanism, all data records with the same partition key map to the same shard within the stream.
  final pulumi.Input<String> partitionKey;

  /// Creates a new [PipeTargetParametersKinesisStreamParameters].
  /// [partitionKey] Determines which shard in the stream the data record is assigned to. Partition keys are Unicode strings with a maximum length limit of 256 characters for each key. Amazon Kinesis Data Streams uses the partition key as input to a hash function that maps the partition key and associated data to a specific shard. Specifically, an MD5 hash function is used to map partition keys to 128-bit integer values and to map associated data records to shards. As a result of this hashing mechanism, all data records with the same partition key map to the same shard within the stream.
  const PipeTargetParametersKinesisStreamParameters({
    required this.partitionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitionKey': partitionKey,
    };
  }

  factory PipeTargetParametersKinesisStreamParameters.fromMap(Map<String, dynamic> map) {
    return PipeTargetParametersKinesisStreamParameters(
      partitionKey: pulumi.Input.fromValue(map['partitionKey'] as String),
    );
  }
}

