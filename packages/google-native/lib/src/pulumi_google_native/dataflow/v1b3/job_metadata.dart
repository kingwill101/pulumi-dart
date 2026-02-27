// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'big_query_iodetails.dart';
import 'big_table_iodetails.dart';
import 'datastore_iodetails.dart';
import 'file_iodetails.dart';
import 'pub_sub_iodetails.dart';
import 'sdk_version.dart';
import 'spanner_iodetails.dart';

/// Metadata available primarily for filtering jobs. Will be included in the ListJob response and Job SUMMARY view.
class JobMetadata {
  /// Identification of a Cloud Bigtable source used in the Dataflow job.
  final List<BigTableIODetails>? bigTableDetails;

  /// Identification of a BigQuery source used in the Dataflow job.
  final List<BigQueryIODetails>? bigqueryDetails;

  /// Identification of a Datastore source used in the Dataflow job.
  final List<DatastoreIODetails>? datastoreDetails;

  /// Identification of a File source used in the Dataflow job.
  final List<FileIODetails>? fileDetails;

  /// Identification of a Pub/Sub source used in the Dataflow job.
  final List<PubSubIODetails>? pubsubDetails;

  /// The SDK version used to run the job.
  final SdkVersion? sdkVersion;

  /// Identification of a Spanner source used in the Dataflow job.
  final List<SpannerIODetails>? spannerDetails;

  /// List of display properties to help UI filter jobs.
  final Map<String, String>? userDisplayProperties;

  JobMetadata({
    this.bigTableDetails,
    this.bigqueryDetails,
    this.datastoreDetails,
    this.fileDetails,
    this.pubsubDetails,
    this.sdkVersion,
    this.spannerDetails,
    this.userDisplayProperties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigTableDetailsValue = bigTableDetails;
    if (bigTableDetailsValue != null) {
      map['bigTableDetails'] =
          Input.encodeList<BigTableIODetails, Map<String, dynamic>>(
              bigTableDetailsValue, (value) => value.toMap());
    }
    final bigqueryDetailsValue = bigqueryDetails;
    if (bigqueryDetailsValue != null) {
      map['bigqueryDetails'] =
          Input.encodeList<BigQueryIODetails, Map<String, dynamic>>(
              bigqueryDetailsValue, (value) => value.toMap());
    }
    final datastoreDetailsValue = datastoreDetails;
    if (datastoreDetailsValue != null) {
      map['datastoreDetails'] =
          Input.encodeList<DatastoreIODetails, Map<String, dynamic>>(
              datastoreDetailsValue, (value) => value.toMap());
    }
    final fileDetailsValue = fileDetails;
    if (fileDetailsValue != null) {
      map['fileDetails'] =
          Input.encodeList<FileIODetails, Map<String, dynamic>>(
              fileDetailsValue, (value) => value.toMap());
    }
    final pubsubDetailsValue = pubsubDetails;
    if (pubsubDetailsValue != null) {
      map['pubsubDetails'] =
          Input.encodeList<PubSubIODetails, Map<String, dynamic>>(
              pubsubDetailsValue, (value) => value.toMap());
    }
    final sdkVersionValue = sdkVersion;
    if (sdkVersionValue != null) {
      map['sdkVersion'] = sdkVersionValue.toMap();
    }
    final spannerDetailsValue = spannerDetails;
    if (spannerDetailsValue != null) {
      map['spannerDetails'] =
          Input.encodeList<SpannerIODetails, Map<String, dynamic>>(
              spannerDetailsValue, (value) => value.toMap());
    }
    final userDisplayPropertiesValue = userDisplayProperties;
    if (userDisplayPropertiesValue != null) {
      map['userDisplayProperties'] = userDisplayPropertiesValue;
    }
    return map;
  }

  factory JobMetadata.fromMap(Map<String, dynamic> map) {
    return JobMetadata(
      bigTableDetails: map['bigTableDetails'] == null
          ? null
          : Input.decodeList<BigTableIODetails>(
              map['bigTableDetails'],
              (value) => BigTableIODetails.fromMap(
                  (value as Map).cast<String, dynamic>())),
      bigqueryDetails: map['bigqueryDetails'] == null
          ? null
          : Input.decodeList<BigQueryIODetails>(
              map['bigqueryDetails'],
              (value) => BigQueryIODetails.fromMap(
                  (value as Map).cast<String, dynamic>())),
      datastoreDetails: map['datastoreDetails'] == null
          ? null
          : Input.decodeList<DatastoreIODetails>(
              map['datastoreDetails'],
              (value) => DatastoreIODetails.fromMap(
                  (value as Map).cast<String, dynamic>())),
      fileDetails: map['fileDetails'] == null
          ? null
          : Input.decodeList<FileIODetails>(
              map['fileDetails'],
              (value) => FileIODetails.fromMap(
                  (value as Map).cast<String, dynamic>())),
      pubsubDetails: map['pubsubDetails'] == null
          ? null
          : Input.decodeList<PubSubIODetails>(
              map['pubsubDetails'],
              (value) => PubSubIODetails.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sdkVersion: map['sdkVersion'] == null
          ? null
          : SdkVersion.fromMap(
              (map['sdkVersion'] as Map).cast<String, dynamic>()),
      spannerDetails: map['spannerDetails'] == null
          ? null
          : Input.decodeList<SpannerIODetails>(
              map['spannerDetails'],
              (value) => SpannerIODetails.fromMap(
                  (value as Map).cast<String, dynamic>())),
      userDisplayProperties: map['userDisplayProperties'] == null
          ? null
          : (map['userDisplayProperties'] as Map).cast<String, String>(),
    );
  }
}
