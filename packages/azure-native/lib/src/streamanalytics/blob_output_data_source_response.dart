// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_account_response.dart';

/// Describes a blob output data source.
class BlobOutputDataSourceResponse {
  /// Authentication Mode.
  final String? authenticationMode;
  /// Blob path prefix.
  final String? blobPathPrefix;
  /// The name of a container within the associated Storage account. This container contains either the blob(s) to be read from or written to. Required on PUT (CreateOrReplace) requests.
  final String? container;
  /// The date format. Wherever {date} appears in pathPattern, the value of this property is used as the date format instead.
  final String? dateFormat;
  /// The blob path pattern. Not a regular expression. It represents a pattern against which blob names will be matched to determine whether or not they should be included as input or output to the job. See https://docs.microsoft.com/en-us/rest/api/streamanalytics/stream-analytics-input or https://docs.microsoft.com/en-us/rest/api/streamanalytics/stream-analytics-output for a more detailed explanation and example.
  final String? pathPattern;
  /// A list of one or more Azure Storage accounts. Required on PUT (CreateOrReplace) requests.
  final List<StorageAccountResponse>? storageAccounts;
  /// The time format. Wherever {time} appears in pathPattern, the value of this property is used as the time format instead.
  final String? timeFormat;
  /// Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Microsoft.Storage/Blob'.
  final String type;

  /// Creates a new [BlobOutputDataSourceResponse].
  /// [authenticationMode] Authentication Mode.
  /// [blobPathPrefix] Blob path prefix.
  /// [container] The name of a container within the associated Storage account. This container contains either the blob(s) to be read from or written to. Required on PUT (CreateOrReplace) requests.
  /// [dateFormat] The date format. Wherever {date} appears in pathPattern, the value of this property is used as the date format instead.
  /// [pathPattern] The blob path pattern. Not a regular expression. It represents a pattern against which blob names will be matched to determine whether or not they should be included as input or output to the job. See https://docs.microsoft.com/en-us/rest/api/streamanalytics/stream-analytics-input or https://docs.microsoft.com/en-us/rest/api/streamanalytics/stream-analytics-output for a more detailed explanation and example.
  /// [storageAccounts] A list of one or more Azure Storage accounts. Required on PUT (CreateOrReplace) requests.
  /// [timeFormat] The time format. Wherever {time} appears in pathPattern, the value of this property is used as the time format instead.
  /// [type] Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  BlobOutputDataSourceResponse({
    this.authenticationMode,
    this.blobPathPrefix,
    this.container,
    this.dateFormat,
    this.pathPattern,
    this.storageAccounts,
    this.timeFormat,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'blobPathPrefix': ?blobPathPrefix,
      'container': ?container,
      'dateFormat': ?dateFormat,
      'pathPattern': ?pathPattern,
      'storageAccounts': ?storageAccounts == null ? null : pulumi.Input.encodeList<StorageAccountResponse, Map<String, dynamic>>(storageAccounts!, (value) => value.toMap()),
      'timeFormat': ?timeFormat,
      'type': type,
    };
  }

  factory BlobOutputDataSourceResponse.fromMap(Map<String, dynamic> map) {
    return BlobOutputDataSourceResponse(
      authenticationMode: map['authenticationMode'] == null ? null : map['authenticationMode'] as String,
      blobPathPrefix: map['blobPathPrefix'] == null ? null : map['blobPathPrefix'] as String,
      container: map['container'] == null ? null : map['container'] as String,
      dateFormat: map['dateFormat'] == null ? null : map['dateFormat'] as String,
      pathPattern: map['pathPattern'] == null ? null : map['pathPattern'] as String,
      storageAccounts: map['storageAccounts'] == null ? null : pulumi.Input.decodeList<StorageAccountResponse>(map['storageAccounts'], (value) => StorageAccountResponse.fromMap((value as Map).cast<String, dynamic>())),
      timeFormat: map['timeFormat'] == null ? null : map['timeFormat'] as String,
      type: map['type'] as String,
    );
  }
}

