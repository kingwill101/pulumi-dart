// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_data_profile_result_profile_field_response.dart';

/// Contains name, type, mode and field type specific profile information.
class GoogleCloudDataplexV1DataProfileResultProfileResponse {
  /// List of fields with structural and profile information for each field.
  final List<GoogleCloudDataplexV1DataProfileResultProfileFieldResponse> fields;

  GoogleCloudDataplexV1DataProfileResultProfileResponse({
    required this.fields,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fields'] = pulumi.Input.encodeList<
        GoogleCloudDataplexV1DataProfileResultProfileFieldResponse,
        Map<String, dynamic>>(fields, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDataplexV1DataProfileResultProfileResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataProfileResultProfileResponse(
      fields: pulumi.Input.decodeList<
              GoogleCloudDataplexV1DataProfileResultProfileFieldResponse>(
          map['fields'],
          (value) => GoogleCloudDataplexV1DataProfileResultProfileFieldResponse
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
