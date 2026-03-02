// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lab_vhd_response.dart';

/// Result data returned by listLabVhds.
class ListLabVhdsResult {
  /// The link to the next page of items
  final String? nextLink;
  /// The LabVhd items on this page
  final List<LabVhdResponse> value;

  /// Creates a new [ListLabVhdsResult].
  /// [nextLink] The link to the next page of items
  /// [value] The LabVhd items on this page
  ListLabVhdsResult({
    this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': pulumi.Input.encodeList<LabVhdResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ListLabVhdsResult.fromMap(Map<String, dynamic> map) {
    return ListLabVhdsResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink']! as String,
      value: pulumi.Input.decodeList<LabVhdResponse>(map['value'], (value) => LabVhdResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

