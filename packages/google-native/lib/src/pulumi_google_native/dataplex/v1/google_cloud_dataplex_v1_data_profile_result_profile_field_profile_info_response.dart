// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dataplex_v1_data_profile_result_profile_field_profile_info_double_field_info_response.dart';
import 'google_cloud_dataplex_v1_data_profile_result_profile_field_profile_info_integer_field_info_response.dart';
import 'google_cloud_dataplex_v1_data_profile_result_profile_field_profile_info_string_field_info_response.dart';
import 'google_cloud_dataplex_v1_data_profile_result_profile_field_profile_info_top_nvalue_response.dart';

/// The profile information for each field type.
class GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoResponse {
  /// Ratio of rows with distinct values against total scanned rows. Not available for complex non-groupable field type RECORD and fields with REPEATABLE mode.
  final double distinctRatio;

  /// Double type field information.
  final GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfoResponse
      doubleProfile;

  /// Integer type field information.
  final GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfoResponse
      integerProfile;

  /// Ratio of rows with null value against total scanned rows.
  final double nullRatio;

  /// String type field information.
  final GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfoResponse
      stringProfile;

  /// The list of top N non-null values, frequency and ratio with which they occur in the scanned data. N is 10 or equal to the number of distinct values in the field, whichever is smaller. Not available for complex non-groupable field type RECORD and fields with REPEATABLE mode.
  final List<
          GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValueResponse>
      topNValues;

  GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoResponse({
    required this.distinctRatio,
    required this.doubleProfile,
    required this.integerProfile,
    required this.nullRatio,
    required this.stringProfile,
    required this.topNValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['distinctRatio'] = distinctRatio;
    map['doubleProfile'] = doubleProfile.toMap();
    map['integerProfile'] = integerProfile.toMap();
    map['nullRatio'] = nullRatio;
    map['stringProfile'] = stringProfile.toMap();
    map['topNValues'] = Input.encodeList<
        GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValueResponse,
        Map<String, dynamic>>(topNValues, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoResponse(
      distinctRatio: map['distinctRatio'] as double,
      doubleProfile:
          GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfoResponse
              .fromMap((map['doubleProfile'] as Map).cast<String, dynamic>()),
      integerProfile:
          GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfoResponse
              .fromMap((map['integerProfile'] as Map).cast<String, dynamic>()),
      nullRatio: map['nullRatio'] as double,
      stringProfile:
          GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfoResponse
              .fromMap((map['stringProfile'] as Map).cast<String, dynamic>()),
      topNValues: Input.decodeList<
              GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValueResponse>(
          map['topNValues'],
          (value) =>
              GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValueResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
