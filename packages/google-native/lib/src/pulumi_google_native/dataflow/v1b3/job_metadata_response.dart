// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'big_query_iodetails_response.dart';
import 'big_table_iodetails_response.dart';
import 'datastore_iodetails_response.dart';
import 'file_iodetails_response.dart';
import 'pub_sub_iodetails_response.dart';
import 'sdk_version_response.dart';
import 'spanner_iodetails_response.dart';

/// Metadata available primarily for filtering jobs. Will be included in the ListJob response and Job SUMMARY view.
class JobMetadataResponse {
  /// Identification of a Cloud Bigtable source used in the Dataflow job.
  final List<BigTableIODetailsResponse> bigTableDetails;

  /// Identification of a BigQuery source used in the Dataflow job.
  final List<BigQueryIODetailsResponse> bigqueryDetails;

  /// Identification of a Datastore source used in the Dataflow job.
  final List<DatastoreIODetailsResponse> datastoreDetails;

  /// Identification of a File source used in the Dataflow job.
  final List<FileIODetailsResponse> fileDetails;

  /// Identification of a Pub/Sub source used in the Dataflow job.
  final List<PubSubIODetailsResponse> pubsubDetails;

  /// The SDK version used to run the job.
  final SdkVersionResponse sdkVersion;

  /// Identification of a Spanner source used in the Dataflow job.
  final List<SpannerIODetailsResponse> spannerDetails;

  /// List of display properties to help UI filter jobs.
  final Map<String, String> userDisplayProperties;

  JobMetadataResponse({
    required this.bigTableDetails,
    required this.bigqueryDetails,
    required this.datastoreDetails,
    required this.fileDetails,
    required this.pubsubDetails,
    required this.sdkVersion,
    required this.spannerDetails,
    required this.userDisplayProperties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bigTableDetails'] = pulumi.Input.encodeList<BigTableIODetailsResponse,
        Map<String, dynamic>>(bigTableDetails, (value) => value.toMap());
    map['bigqueryDetails'] = pulumi.Input.encodeList<BigQueryIODetailsResponse,
        Map<String, dynamic>>(bigqueryDetails, (value) => value.toMap());
    map['datastoreDetails'] = pulumi.Input.encodeList<
        DatastoreIODetailsResponse,
        Map<String, dynamic>>(datastoreDetails, (value) => value.toMap());
    map['fileDetails'] =
        pulumi.Input.encodeList<FileIODetailsResponse, Map<String, dynamic>>(
            fileDetails, (value) => value.toMap());
    map['pubsubDetails'] =
        pulumi.Input.encodeList<PubSubIODetailsResponse, Map<String, dynamic>>(
            pubsubDetails, (value) => value.toMap());
    map['sdkVersion'] = sdkVersion.toMap();
    map['spannerDetails'] =
        pulumi.Input.encodeList<SpannerIODetailsResponse, Map<String, dynamic>>(
            spannerDetails, (value) => value.toMap());
    map['userDisplayProperties'] = userDisplayProperties;
    return map;
  }

  factory JobMetadataResponse.fromMap(Map<String, dynamic> map) {
    return JobMetadataResponse(
      bigTableDetails: pulumi.Input.decodeList<BigTableIODetailsResponse>(
          map['bigTableDetails'],
          (value) => BigTableIODetailsResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      bigqueryDetails: pulumi.Input.decodeList<BigQueryIODetailsResponse>(
          map['bigqueryDetails'],
          (value) => BigQueryIODetailsResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      datastoreDetails: pulumi.Input.decodeList<DatastoreIODetailsResponse>(
          map['datastoreDetails'],
          (value) => DatastoreIODetailsResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      fileDetails: pulumi.Input.decodeList<FileIODetailsResponse>(
          map['fileDetails'],
          (value) => FileIODetailsResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      pubsubDetails: pulumi.Input.decodeList<PubSubIODetailsResponse>(
          map['pubsubDetails'],
          (value) => PubSubIODetailsResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      sdkVersion: SdkVersionResponse.fromMap(
          (map['sdkVersion'] as Map).cast<String, dynamic>()),
      spannerDetails: pulumi.Input.decodeList<SpannerIODetailsResponse>(
          map['spannerDetails'],
          (value) => SpannerIODetailsResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      userDisplayProperties:
          (map['userDisplayProperties'] as Map).cast<String, String>(),
    );
  }
}
