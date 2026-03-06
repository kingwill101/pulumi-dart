// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmresources_response.dart';

/// Result data returned by listVMHost.
class ListVMHostResult {
  /// Link to the next Vm resource Id, if any.
  final String? nextLink;
  /// Results of a list operation.
  final List<VMResourcesResponse>? value;

  /// Creates a new [ListVMHostResult].
  /// [nextLink] Link to the next Vm resource Id, if any.
  /// [value] Results of a list operation.
  const ListVMHostResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<VMResourcesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListVMHostResult.fromMap(Map<String, dynamic> map) {
    return ListVMHostResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VMResourcesResponse>(guardedValue, (value) => VMResourcesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

