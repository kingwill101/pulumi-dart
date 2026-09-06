// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lab_vhd_response.dart';

/// Result data returned by listLabVhds.
class ListLabVhdsResult {
  /// The link to the next page of items
  final String? nextLink;
  /// The LabVhd items on this page
  final List<LabVhdResponse>? value;

  /// Creates a new [ListLabVhdsResult].
  /// [nextLink] The link to the next page of items
  /// [value] The LabVhd items on this page
  const ListLabVhdsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<LabVhdResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListLabVhdsResult.fromMap(Map<String, dynamic> map) {
    return ListLabVhdsResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<LabVhdResponse>(guardedValue, (value) => LabVhdResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
