// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_type_description_response.dart';

/// Result data returned by listAccountChannelTypes.
class ListAccountChannelTypesResult {
  /// Channel descriptions
  final List<ChannelTypeDescriptionResponse>? value;

  /// Creates a new [ListAccountChannelTypesResult].
  /// [value] Channel descriptions
  ListAccountChannelTypesResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value == null ? null : pulumi.Input.encodeList<ChannelTypeDescriptionResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListAccountChannelTypesResult.fromMap(Map<String, dynamic> map) {
    return ListAccountChannelTypesResult(
      value: map['value'] == null ? null : pulumi.Input.decodeList<ChannelTypeDescriptionResponse>(map['value'], (value) => ChannelTypeDescriptionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

