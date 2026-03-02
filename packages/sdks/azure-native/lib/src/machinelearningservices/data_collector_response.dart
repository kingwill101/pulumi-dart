// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collection_response.dart';
import 'request_logging_response.dart';

class DataCollectorResponse {
  /// [Required] The collection configuration. Each collection has it own configuration to collect model data and the name of collection can be arbitrary string.
  /// Model data collector can be used for either payload logging or custom logging or both of them. Collection request and response are reserved for payload logging, others are for custom logging.
  final pulumi.Input<Map<String, CollectionResponse>> collections;
  /// The request logging configuration for mdc, it includes advanced logging settings for all collections. It's optional.
  final pulumi.Input<RequestLoggingResponse>? requestLogging;
  /// When model data is collected to blob storage, we need to roll the data to different path to avoid logging all of them in a single blob file.
  /// If the rolling rate is hour, all data will be collected in the blob path /yyyy/MM/dd/HH/.
  /// If it's day, all data will be collected in blob path /yyyy/MM/dd/.
  /// The other benefit of rolling path is that model monitoring ui is able to select a time range of data very quickly.
  final pulumi.Input<String>? rollingRate;

  /// Creates a new [DataCollectorResponse].
  /// [collections] [Required] The collection configuration. Each collection has it own configuration to collect model data and the name of collection can be arbitrary string.
  /// [requestLogging] The request logging configuration for mdc, it includes advanced logging settings for all collections. It's optional.
  /// [rollingRate] When model data is collected to blob storage, we need to roll the data to different path to avoid logging all of them in a single blob file.
  DataCollectorResponse({
    required this.collections,
    this.requestLogging,
    this.rollingRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collections': pulumi.Input.mapInputValue<Map<String, CollectionResponse>, Map<String, Map<String, dynamic>>>(collections, (value) => pulumi.Input.encodeMapValues<CollectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestLogging': ?pulumi.Input.mapOptionalInputValue<RequestLoggingResponse, Map<String, dynamic>>(requestLogging, (value) => value.toMap()),
      'rollingRate': ?rollingRate,
    };
  }

  factory DataCollectorResponse.fromMap(Map<String, dynamic> map) {
    return DataCollectorResponse(
      collections: (pulumi.Input.decodeMapValues<CollectionResponse>(map['collections'], (value) => CollectionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requestLogging: map['requestLogging'] == null ? null : (RequestLoggingResponse.fromMap((map['requestLogging']! as Map).cast<String, dynamic>())).input(),
      rollingRate: map['rollingRate'] == null ? null : (map['rollingRate']! as String).input(),
    );
  }
}

