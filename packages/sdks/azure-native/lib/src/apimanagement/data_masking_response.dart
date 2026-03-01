// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_masking_entity_response.dart';

class DataMaskingResponse {
  /// Masking settings for headers
  final List<DataMaskingEntityResponse>? headers;
  /// Masking settings for Url query parameters
  final List<DataMaskingEntityResponse>? queryParams;

  /// Creates a new [DataMaskingResponse].
  /// [headers] Masking settings for headers
  /// [queryParams] Masking settings for Url query parameters
  DataMaskingResponse({
    this.headers,
    this.queryParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?headers == null ? null : pulumi.Input.encodeList<DataMaskingEntityResponse, Map<String, dynamic>>(headers!, (value) => value.toMap()),
      'queryParams': ?queryParams == null ? null : pulumi.Input.encodeList<DataMaskingEntityResponse, Map<String, dynamic>>(queryParams!, (value) => value.toMap()),
    };
  }

  factory DataMaskingResponse.fromMap(Map<String, dynamic> map) {
    return DataMaskingResponse(
      headers: map['headers'] == null ? null : pulumi.Input.decodeList<DataMaskingEntityResponse>(map['headers'], (value) => DataMaskingEntityResponse.fromMap((value as Map).cast<String, dynamic>())),
      queryParams: map['queryParams'] == null ? null : pulumi.Input.decodeList<DataMaskingEntityResponse>(map['queryParams'], (value) => DataMaskingEntityResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

